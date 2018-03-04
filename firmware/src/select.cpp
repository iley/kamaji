#include <stdio.h>

#include <Arduino.h>
#include "mode.h"
#include "main.h"
#include "select_res.h"

namespace {

JeopardyMode jeopardyMode;
BrainMode brainMode;
HamsaMode hamsaMode;

const char *left = "<";
const char *right = ">";
const char *middle = selectLabel;
const int MODE_COUNT = 3;
Mode* modes[] = {&jeopardyMode, &brainMode, &hamsaMode};
const char* ids[] = {jeopardyLabel, brainLabel, hamsaLabel};
int selectedMode;

}  // namespace

void SelectMode::init() {
    selectedMode = 0;
}

bool SelectMode::getLedState(int playerId) {
    return false;
}

void SelectMode::getCaption(char* buffer, size_t bufferSize) {
    snprintf(buffer, bufferSize, modeLabel, ids[selectedMode]);
}

void SelectMode::getScore(char* buffer, size_t bufferSize) {
    buffer[0] = 0;
}

bool SelectMode::preferShowScore() {
    return false;
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
