#include <stdio.h>

#include <Arduino.h>
#include "mode.h"
#include "main.h"

namespace PaketBrain {
const int TIME = 60;
const int TIME_SUPPLEMENT = 20;
const int NUM_PLAYERS = 2;

enum State {
    QUESTION,
    MAIN,
    SUPPLEMENT,
    ANSWER_MAIN,
    ANSWER_SUPPLEMENT,
    FALSE_START
};

char caption[17] = {0};
const char *resetLabel = "Reset";
const char *startLabel = "Time";
const char *yesLabel = "Yes";
const char *noLabel = "No";
const char *emptyLabel = "";

int currentPlayer = -1;
State state = QUESTION;
unsigned long stateEnterd = millis();
bool blocked[NUM_PLAYERS];

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
}
}

using namespace PaketBrain;

void BrainMode::init() {
    reset();
}

bool BrainMode::getLedState(int playerId) {
    return (state == ANSWER_MAIN || state == ANSWER_SUPPLEMENT) && currentPlayer == playerId;
}

const char* BrainMode::getCaption() {
    switch (state) {
        case QUESTION:
            sprintf(caption, "Read question");
            break;
        case MAIN:
            sprintf(caption, "%d s remaining", TIME - timeInSeconds());
            break;
        case SUPPLEMENT:
            sprintf(caption, "%d s remaining", TIME_SUPPLEMENT - timeInSeconds());
            break;
        case ANSWER_MAIN:
        case ANSWER_SUPPLEMENT:
            sprintf(caption, "Team %d (%d s)", currentPlayer + 1, timeInSeconds());
            break;
        case FALSE_START:
            sprintf(caption, "Team %d too early", currentPlayer + 1);
            break;
    }
    return caption;
}

const char* BrainMode::getLabel(int buttonId) {
    if (buttonId == BUTTON_RESET) {
        switch (state) {
            case QUESTION:
            case MAIN:
            case SUPPLEMENT:
            case FALSE_START:
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
                return emptyLabel;
            case ANSWER_MAIN:
            case ANSWER_SUPPLEMENT:
                return noLabel;
        }            
    }
}

void BrainMode::update() {
    if (state == ANSWER_MAIN || state == ANSWER_SUPPLEMENT) {
        if (timeInSeconds() == 0) {
            return;
        }
        if (isControlPressed(BUTTON_RESET)) {
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
        for (int i = 0; i < NUM_PLAYERS; i++) {
            if (isPlayerPressed(i) && !blocked[i] && state != FALSE_START) {
                blocked[i] = true;
                currentPlayer = i;
                if (state == MAIN) {
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
        if (timeInSeconds() == 0) {
            return;
        }
        if (isControlPressed(BUTTON_RESET)) {
            reset();
            return;
        }
        if (isControlPressed(BUTTON_START) && state == QUESTION) {
            state = MAIN;
            stateEnterd = millis();
            playTimeSound();
            return;
        }
        if (isControlPressed(BUTTON_START) && state == FALSE_START) {
            state = SUPPLEMENT;
            stateEnterd = millis();
            playTimeSound();
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
    }
}
