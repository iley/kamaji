#include <stdio.h>
#include <stdlib.h>

#include <Arduino.h>
#include "mode.h"
#include "main.h"
#include "res.h"

namespace {

const int TIME = 60;
const int TIME_SUPPLEMENT = 20;
const int NUM_PLAYERS = 2;
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
    START_DELAY
};


int currentPlayer = -1;
State state = QUESTION;
unsigned long startDelay;
unsigned long stateEnterd = millis();
bool blocked[NUM_PLAYERS];
bool last10Sec = false;
int lastSignal = BUZZ_SEC;
int lastAttentionSoundPlayed = 3;
int score[2];
int roundID;
int reactionTime;

int timeInSeconds() {
    return (millis() - stateEnterd) / 1000;
}

int timeInTenths() {
    return (millis() - stateEnterd) / 100;
}

void reset() {
    currentPlayer = -1;
    state = QUESTION;
    stateEnterd = millis();
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
    score[0] = score[1] = 0;
    reset();
    roundID = 1;
}

bool BrainMode::getLedState(int playerId) {
    return (state == ANSWER_MAIN || state == ANSWER_SUPPLEMENT || state == FALSE_START) && currentPlayer == playerId;
}

bool BrainMode::getLampState() {
    return ((state == MAIN || state == SUPPLEMENT) && timeInSeconds() < 3) ||
      (state == FALSE_START && timeInTenths() % 10 < 5) ||
      ((state == ANSWER_MAIN || state == ANSWER_SUPPLEMENT) && timeInTenths() >= 1);
}

void BrainMode::getCaption(char* buffer, size_t bufferSize) {
    switch (state) {
        case QUESTION:
            snprintf(buffer, bufferSize, readBrainLabel, roundID);
            break;
        case MAIN:
            snprintf(buffer, bufferSize, timeLabel, TIME - timeInSeconds());
            break;
        case SUPPLEMENT:
            snprintf(buffer, bufferSize, timeLabel, TIME_SUPPLEMENT - timeInSeconds());
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
                return yesLabel;
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
                return noLabel;
        }
    }
    return "";
}

void BrainMode::getScore(char* buffer, size_t bufferSize) {
    snprintf(buffer, bufferSize, scoreBrainLabel, score[0], score[1]);
}

bool BrainMode::preferShowScore() {
    return state == QUESTION;
}

void BrainMode::update() {
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
                playTimeSound();
            } else {
                reset();
                return;
            }
            currentPlayer = -1;
            stateEnterd = millis();
        }
        return;
    } else {
        if (state != QUESTION || timeInSeconds() >= DELAY) {
            for (int i = 0; i < NUM_PLAYERS; i++) {
                if (isPlayerPressed(i) && !blocked[i] && state != FALSE_START) {
                    blocked[i] = true;
                    currentPlayer = i;
                    lastAttentionSoundPlayed = 3;
                    if (state == MAIN) {
                        reactionTime = (millis() - stateEnterd) / 10;
                        state = ANSWER_MAIN;
                        playPlayerSound();
                    } else if (state == SUPPLEMENT) {
                        state = ANSWER_SUPPLEMENT;
                        playPlayerSound();
                    } else {
                        state = FALSE_START;
                        playFalseStartSound();
                    }
                    stateEnterd = millis();
                    return;
                }
            }
        }
        if (timeInSeconds() == 0 && state != START_DELAY) {
            return;
        }
        if (isControlPressed(BUTTON_RESET)) {
            reset();
            return;
        }
        if (state == START_DELAY) {
            if (millis() - stateEnterd >= startDelay) {
                state = MAIN;
                stateEnterd = millis();
                playTimeSound();
            }
            return;
        }
        if (isControlPressed(BUTTON_START) && state == QUESTION) {
            state = START_DELAY;
            startDelay = 500 + rand() % 500;
            stateEnterd = millis();
            return;
        }
        if (isControlPressed(BUTTON_START) && state == FALSE_START) {
            state = SUPPLEMENT;
            stateEnterd = millis();
            playTimeSound();
            last10Sec = false;
            lastSignal = BUZZ_SEC;
            return;
        }
        if (state == MAIN && timeInSeconds() >= TIME) {
            reset();
            playResetSound();
            return;
        }
        if (state == SUPPLEMENT && timeInSeconds() >= TIME_SUPPLEMENT) {
            reset();
            playResetSound();
            return;
        }
        if (state == MAIN || state == SUPPLEMENT) {
            int baseSeconds = state == MAIN ? TIME : TIME_SUPPLEMENT;
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

void BrainMode::getInfo(char* buffer, size_t bufferSize) {
    if (state == ANSWER_MAIN) {
        snprintf(buffer, bufferSize, infoBrainLabel, reactionTime / 100, reactionTime % 100);
    } else {
        snprintf(buffer, bufferSize, timeLabel);
        buffer[0] = 0;
    }
}
