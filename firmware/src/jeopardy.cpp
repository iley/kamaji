#include <stdio.h>

#include <Arduino.h>
#include "mode.h"
#include "main.h"

namespace {

const int TIME = 7;
const int DELAY = 3;
const int NUM_PLAYERS = PLAYER_COUNT;
const int ATTENTION_DELAY = 5;

enum State {
    QUESTION,
    COUNTDOWN,
    ANSWER_TIME_NOT_STARTED,
    ANSWER_TIME_STARTED,
    FIX
};

const char *resetLabel = "Reset";
const char *startLabel = "Start";
const char *yesLabel = "Yes";
const char *noLabel = "No";
const char *cancel = "Cancel";
const char *decreaseLabel = "<";
const char *increaseLabel = ">";
const char *emptyLabel = "";

int currentPlayer = -1;
State state = QUESTION;
unsigned long stateEnterd = millis();
bool blocked[NUM_PLAYERS];
bool firstTime = true;
int lastAttentionSoundPlayed = 3;
int question;
int score[NUM_PLAYERS];
char cost[DISPLAY_SIZE + 1];

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
    lastAttentionSoundPlayed = 3;
    nextQuestion();
}

} // namespace

void JeopardyMode::init() {
    reset();
    question = 1;
    for (int i = 0; i < NUM_PLAYERS; i++) {
        score[i] = 0;
    }
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
    for (int i = 0; i < NUM_PLAYERS; i++) {
        freeSpaces -= scoreLength(score[i]);
        if (score[i] == 0) {
            numZeroes++;
        }
    }
    int multiplier;
    if (freeSpaces >= NUM_PLAYERS * 2 - numZeroes - 1) {
        multiplier = 10;
        freeSpaces -= NUM_PLAYERS - numZeroes;
    } else {
        multiplier = 1;
    }
    int at = 0;
    for (int i = 0; i < NUM_PLAYERS; i++) {
        snprintf(buffer + at, bufferSize - at, "%d", score[i] * multiplier);
        at += scoreLength(score[i] * multiplier);
        if (i != NUM_PLAYERS - 1) {
            int space = freeSpaces / (NUM_PLAYERS - i - 1);
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
        case FIX:
            for (int i = 0; i < PLAYER_COUNT; i++) {
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
            case FIX:
                return decreaseLabel;
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
            case FIX:
                return increaseLabel;
        }
    } else if (buttonId == BUTTON_CONTROL_2 && SHOW_SCORES != 0) {
        switch (state) {
            case ANSWER_TIME_NOT_STARTED:
            case ANSWER_TIME_STARTED:
                return cancel;
            case QUESTION:
            case FIX:
                snprintf(cost, sizeof(cost), "%d", question * 10);
                return cost;
            case COUNTDOWN:
                return emptyLabel;
        }
    }
    return emptyLabel;
}

void JeopardyMode::update() {
    if (state == FIX) {
        if (isControlPressed(BUTTON_CONTROL_1)) {
            question--;
            if (question == 0) {
                question = 5;
            }
        } else if (isControlPressed(BUTTON_CONTROL_3)) {
            nextQuestion();
        } else if (isControlPressed(BUTTON_CONTROL_2)) {
            state = QUESTION;
            stateEnterd = millis();
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
            reset();
            playCorrectSound();
        } else if (isControlPressed(BUTTON_START)) {
            score[currentPlayer] -= question;
            bool allLost = true;
            for (int i = 0; i < NUM_PLAYERS; i++) {
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
            state = FIX;
            stateEnterd = millis();
            return;
        }
        if (state != QUESTION || timeInSeconds() >= DELAY || !firstTime) {
            for (int i = 0; i < NUM_PLAYERS; i++) {
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
