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
    ANSWER_TIME_STARTED
};

const char *resetLabel = "Reset";
const char *startLabel = "Start";
const char *yesLabel = "Yes";
const char *noLabel = "No";
const char *emptyLabel = "";

int currentPlayer = -1;
State state = QUESTION;
unsigned long stateEnterd = millis();
bool blocked[NUM_PLAYERS];
bool firstTime = true;
int lastAttentionSoundPlayed = 3;

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
}

} // namespace

void JeopardyMode::init() {
    reset();
}

bool JeopardyMode::getLedState(int playerId) {
    return (state == ANSWER_TIME_NOT_STARTED || state == ANSWER_TIME_STARTED) && currentPlayer == playerId;
}

void JeopardyMode::getCaption(char* buffer, size_t bufferSize) {
    int playersBlocked = 0;
    switch (state) {
        case QUESTION:
            for (int i = 0; i < PLAYER_COUNT; i++) {
                if (blocked[i]) {
                    playersBlocked++;
                }
            }
            if (playersBlocked == 0) {
                snprintf(caption, sizeof(caption), "Read question");
            } else {
                snprintf(caption, sizeof(caption), "%d blocked", playersBlocked);
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
  return noLabel;
}

void JeopardyMode::update() {
    if (state == ANSWER_TIME_STARTED || state == ANSWER_TIME_NOT_STARTED) {
        if (timeInSeconds() == 0) {
            return;
        }
        if (timeInSeconds() - lastAttentionSoundPlayed >= ATTENTION_DELAY) {
            playAttentionSound();
            lastAttentionSoundPlayed = timeInSeconds();
        }
        if (isControlPressed(BUTTON_RESET)) {
            reset();
            playCorrectSound();
        } else if (isControlPressed(BUTTON_START)) {
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
        }
        return;
    } else {
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
