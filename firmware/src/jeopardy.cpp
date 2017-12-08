#include <stdio.h>

#include <Arduino.h>
#include <EEPROM.h>
#include "mode.h"
#include "main.h"
#include "menu.h"

namespace {

const int TIME = 7;
const int DELAY = 3;
const int HISTORY = 10;

#ifdef JEOPARDY_NUM_PLAYERS
const int NUM_PLAYERS = JEOPARDY_NUM_PLAYERS;
#else
const int NUM_PLAYERS = PLAYER_COUNT;
#endif
const int ATTENTION_DELAY = 5;

const int JEOPARDY_MEMORY_START = 10;
const int MEMORY_INIT_FLAG = JEOPARDY_MEMORY_START;
const int MEMORY_NUM_PLAYERS = MEMORY_INIT_FLAG + 1;
const int MEMORY_CURRENT_QUESTION = MEMORY_NUM_PLAYERS + sizeof(short);
const int MEMORY_SCORES = MEMORY_CURRENT_QUESTION + sizeof(short);
const int JEOPARDY_MEMORY_END = MEMORY_SCORES + NUM_PLAYERS * sizeof(short);

enum State {
    QUESTION,
    COUNTDOWN,
    ANSWER_TIME_NOT_STARTED,
    ANSWER_TIME_STARTED,
    MENU
};

const char *resetLabel = "Reset";
const char *startLabel = "Start";
const char *yesLabel = "Yes";
const char *noLabel = "No";
const char *cancel = "Cancel";
const char *emptyLabel = "";

const char* undoLabel = "Undo";
const char* numPlayersLabel = "Num players";
const char* cancelLabel = "Cancel";
const char* num2Label = "2";
const char* num3Label = "3";
const char* num4Label = "4";
const char* num5Label = "5";

const char* mainMenu[] = {cancelLabel, resetLabel, undoLabel, numPlayersLabel};
const char* numPlayerMenu[] = {num2Label, num3Label, num4Label, num5Label};

int currentPlayer = -1;
State state = QUESTION;
unsigned long stateEnterd = millis();
bool blocked[NUM_PLAYERS];
bool firstTime = true;
int lastAttentionSoundPlayed = 3;
int question;
int score[NUM_PLAYERS];
char cost[DISPLAY_SIZE + 1];
int numPlayers = NUM_PLAYERS;

int historyPlayer[HISTORY];
int historyScore[HISTORY];

int historyAt;

bool restoreFromMemory = true;

Menu menu;

void saveState() {
    EEPROM.put(MEMORY_NUM_PLAYERS, (short)numPlayers);
    EEPROM.put(MEMORY_CURRENT_QUESTION, (short)question);
    for (int i = 0; i < NUM_PLAYERS; i++) {
        EEPROM.put(MEMORY_SCORES + i * sizeof(short), (short)score[i]);
    }
    EEPROM.update(MEMORY_INIT_FLAG, 1);
}

void addHistory(int player, int score) {
    if (historyAt == HISTORY) {
        for (int i = 0; i < HISTORY - 1; i++) {
            historyPlayer[i] = historyPlayer[i + 1];
            historyScore[i] = historyScore[i + 1];
        }
        historyAt--;
    }
    historyPlayer[historyAt] = player;
    historyScore[historyAt++] = score;
}

void nextQuestion() {
    question++;
    if (question == 6) {
        question = 1;
    }
}

int timeInSeconds() {
    return (millis() - stateEnterd) / 1000;
}

void reset() {
    currentPlayer = -1;
    state = QUESTION;
    stateEnterd = millis();
    for (int i = 0; i < NUM_PLAYERS; i++) {
        blocked[i] = false;
    }
    firstTime = true;
    nextQuestion();
    saveState();
}

} // namespace

void JeopardyMode::init() {
    historyAt = 0;
    if (restoreFromMemory && EEPROM.read(MEMORY_INIT_FLAG) == 1) {
        short value;
        EEPROM.get(MEMORY_NUM_PLAYERS, value);
        numPlayers = value;
        EEPROM.get(MEMORY_CURRENT_QUESTION, value);
        question = value;
        for (int i = 0; i < NUM_PLAYERS; i++) {
            EEPROM.get(MEMORY_SCORES + i * sizeof(short), value);
            score[i] = value;
        }
    } else {
        reset();
        question = 1;
        for (int i = 0; i < NUM_PLAYERS; i++) {
            score[i] = 0;
        }
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

void printScores(char* buffer, int bufferSize) {
    int freeSpaces = bufferSize - 1;
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
        snprintf(buffer + at, bufferSize - at, "%d", score[i] * multiplier);
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

void JeopardyMode::getCaption(char* buffer, size_t bufferSize) {
    int playersBlocked = 0;
    switch (state) {
        case QUESTION:
            for (int i = 0; i < numPlayers; i++) {
                if (blocked[i]) {
                    playersBlocked++;
                }
            }
            if (playersBlocked == 0) {
                printScores(buffer, bufferSize);
            } else if (SHOW_SCORES == 1) {
                snprintf(buffer, bufferSize, "%d blocked", playersBlocked);
            } else {
                snprintf(buffer, bufferSize, "Read question");
            }
            break;
        case MENU:
            snprintf(buffer, bufferSize, menu.getCurrentOption());
            break;
        case COUNTDOWN:
            snprintf(buffer, bufferSize, "%d s remaining", TIME - timeInSeconds());
            break;
        case ANSWER_TIME_NOT_STARTED:
        case ANSWER_TIME_STARTED:
            snprintf(buffer, bufferSize, "Player %d (%d s)", currentPlayer + 1, timeInSeconds());
            break;
    }
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
        }
    } else if (buttonId == BUTTON_START)  {
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
        }
    } else if (buttonId == BUTTON_CONTROL_2 && SHOW_SCORES != 0) {
        switch (state) {
            case ANSWER_TIME_NOT_STARTED:
            case ANSWER_TIME_STARTED:
                return cancel;
            case QUESTION:
                snprintf(cost, sizeof(cost), "%d", question * 10);
                return cost;
            case MENU:
                return menu.getCenterLabel();
            case COUNTDOWN:
                return emptyLabel;
        }
    }
    return emptyLabel;
}

void JeopardyMode::update() {
    if (state == MENU) {
        if (isControlPressed(BUTTON_CONTROL_1)) {
            menu.toLeft();
        } else if (isControlPressed(BUTTON_CONTROL_3)) {
            menu.toRight();
        } else if (isControlPressed(BUTTON_CONTROL_2)) {
            const char* result = menu.getCurrentOption();
            if (result == numPlayersLabel) {
                menu.init(4, numPlayerMenu, numPlayers - 2);
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
            if (result == undoLabel) {
                if (historyAt != 0) {
                    historyAt--;
                    score[historyPlayer[historyAt]] += historyScore[historyAt];
                    question = historyScore[historyAt] > 0 ? historyScore[historyAt] : -historyScore[historyAt];
                    blocked[historyPlayer[historyAt]] = false;
                }
                state = QUESTION;
                saveState();
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
            stateEnterd = millis();
            saveState();
            playStartSound();
        } else if (isControlPressed(BUTTON_CONTROL_2)) {
            blocked[currentPlayer] = false;
            if (state == ANSWER_TIME_STARTED) {
                state = COUNTDOWN;
            } else {
                state = QUESTION;
            }
            currentPlayer = -1;
            stateEnterd = millis();
            playStartSound();
        }
        return;
    } else {
        if (state == QUESTION && isControlPressed(BUTTON_CONTROL_2)) {
            state = MENU;
            menu.init(4, mainMenu, 0);
            stateEnterd = millis();
            return;
        }
        if (state != QUESTION || timeInSeconds() >= DELAY || !firstTime) {
            for (int i = 0; i < numPlayers; i++) {
                if (isPlayerPressed(i) && !blocked[i]) {
                    firstTime = false;
                    blocked[i] = true;
                    currentPlayer = i;
                    if (state == QUESTION) {
                        state = ANSWER_TIME_NOT_STARTED;
                    } else {
                        state = ANSWER_TIME_STARTED;
                    }
                    stateEnterd = millis();
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
            stateEnterd = millis();
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
