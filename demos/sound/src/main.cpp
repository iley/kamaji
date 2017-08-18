#include "Arduino.h"
#include "pitches.h"  // Taken from https://www.arduino.cc/en/Tutorial/ToneMelody

const int kSpeakerPin = 9;
const int freq = 1200;

void setup() {
  pinMode(kSpeakerPin, OUTPUT);
}

void loop() {
  tone(kSpeakerPin, freq, 501);
  delay(1000);
}
