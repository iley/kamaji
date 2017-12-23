#include <Arduino.h>

#include "lcd.h"

DECLARE_KBUTTON_PINS();
DECLARE_KLED_PINS();
DECLARE_KSPEAKER_PIN();
DECLARE_LCD();

#if USE_LAMP
DECLARE_KLAMP_PIN();
#endif

bool buttons[BUTTON_COUNT] = { false };
bool buttonsBefore[BUTTON_COUNT] = { false };
unsigned long lastPressedMs[BUTTON_COUNT] = {0};

void setup() {
}

void loop() {
}
