#include <stdio.h>
#include <stdlib.h>

#include <Arduino.h>
#include <EEPROM.h>
#include "mode.h"
#include "main.h"
#include "res.h"
#include "menu.h"
#include "memory_map.h"

namespace {

const int TIME = 60;
const int NUM_PLAYERS = PLAYER_COUNT;
const int DELAY = 3;
const int BUZZ_SEC = 5;
const int ATTENTION_DELAY = 5;

enum State {
    QUESTION,
    MAIN,
    SUPPLEMENT,
    ANSWER_MAIN,
    ANSWER_SUPPLEMENT,
    FALSE_START,
    START_DELAY,
    RESET,
    MENU,
    FALSESTART_OPTIONS,
};

enum SecondPlayerTime {
    TWENTY,
    SIXTY,
    REMAINING,
};

int currentPlayer = -1;
State state = QUESTION;
unsigned long startDelay;
unsigned long stateEntered = millis();
bool blocked[NUM_PLAYERS];
bool last10Sec = false;
int lastSignal = BUZZ_SEC;
int lastAttentionSoundPlayed = 3;
int score[2];
int roundID;
int reactionTime;
bool enforceFalseStart = true;
SecondPlayerTime secondPlayerTime = TWENTY;
int remainingTime;

const char* mainMenu[] = { cancelLabel, resetLabel, falsestartMenuLabel, timeOptionsLabel };
const char* timeMenu[] = { twentySecondLabel, sixtySecondLabel, remainingTimeLabel };

Menu menu;

int timeInSeconds() {
    return (millis() - stateEntered) / 1000;
}

int timeInTenths() {
    return (millis() - stateEntered) / 100;
}

void reset() {
    currentPlayer = -1;
    state = QUESTION;
    stateEntered = millis();
    for (int i = 0; i < NUM_PLAYERS; i++) {
        blocked[i] = false;
    }
    last10Sec = false;
    lastSignal = BUZZ_SEC;
    roundID++;
}

}  // namespace

void BrainMode::init() {
    // TODO: seed random based on an unconnected analog input
    srand(millis());
    if (EEPROM.read(BRAIN_MEMORY_INIT_FLAG) == 1) {
        short val;
        EEPROM.get(BRAIN_FALSE_START, val);
        enforceFalseStart = val == 1;
        EEPROM.get(BRAIN_TIME, val);
        secondPlayerTime = (SecondPlayerTime)val;
    }
    score[0] = score[1] = 0;
    reset();
    roundID = 1;
}

bool BrainMode::getLedState(int playerId) {
    return (state == ANSWER_MAIN || state == ANSWER_SUPPLEMENT || state == FALSE_START) && currentPlayer == playerId;
}

bool BrainMode::isEssential() {
    return enforceFalseStart && state == MAIN && timeInSeconds() < 1;
}

bool BrainMode::getLampState() {
    return ((state == MAIN || state == SUPPLEMENT) && timeInSeconds() < 3) ||
      (state == FALSE_START && timeInTenths() % 10 < 5) ||
      ((state == ANSWER_MAIN || state == ANSWER_SUPPLEMENT) && timeInTenths() >= 1);
}

void BrainMode::getCaption(char* buffer, size_t bufferSize, size_t width) {
    switch (state) {
        case QUESTION:
            snprintf(buffer, bufferSize, readBrainLabel, roundID);
            break;
        case MAIN:
            snprintf(buffer, bufferSize, timeLabel, TIME - timeInSeconds());
            break;
        case SUPPLEMENT:
            snprintf(buffer, bufferSize, timeLabel, remainingTime - timeInSeconds());
            break;
        case ANSWER_MAIN:
        case ANSWER_SUPPLEMENT:
            snprintf(buffer, bufferSize, playerBrainLabel, currentPlayer + 1, timeInSeconds());
            break;
        case FALSE_START:
            snprintf(buffer, bufferSize, falsestartLabel, currentPlayer + 1);
            break;
        case START_DELAY:
            snprintf(buffer, bufferSize, pendingLabel);
            break;
        case RESET:
            snprintf(buffer, bufferSize, resetScoreLabel);
            break;
        case MENU:
            snprintf(buffer, bufferSize, menu.getCurrentOption());
            break;
        case FALSESTART_OPTIONS:
            snprintf(buffer, bufferSize, falsestartCaptionLabel);
            break;
    }
}

const char* BrainMode::getLabel(int buttonId) {
    if (buttonId == BUTTON_RESET) {
        switch (state) {
            case QUESTION:
            case MAIN:
            case SUPPLEMENT:
            case FALSE_START:
            case START_DELAY:
                return resetLabel;
            case ANSWER_MAIN:
            case ANSWER_SUPPLEMENT:
            case RESET:
            case FALSESTART_OPTIONS:
                return yesLabel;
            case MENU:
                return menu.getLeftLabel();
        }
    } else if (buttonId == BUTTON_START)  {
        switch (state) {
            case QUESTION:
            case FALSE_START:
                return startLabel;
            case MAIN:
            case SUPPLEMENT:
            case START_DELAY:
                return emptyLabel;
            case ANSWER_MAIN:
            case ANSWER_SUPPLEMENT:
            case RESET:
            case FALSESTART_OPTIONS:
                return noLabel;
            case MENU:
                return menu.getRightLabel();
        }
    } else if (buttonId == BUTTON_CONTROL_2) {
        switch (state) {
            case QUESTION:
                return menuLabel;
            case MENU:
                return menu.getCenterLabel();
            case FALSESTART_OPTIONS:
                return cancelLabel;
            default:
                return emptyLabel;
        }
    }
    return emptyLabel;
}

void BrainMode::getScore(char* buffer, size_t bufferSize, size_t width) {
    snprintf(buffer, bufferSize, scoreBrainLabel, score[0], score[1]);
}

bool BrainMode::preferShowScore() {
    return state == QUESTION;
}

void saveState() {
    EEPROM.write(BRAIN_MEMORY_INIT_FLAG, 1);
    EEPROM.put(BRAIN_FALSE_START, enforceFalseStart ? (short)1 : (short)0);
    EEPROM.put(BRAIN_TIME, (short)secondPlayerTime);
}

void BrainMode::update() {
    if (state == RESET) {
        if (isControlPressed(BUTTON_RESET)) {
            init();
            return;
        } else if (isControlPressed(BUTTON_START)) {
            roundID--;
            reset();
            return;
        }
        return;
    }
    if (state == FALSESTART_OPTIONS) {
        if (isControlPressed(BUTTON_RESET)) {
            enforceFalseStart = true;
            saveState();
            init();
            return;
        } else if (isControlPressed(BUTTON_START)) {
            enforceFalseStart = false;
            saveState();
            init();
            return;
        } else if (isControlPressed(BUTTON_CONTROL_2)) {
            roundID--;
            reset();
            return;
        }
    }
    if (state == MENU) {
        if (isControlPressed(BUTTON_CONTROL_1)) {
            menu.toLeft();
        } else if (isControlPressed(BUTTON_CONTROL_3)) {
            menu.toRight();
        } else if (isControlPressed(BUTTON_CONTROL_2)) {
            const char *result = menu.getCurrentOption();
            if (result == resetLabel) {
                state = RESET;
                return;
            }
            if (result == falsestartMenuLabel) {
                state = FALSESTART_OPTIONS;
                return;
            }
            if (result == timeOptionsLabel) {
                menu.init(3, timeMenu, (int) secondPlayerTime);
                return;
            }
            if (result == twentySecondLabel) {
                secondPlayerTime = TWENTY;
                EEPROM.put(BRAIN_TIME, (short)TWENTY);
            }
            if (result == sixtySecondLabel) {
                secondPlayerTime = SIXTY;
                EEPROM.put(BRAIN_TIME, (short)SIXTY);
            }
            if (result == remainingTimeLabel) {
                secondPlayerTime = REMAINING;
                EEPROM.put(BRAIN_TIME, (short)REMAINING);
            }
            roundID--;
            reset();
            saveState();
            return;
        }
        return;
    }
    if (state == ANSWER_MAIN || state == ANSWER_SUPPLEMENT) {
        if (timeInSeconds() - lastAttentionSoundPlayed >= ATTENTION_DELAY) {
            playAttentionSound();
            lastAttentionSoundPlayed = timeInSeconds();
        }
        if (timeInSeconds() == 0) {
            return;
        }
        if (isControlPressed(BUTTON_RESET)) {
            score[currentPlayer]++;
            reset();
            playCorrectSound();
        } else if (isControlPressed(BUTTON_START)) {
            if (state == ANSWER_MAIN) {
                state = SUPPLEMENT;
                last10Sec = false;
                lastSignal = BUZZ_SEC;
                playTimeSound();
            } else {
                reset();
                return;
            }
            currentPlayer = -1;
            stateEntered = millis();
        }
        return;
    } else {
        if (state != QUESTION || timeInSeconds() >= DELAY) {
            for (int i = 0; i < NUM_PLAYERS; i++) {
                if (isPlayerPressed(i) && !blocked[i] && state != FALSE_START) {
                    blocked[i] = true;
                    currentPlayer = i;
                    lastAttentionSoundPlayed = 3;
                    if (state == MAIN || (state != SUPPLEMENT && !enforceFalseStart)) {
                        switch (secondPlayerTime) {
                            case TWENTY:
                                remainingTime = 20;
                                break;
                            case SIXTY:
                                remainingTime = 60;
                                break;
                            case REMAINING:
                                remainingTime = TIME - (state == MAIN ? timeInSeconds() : 0);
                                break;
                        }
                        reactionTime = (millis() - stateEntered) / 10;
                        state = ANSWER_MAIN;
                        playPlayerSound();
                    } else if (state == SUPPLEMENT) {
                        state = ANSWER_SUPPLEMENT;
                        playPlayerSound();
                    } else {
                        state = FALSE_START;
                        playFalseStartSound();
                    }
                    stateEntered = millis();
                    return;
                }
            }
        }
        if (state == QUESTION && isControlPressed(BUTTON_CONTROL_2)) {
            state = MENU;
            menu.init(4, mainMenu, 0);
            stateEntered = millis();
            return;
        }
        if (timeInSeconds() == 0 && state != START_DELAY) {
            return;
        }
        if (isControlPressed(BUTTON_RESET)) {
            reset();
            return;
        }
        if (state == START_DELAY) {
            if (millis() - stateEntered >= startDelay) {
                state = MAIN;
                stateEntered = millis();
                playTimeSound();
            }
            return;
        }
        if (isControlPressed(BUTTON_START) && state == QUESTION) {
            if (enforceFalseStart) {
                state = START_DELAY;
                startDelay = 500 + rand() % 500;
            } else {
                state = MAIN;
            }
            stateEntered = millis();
            return;
        }
        if (isControlPressed(BUTTON_START) && state == FALSE_START) {
            state = SUPPLEMENT;
            stateEntered = millis();
            playTimeSound();
            last10Sec = remainingTime <= 10;
            lastSignal = BUZZ_SEC;
            return;
        }
        if (state == MAIN && timeInSeconds() >= TIME) {
            reset();
            playResetSound();
            return;
        }
        if (state == SUPPLEMENT && timeInSeconds() >= remainingTime) {
            reset();
            playResetSound();
            return;
        }
        if (state == MAIN || state == SUPPLEMENT) {
            int baseSeconds = state == MAIN ? TIME : remainingTime;
            int remaining = baseSeconds - timeInSeconds();
            if (remaining <= 10 && !last10Sec) {
                last10Sec = true;
                playAttentionSound();
            } else if (remaining <= lastSignal) {
                lastSignal--;
                playTimerSound();
            }
        }
    }
}

void BrainMode::getInfo(char* buffer, size_t bufferSize, size_t width) {
    if (state == ANSWER_MAIN) {
        if (enforceFalseStart) {
            snprintf(buffer, bufferSize, infoBrainLabel, reactionTime / 100, reactionTime % 100);
        } else {
            snprintf(buffer, bufferSize, "");
        }
    } else {
        snprintf(buffer, bufferSize, timeLabel);
        buffer[0] = 0;
    }
}
