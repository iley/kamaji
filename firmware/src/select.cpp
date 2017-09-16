#include <stdio.h>

#include <Arduino.h>
#include "mode.h"
#include "main.h"

namespace {

JeopardyMode jeopardyMode;
BrainMode brainMode;
HamsaMode hamsaMode;

const char *left = VERSION == 0 ? "Next" : "<";
const char *right = VERSION == 0 ? "Select" : ">";
const char *middle = VERSION == 0 ? "" : "Select";
const int MODE_COUNT = 3;
Mode* modes[] = {&jeopardyMode, &brainMode, &hamsaMode};
const char* ids[] = {"Jeopardy", "Brain", "Hamsa"};
int selectedMode;

}  // namespace

void SelectMode::init() {
    selectedMode = 0;
}

bool SelectMode::getLedState(int playerId) {
    return false;
}

void SelectMode::getCaption(char* buffer, size_t bufferSize) {
    snprintf(buffer, bufferSize, "Mode: %s", ids[selectedMode]);
}

const char* SelectMode::getLabel(int buttonId) {
    if (buttonId == BUTTON_RESET) {
        return left;
    } else if (buttonId == BUTTON_START)  {
        return right;
    } else if (buttonId == BUTTON_CONTROL_2) {
        return middle;
    }
    return "";
}

void SelectMode::update() {
    if (VERSION == 0) {
        if (isControlPressed(BUTTON_RESET)) {
            selectedMode++;
            if (selectedMode == MODE_COUNT) {
                selectedMode = 0;
            }
        } else if (isControlPressed(BUTTON_START)) {
            setMode(modes[selectedMode]);
        }
    } else {
        if (isControlPressed(BUTTON_RESET)) {
            selectedMode--;
            if (selectedMode == -1) {
                selectedMode = MODE_COUNT - 1;
            }
        } else if (isControlPressed(BUTTON_CONTROL_2)) {
            setMode(modes[selectedMode]);
        } else if (isControlPressed(BUTTON_START)) {
            selectedMode++;
            if (selectedMode == MODE_COUNT) {
                selectedMode = 0;
            }            
        }
    }
}
