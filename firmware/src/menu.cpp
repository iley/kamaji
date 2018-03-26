#include "menu.h"
#include "res.h"

void Menu::init(int numOptions_, const char** options_, int initialOption) {
    numOptions = numOptions_;
    options = options_;
    currentOption = initialOption;
}

const char* Menu::getCurrentOption() {
    return options[currentOption];
}

const char* Menu::getLeftLabel() {
    return currentOption == 0 ? emptyLabel : leftLabel;
}

const char* Menu::getRightLabel() {
    return currentOption == numOptions - 1 ? emptyLabel : rightLabel;
}

const char* Menu::getCenterLabel() {
    return selectLabel;
}

void Menu::toLeft() {
    if (currentOption != 0) {
        currentOption--;
    }
}

void Menu::toRight() {
    if (currentOption != numOptions - 1) {
        currentOption++;
    }
}
