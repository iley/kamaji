#include "Arduino.h"
#include "pitches.h"  // Taken from https://www.arduino.cc/en/Tutorial/ToneMelody

const int kSpeakerPin = 11;
const int kMelody[] = {
  NOTE_C4, NOTE_G3, NOTE_G3, NOTE_A3, NOTE_G3, 0, NOTE_B3, NOTE_C4
};

void setup() {
  pinMode(kSpeakerPin, OUTPUT);
}

void loop() {
  for (auto freq : kMelody) {
    tone(kSpeakerPin, freq);
    delay(200);
    noTone(kSpeakerPin);
  }
  delay(1000);
}
