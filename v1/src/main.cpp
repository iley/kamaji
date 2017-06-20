#include "Arduino.h"
#include "pitches.h"  // Taken from https://www.arduino.cc/en/Tutorial/ToneMelody

const int kButtonCount = 4;
const int kButtonPins[] = {8, 6, 4, 2};
const int kLedPins[] = {9, 7, 5, 3};
const int kResetButtonPin = 15;
const int kSpeakerPin = 11;

bool gotWinner = false;

void setup() {
  for (const int buttonPin : kButtonPins) {
    pinMode(buttonPin, INPUT_PULLUP);
  }
  for (const int ledPin : kLedPins) {
    pinMode(ledPin, OUTPUT);
  }
  pinMode(kResetButtonPin, INPUT_PULLUP);
  pinMode(kSpeakerPin, OUTPUT);
}

void loop() {
  if (gotWinner) {
    int resetButtonState = digitalRead(kResetButtonPin);
    if (resetButtonState == LOW) {
      gotWinner = false;
      for (int ledPin : kLedPins) {
        digitalWrite(ledPin, LOW);
        tone(kSpeakerPin, NOTE_D4);
        delay(100/*ms*/);
        noTone(kSpeakerPin);
      }
    }
  } else {
    for (int i = 0; i < kButtonCount; ++i) {
      int buttonState = digitalRead(kButtonPins[i]);
      if (buttonState == LOW) {
        digitalWrite(kLedPins[i], HIGH);
        tone(kSpeakerPin, NOTE_G4);
        delay(100/*ms*/);
        noTone(kSpeakerPin);
        gotWinner = true;
        break;
      }
    }
  }
}
