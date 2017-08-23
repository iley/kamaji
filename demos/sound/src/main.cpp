#include "Arduino.h"
#include "pitches.h"  // Taken from https://www.arduino.cc/en/Tutorial/ToneMelody

const int kSpeakerPin = 9;
const int freqs[] = {100, 500, 1000, 1500, 2000, 2500, 3000};

void setup() {
  pinMode(kSpeakerPin, OUTPUT);
}

void loop() {
  for (const auto freq : freqs) {
    tone(kSpeakerPin, freq, 500);
    delay(1000);
  }
}
