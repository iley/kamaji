#include <Arduino.h>
#include <EEPROM.h>
#include <stdio.h>

#include "lcd.h"
#include "main.h"
#include "menu.h"
#include "mode.h"
#include "res.h"
#include "memory_map.h"

namespace {

const int TIME = 7;
const int DELAY = 3;
const int HISTORY = 10;

const int NUM_PLAYERS = PLAYER_COUNT;
const int ATTENTION_DELAY = 5;


enum State {
    QUESTION,
    COUNTDOWN,
    ANSWER_TIME_NOT_STARTED,
    ANSWER_TIME_STARTED,
    MENU,
    UNDO,
};

const char* mainMenu[] = {cancelLabel, resetLabel, undoLabel, numPlayersLabel};
const char* numPlayerMenu[] = {num2Label, num3Label, num4Label, num5Label, num6Label};

int currentPlayer = -1;
State state = QUESTION;
unsigned long stateEntered = millis();
bool blocked[NUM_PLAYERS];
bool firstTime = true;
int lastAttentionSoundPlayed = 3;
int question;
int roundID;
int score[NUM_PLAYERS];
bool falseStart[NUM_PLAYERS];
int numPlayers = NUM_PLAYERS;

int historyPlayer[HISTORY];
int historyScore[HISTORY];
int historyRound[HISTORY];

int historyAt;

bool restoreFromMemory = true;

Menu menu;

void saveState() {
    EEPROM.put(JEOPARDY_MEMORY_NUM_PLAYERS, (short)numPlayers);
    EEPROM.put(JEOPARDY_MEMORY_CURRENT_QUESTION, (short)question);
    for (int i = 0; i < NUM_PLAYERS; i++) {
        EEPROM.put(JEOPARDY_MEMORY_SCORES + i * sizeof(short), (short)score[i]);
    }
    EEPROM.put(JEOPARDY_MEMORY_ROUND, (short)roundID);
    EEPROM.update(JEOPARDY_MEMORY_INIT_FLAG, 1);
}

void addHistory(int player, int score) {
    if (historyAt == HISTORY) {
        for (int i = 0; i < HISTORY - 1; i++) {
            historyPlayer[i] = historyPlayer[i + 1];
            historyScore[i] = historyScore[i + 1];
            historyRound[i] = historyRound[i + 1];
        }
        historyAt--;
    }
    historyRound[historyAt] = roundID;
    historyPlayer[historyAt] = player;
    historyScore[historyAt++] = score;
}

void nextQuestion() {
    question++;
    if (question == 6) {
        question = 1;
        roundID++;
    }
}

int timeInSeconds() {
    return (millis() - stateEntered) / 1000;
}

void reset() {
    currentPlayer = -1;
    state = QUESTION;
    stateEntered = millis();
    for (int i = 0; i < NUM_PLAYERS; i++) {
        blocked[i] = false;
        falseStart[i] = false;
    }
    firstTime = true;
    nextQuestion();
    saveState();
}

} // namespace

void JeopardyMode::init() {
    historyAt = 0;
    if (restoreFromMemory && EEPROM.read(JEOPARDY_MEMORY_INIT_FLAG) == 1) {
        short value;
        EEPROM.get(JEOPARDY_MEMORY_NUM_PLAYERS, value);
        numPlayers = value;
        EEPROM.get(JEOPARDY_MEMORY_CURRENT_QUESTION, value);
        question = value;
        for (int i = 0; i < NUM_PLAYERS; i++) {
            EEPROM.get(JEOPARDY_MEMORY_SCORES + i * sizeof(short), value);
            score[i] = value;
        }
        EEPROM.get(JEOPARDY_MEMORY_ROUND, roundID);
    } else {
        reset();
        question = 1;
        for (int i = 0; i < NUM_PLAYERS; i++) {
            score[i] = 0;
        }
        roundID = 1;
    }
    restoreFromMemory = false;
    saveState();
}

bool JeopardyMode::getLedState(int playerId) {
    return (state == ANSWER_TIME_NOT_STARTED || state == ANSWER_TIME_STARTED) && currentPlayer == playerId;
}

int scoreLength(int score) {
    if (score == 0) {
        return 1;
    }
    int length = 0;
    if (score < 0) {
        length++;
        score = -score;
    }
    while (score > 0) {
        length++;
        score /= 10;
    }
    return length;
}

void printScores(char* buffer, int length) {
    int freeSpaces = length;
    int numZeroes = 0;
    for (int i = 0; i < numPlayers; i++) {
        freeSpaces -= scoreLength(score[i]);
        if (score[i] == 0) {
            numZeroes++;
        }
    }
    int multiplier;
    if (freeSpaces >= numPlayers * 2 - numZeroes - 1) {
        multiplier = 10;
        freeSpaces -= numPlayers - numZeroes;
    } else {
        multiplier = 1;
    }
    int at = 0;
    for (int i = 0; i < numPlayers; i++) {
        snprintf(buffer + at, length + 1 - at, "%d", score[i] * multiplier);
        at += scoreLength(score[i] * multiplier);
        if (i != numPlayers - 1) {
            int space = freeSpaces / (numPlayers - i - 1);
            freeSpaces -= space;
            for (int j = at; j < at + space; j++) {
                buffer[j] = ' ';
            }
            at += space;
        }
    }
}

void JeopardyMode::getCaption(char* buffer, size_t bufferSize, size_t width) {
    int playersBlocked = 0;
    switch (state) {
        case QUESTION:
            for (int i = 0; i < numPlayers; i++) {
                if (blocked[i]) {
                    playersBlocked++;
                }
            }
            if (playersBlocked != 0) {
                snprintf(buffer, bufferSize, blockedLabel, playersBlocked);
            } else {
                snprintf(buffer, bufferSize, readJeopardyLabel, roundID, question * 10);
            }
            break;
        case MENU:
            snprintf(buffer, bufferSize, menu.getCurrentOption());
            break;
        case COUNTDOWN:
            snprintf(buffer, bufferSize, timeLabel, TIME - timeInSeconds());
            break;
        case ANSWER_TIME_NOT_STARTED:
        case ANSWER_TIME_STARTED:
            snprintf(buffer, bufferSize, playerJeopardyLabel, currentPlayer + 1, timeInSeconds());
            break;
        case UNDO:
            snprintf(buffer, bufferSize, playerUndoLabel, historyPlayer[historyAt - 1] + 1,
                     -historyScore[historyAt - 1] * 10);
            break;
    }
}

void JeopardyMode::getScore(char* buffer, size_t bufferSize, size_t width) {
    printScores(buffer, width);
}

bool JeopardyMode::preferShowScore() {
    int playersBlocked = 0;
    for (int i = 0; i < numPlayers; i++) {
        if (blocked[i]) {
            playersBlocked++;
        }
    }
    return state == QUESTION && playersBlocked == 0;
}

bool JeopardyMode::isEssential() {
    return false;
}

const char* JeopardyMode::getLabel(int buttonId) {
    if (buttonId == BUTTON_RESET) {
        switch (state) {
            case QUESTION:
            case COUNTDOWN:
                return resetLabel;
            case ANSWER_TIME_NOT_STARTED:
            case ANSWER_TIME_STARTED:
                return yesLabel;
            case MENU:
                return menu.getLeftLabel();
            case UNDO:
                return exitLabel;
        }
    } else if (buttonId == BUTTON_START) {
        switch (state) {
            case QUESTION:
                return startLabel;
            case COUNTDOWN:
                return emptyLabel;
            case ANSWER_TIME_NOT_STARTED:
            case ANSWER_TIME_STARTED:
                return noLabel;
            case MENU:
                return menu.getRightLabel();
            case UNDO:
                return revertLavel;
        }
    } else if (buttonId == BUTTON_CONTROL_2) {
        switch (state) {
            case ANSWER_TIME_NOT_STARTED:
            case ANSWER_TIME_STARTED:
                return cancelLabel;
            case QUESTION:
                return menuLabel;
            case MENU:
                return menu.getCenterLabel();
            case COUNTDOWN:
                return emptyLabel;
            case UNDO:
                return undoLabel;
        }
    }
    return emptyLabel;
}

void undoLast(bool revert) {
    historyAt--;
    int value = historyScore[historyAt] > 0 ? historyScore[historyAt] : -historyScore[historyAt];
    if (roundID != historyRound[historyAt] || question != value) {
        for (int i = 0; i < numPlayers; i++) {
            blocked[i] = false;
            falseStart[i] = false;
        }
        roundID = historyRound[historyAt];
        question = value;
        for (int i = historyAt - 1; i >= 0; i--) {
            if (roundID == historyRound[i] && question == (historyScore[i] > 0 ? historyScore[i] : -historyScore[i])) {
                blocked[historyPlayer[i]] = true;
            } else {
                break;
            }
        }
    }
    score[historyPlayer[historyAt]] += historyScore[historyAt];
    blocked[historyPlayer[historyAt]] = false;
    if (revert) {
        score[historyPlayer[historyAt]] += historyScore[historyAt];
        bool accepted = historyScore[historyAt] > 0;
        addHistory(historyPlayer[historyAt], -historyScore[historyAt]);
        if (accepted) {
            reset();
        } else {
            blocked[historyPlayer[historyAt - 1]] = true;
            state = QUESTION;
            saveState();
        }
    } else {
        saveState();
        if (historyAt == 0) {
            state = QUESTION;
        } else {
            state = UNDO;
        }
    }
}

void JeopardyMode::update() {
    if (state == UNDO) {
        if (isControlPressed(BUTTON_CONTROL_1)) {
            state = QUESTION;
            return;
        }
        if (isControlPressed(BUTTON_CONTROL_2)) {
            undoLast(false);
            return;
        }
        if (isControlPressed(BUTTON_CONTROL_3)) {
            undoLast(true);
            return;
        }
    }
    if (state == MENU) {
        if (isControlPressed(BUTTON_CONTROL_1)) {
            menu.toLeft();
        } else if (isControlPressed(BUTTON_CONTROL_3)) {
            menu.toRight();
        } else if (isControlPressed(BUTTON_CONTROL_2)) {
            const char* result = menu.getCurrentOption();
            if (result == numPlayersLabel) {
                menu.init(NUM_PLAYERS - 1, numPlayerMenu, numPlayers - 2);
                return;
            }
            if (result == resetLabel) {
                init();
                return;
            }
            if (result == cancelLabel) {
                state = QUESTION;
                return;
            }
            if (result == num2Label) {
                numPlayers = 2;
                state = QUESTION;
                saveState();
                return;
            }
            if (result == num3Label) {
                numPlayers = 3;
                state = QUESTION;
                saveState();
                return;
            }
            if (result == num4Label) {
                numPlayers = 4;
                state = QUESTION;
                saveState();
                return;
            }
            if (result == num5Label) {
                numPlayers = 5;
                state = QUESTION;
                saveState();
                return;
            }
            if (result == num6Label) {
                numPlayers = 6;
                state = QUESTION;
                saveState();
                return;
            }
            if (result == undoLabel) {
                if (historyAt == 0) {
                    state = QUESTION;
                } else {
                    state = UNDO;
                }
                return;
            }
        }
        return;
    }
    if (state == ANSWER_TIME_STARTED || state == ANSWER_TIME_NOT_STARTED) {
        if (timeInSeconds() == 0) {
            return;
        }
        if (timeInSeconds() - lastAttentionSoundPlayed >= ATTENTION_DELAY) {
            playAttentionSound();
            lastAttentionSoundPlayed = timeInSeconds();
        }
        if (timeInSeconds() >= 3) {
            for (int i = 0; i < numPlayers; i++) {
                if (i != currentPlayer && isPlayerPressed(i) && !blocked[i]) {
                    falseStart[i] = true;
                    playPlayerSound();
                }
            }
        }
        if (isControlPressed(BUTTON_RESET)) {
            score[currentPlayer] += question;
            addHistory(currentPlayer, -question);
            reset();
            playCorrectSound();
        } else if (isControlPressed(BUTTON_START)) {
            score[currentPlayer] -= question;
            addHistory(currentPlayer, question);
            bool allLost = true;
            for (int i = 0; i < numPlayers; i++) {
                if (!blocked[i]) {
                    allLost = false;
                    break;
                }
            }
            if (allLost) {
                reset();
                return;
            }
            if (state == ANSWER_TIME_STARTED) {
                state = COUNTDOWN;
            } else {
                state = QUESTION;
            }
            currentPlayer = -1;
            stateEntered = millis();
            saveState();
            playStartSound();
        } else if (isControlPressed(BUTTON_CONTROL_2)) {
            blocked[currentPlayer] = false;
            if (state == ANSWER_TIME_STARTED) {
                state = COUNTDOWN;
            } else {
                state = QUESTION;
            }
            for (int i = 0; i < numPlayers; i++) {
                falseStart[i] = false;
            }
            currentPlayer = -1;
            stateEntered = millis();
            playStartSound();
        }
        return;
    } else {
        if (state == QUESTION && isControlPressed(BUTTON_CONTROL_2)) {
            state = MENU;
            menu.init(4, mainMenu, 0);
            stateEntered = millis();
            return;
        }
        if (state != QUESTION || timeInSeconds() >= DELAY || !firstTime) {
            for (int i = 0; i < numPlayers; i++) {
                if (isPlayerPressed(i) && !blocked[i] && (!falseStart[i] || timeInSeconds() > 0)) {
                    for (int i = 0; i < numPlayers; i++) {
                        falseStart[i] = false;
                    }
                    firstTime = false;
                    blocked[i] = true;
                    currentPlayer = i;
                    if (state == QUESTION) {
                        state = ANSWER_TIME_NOT_STARTED;
                    } else {
                        state = ANSWER_TIME_STARTED;
                    }
                    stateEntered = millis();
                    playPlayerSound();
                    lastAttentionSoundPlayed = 3;
                    return;
                }
            }
        }
        if (isControlPressed(BUTTON_RESET)) {
            reset();
            playResetSound();
            return;
        }
        if (timeInSeconds() == 0) {
            return;
        }
        if (isControlPressed(BUTTON_START) && state == QUESTION) {
            state = COUNTDOWN;
            stateEntered = millis();
            playStartSound();
            return;
        }
        if (state == COUNTDOWN && timeInSeconds() >= TIME) {
            reset();
            playResetSound();
            return;
        }
    }

}

void JeopardyMode::getInfo(char* buffer, size_t bufferSize, size_t width) {
    buffer[0] = 0;
}
