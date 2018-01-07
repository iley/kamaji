#include "lamp.h"

#include <Arduino.h>
#include "xpins.h"

#if USE_LAMP

DECLARE_KLAMP_PIN();

void initLamp() {
  xPinMode(kLampPin, OUTPUT);
}

void switchLamp(bool on) {
  xDigitalWrite(kLampPin, on ? HIGH : LOW);
}

#else

void initLamp() {}
void switchLamp(bool) {}

#endif
