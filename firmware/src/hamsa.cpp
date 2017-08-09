#include <stdio.h>

#include <Arduino.h>
#include "mode.h"
#include "main.h"

namespace PaketHamsa {
const int TIME = 7;
const int NUM_PLAYERS = PLAYER_COUNT;
const int DELAY = 3;

enum State {
    QUESTION,
    COUNTDOWN,
    ANSWER_TIME_NOT_STARTED,
    ANSWER_TIME_STARTED
};

char caption[DISPLAY_SIZE + 1] = {0};
const char *resetLabel = "Reset";
const char *startLabel = "Start";
const char *yesLabel = "Yes";
const char *noLabel = "No";
const char *emptyLabel = "";

int currentPlayer = -1;
State state = QUESTION;
unsigned long stateEnterd = millis();
bool blocked[NUM_PLAYERS];
int queue[NUM_PLAYERS];
int start;
int size;

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
    start = 0;
    size = 0;
}
}

using namespace PaketHamsa;

void HamsaMode::init() {
    reset();
}

bool HamsaMode::getLedState(int playerId) {
    return (state == ANSWER_TIME_NOT_STARTED || state == ANSWER_TIME_STARTED) && currentPlayer == playerId;
    /* if (state != ANSWER_TIME_NOT_STARTED && state != ANSWER_TIME_STARTED) {
        return false;
    }
    for (int i = start; i < size; i++) {
        if (playerId == queue[i]) {
            return true;
        }
    }
    return false;*/
}

const char* HamsaMode::getCaption() {
    switch (state) {
        case QUESTION:
            snprintf(caption, sizeof(caption), "Read question");
            break;
        case COUNTDOWN:
            snprintf(caption, sizeof(caption), "%d s remaining", TIME - timeInSeconds());
            break;
        case ANSWER_TIME_NOT_STARTED:
        case ANSWER_TIME_STARTED:
            snprintf(caption, sizeof(caption), "Player %d (%d s)", currentPlayer + 1, timeInSeconds());
            break;
    }
    return caption;
}

const char* HamsaMode::getLabel(int buttonId) {
    if (buttonId == BUTTON_RESET) {
        switch (state) {
            case QUESTION:
            case COUNTDOWN:
                return resetLabel;
            case ANSWER_TIME_NOT_STARTED:
            case ANSWER_TIME_STARTED:
                return yesLabel;
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
        }            
    }
}

void HamsaMode::update() {
    if (state != QUESTION || timeInSeconds() >= DELAY) {
        for (int i = 0; i < NUM_PLAYERS; i++) {
            if (isPlayerPressed(i) && !blocked[i]) {
                blocked[i] = true;
                queue[size++] = i;
                if (state == QUESTION) {
                    state = ANSWER_TIME_NOT_STARTED;
                    currentPlayer = queue[start];
                    stateEnterd = millis();
                } else if (state == COUNTDOWN) {
                    state = ANSWER_TIME_STARTED;
                    currentPlayer = queue[start];
                    stateEnterd = millis();
                }
                playPlayerSound();
            }
        }
    }
    if (state == ANSWER_TIME_STARTED || state == ANSWER_TIME_NOT_STARTED) {
        if (timeInSeconds() == 0) {
            return;
        }
        if (isControlPressed(BUTTON_RESET)) {
            reset();
            playCorrectSound();
        } else if (isControlPressed(BUTTON_START)) {
            start++;
            if (start != size) {
                currentPlayer = queue[start];
                stateEnterd = millis();
                return;
            }
            start = 0;
            size = 0;
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
        }
        return;
    } else {
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
            return;
        }
        if (state == COUNTDOWN && timeInSeconds() >= TIME) {
            reset();
            playResetSound();
            return;
        }
    }
}
