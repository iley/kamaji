#include "Arduino.h"
#include "pitches.h"

const int kButtonCount = 3;
const int kButtonPins[] = {2, 3, 4};
const int kLedPins[] = {17, 16, 15};
const int kResetButtonPin = 6;
const int kSpeakerPin = 8;

bool gotWinner = false;

void setup() {
  for (const int buttonPin : kButtonPins) {
    pinMode(buttonPin, INPUT);
  }
  for (const int ledPin : kLedPins) {
    pinMode(ledPin, OUTPUT);
  }
  pinMode(kResetButtonPin, INPUT);
  pinMode(kSpeakerPin, OUTPUT);
}

void loop() {
  if (gotWinner) {
    int resetButtonState = digitalRead(kResetButtonPin);
    if (resetButtonState == HIGH) {
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
      if (buttonState == HIGH) {
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
