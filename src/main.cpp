#include "Arduino.h"

const int kButtonCount = 3;
const int kButtonPins[] = {2, 3, 4};
const int kLedPins[] = {17, 16, 15};

void setup() {
  for (const int buttonPin : kButtonPins) {
    pinMode(buttonPin, INPUT);
  }
  for (const int ledPin : kLedPins) {
    pinMode(ledPin, OUTPUT);
  }
}

void loop() {
  for (int i = 0; i < kButtonCount; ++i) {
    int buttonState = digitalRead(kButtonPins[i]);
    digitalWrite(kLedPins[i], buttonState);
  }
}
