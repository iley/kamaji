#include "Arduino.h"
#include "MIDIUSB.h"
#include "PitchToNote.h"

enum ButtonEvent {
  BUTTON_DOWN,
  BUTTON_UP,
  BUTTON_NO_CHANGE,
};

const int kPlayerCount = 8;

const uint8_t kButtonPins[kPlayerCount] = {
  1, 2, 4, 6,
  8, 14, 18, 20,
};

const uint8_t kLedPins[kPlayerCount] = {
  0, 3, 5, 7,
  16, 15, 19, 21,
};

const byte kButtonPitches[kPlayerCount] = {
  pitchG2, pitchG2b, pitchF2, pitchE2,
  pitchE2b, pitchD2, pitchD2b, pitchC2,
};

const unsigned long kDebounceMillis = 100;
bool buttonState[kPlayerCount];
unsigned long buttonLastEventMillis[kPlayerCount];

ButtonEvent pollButton(int index) {
  bool pushed = (LOW == digitalRead(kButtonPins[index]));
  unsigned long now = millis();
  if (now - buttonLastEventMillis[index] < kDebounceMillis) {
    pushed = buttonState[index];
  }

  if (pushed) {
    buttonState[index] = pushed;
    return BUTTON_DOWN;
  } else {
    buttonState[index] = pushed;
    return BUTTON_UP;
  }
}

void handleButtonPress(int buttonIndex) {
}

void setup() {
  unsigned long now = millis();
  for (int i = 0; i < kPlayerCount; i++) {
    pinMode(kButtonPins[i], INPUT_PULLUP);
    pinMode(kLedPins[i], OUTPUT);
    buttonState[i] = false;
    buttonLastEventMillis[i] = now;
  }
}

void noteOn(byte channel, byte pitch, byte velocity) {
  midiEventPacket_t noteOn = {0x09, 0x90 | channel, pitch, velocity};
  MidiUSB.sendMIDI(noteOn);
}

void noteOff(byte channel, byte pitch, byte velocity) {
  midiEventPacket_t noteOff = {0x08, 0x80 | channel, pitch, velocity};
  MidiUSB.sendMIDI(noteOff);
}

void loop() {
  for (int i = 0; i < kPlayerCount; i++) {
    switch (pollButton(i)) {
      case BUTTON_NO_CHANGE:
        continue;
      case BUTTON_DOWN:
        noteOn(0, kButtonPitches[i], 127);
        break;
      case BUTTON_UP:
        noteOff(0, kButtonPitches[i], 0);
        break;
    }
  }
  MidiUSB.flush();
}
