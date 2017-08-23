#include <stdio.h>

#include <Arduino.h>
#include "mode.h"
#include "main.h"

namespace {

JeopardyMode jeopardyMode;
BrainMode brainMode;
HamsaMode hamsaMode;

const char *left = "Next";
const char *right = "Select";
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
    }
    return "";
}

void SelectMode::update() {
    if (isControlPressed(BUTTON_RESET)) {
        selectedMode++;
        if (selectedMode == MODE_COUNT) {
            selectedMode = 0;
        }
    } else if (isControlPressed(BUTTON_START)) {
        setMode(modes[selectedMode]);
    }
}
