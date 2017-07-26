#include <stdio.h>

#include <Arduino.h>
#include "mode.h"
#include "main.h"

namespace PaketSelect {
char caption[17];
const char *left = "Next";
const char *right = "Select";
const int MODE_COUNT = 3;
Mode* modes[] = {new JeopardyMode(), new BrainMode(), new HamsaMode()};
char* ids[] = {"Jeopardy", "Brain", "Hamsa"};
int selectedMode;
}

using namespace PaketSelect;

void SelectMode::init() {
    selectedMode = 0;
}

bool SelectMode::getLedState(int playerId) {
    return false;
}

const char* SelectMode::getCaption() {
    sprintf(caption, "Mode: %s", ids[selectedMode]);
    return caption;
}

const char* SelectMode::getLabel(int buttonId) {
    if (buttonId == BUTTON_RESET) {
        return left;
    } else if (buttonId == BUTTON_START)  {
        return right;
    }
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
