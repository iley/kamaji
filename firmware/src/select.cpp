#include <stdio.h>

#include <Arduino.h>
#include "mode.h"
#include "main.h"
#include "res.h"

namespace {

JeopardyMode jeopardyMode;
BrainMode brainMode;

const int MODE_COUNT = 2;
Mode* modes[] = {&jeopardyMode, &brainMode};
const char* ids[] = {jeopardyLabel, brainLabel};
int selectedMode;

}  // namespace

void SelectMode::init() {
    selectedMode = 0;
}

bool SelectMode::getLedState(int playerId) {
    return false;
}

bool SelectMode::isEssential() {
    return false;
}

void SelectMode::getCaption(char* buffer, size_t bufferSize, size_t width) {
    snprintf(buffer, bufferSize, modeLabel, ids[selectedMode]);
}

void SelectMode::getScore(char* buffer, size_t bufferSize, size_t width) {
    buffer[0] = 0;
}

void SelectMode::getInfo(char* buffer, size_t bufferSize, size_t width) {
    buffer[0] = 0;
}

bool SelectMode::preferShowScore() {
    return false;
}

const char* SelectMode::getLabel(int buttonId) {
    if (buttonId == BUTTON_RESET) {
        return leftLabel;
    } else if (buttonId == BUTTON_START)  {
        return rightLabel;
    } else if (buttonId == BUTTON_CONTROL_2) {
        return selectLabel;
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
