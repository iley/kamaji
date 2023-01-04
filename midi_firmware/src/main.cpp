#include <Arduino.h>
#include <MIDIUSB.h>
#include <pitchToNote.h>
#include <pitchToFrequency.h>
#include <toneAC.h>

#include "pushbutton.h"

enum {
  MIDI_CHANNEL_BUTTONS = 0,
  MIDI_CHANNEL_LEDS = 1,
  MIDI_CHANNEL_BUZZER = 2,
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

const byte kPlayerPitches[kPlayerCount] = {
  pitchC1, pitchD1b, pitchD1, pitchE1b,
  pitchE1, pitchF1, pitchG1b, pitchG1,
};

PushButton buttons[kPlayerCount];

void setup() {
  unsigned long now = millis();
  for (int i = 0; i < kPlayerCount; i++) {
    buttons[i].init(kButtonPins[i]);
    pinMode(kLedPins[i], OUTPUT);
  }
}

inline byte playerIndexToPitch(int index) {
  return kPlayerPitches[index];
}

int pitchToPlayerIndex(byte pitch) {
  for (int i = 0; i < kPlayerCount; i++) {
    if (kPlayerPitches[i] == pitch) {
      return i;
    }
  }
  return -1;
}

void noteOn(byte channel, byte pitch, byte velocity) {
  midiEventPacket_t noteOn = {0x09, 0x90 | channel, pitch, velocity};
  MidiUSB.sendMIDI(noteOn);
}

void noteOff(byte channel, byte pitch, byte velocity) {
  midiEventPacket_t noteOff = {0x08, 0x80 | channel, pitch, velocity};
  MidiUSB.sendMIDI(noteOff);
}

void handleNoteOn(byte channel, byte pitch, byte velocity) {
  if (channel == MIDI_CHANNEL_LEDS) {
    int index = pitchToPlayerIndex(pitch);
    if (index != -1) {
      digitalWrite(kLedPins[index], HIGH);
    }
  } else if (channel == MIDI_CHANNEL_BUZZER) {
    toneAC(pitchFrequency[pitch]);
  }
}

void handleNoteOff(byte channel, byte pitch, byte velocity) {
  if (channel == MIDI_CHANNEL_LEDS) {
    int index = pitchToPlayerIndex(pitch);
    if (index != -1) {
      digitalWrite(kLedPins[index], LOW);
    }
  } else if (channel == MIDI_CHANNEL_BUZZER) {
    toneAC(0);
  }
}

void loop() {
  midiEventPacket_t rx = MidiUSB.read();
  switch (rx.header) {
    case 0x09:
      handleNoteOn(/*channel=*/rx.byte1 & 0xF, /*pitch=*/rx.byte2, /*velocity=*/rx.byte3);
      break;
    case 0x08:
      handleNoteOff(/*channel=*/rx.byte1 & 0xF, /*pitch=*/rx.byte2, /*velocity=*/rx.byte3);
      break;
  }

  for (int i = 0; i < kPlayerCount; i++) {
    switch (buttons[i].poll()) {
      case PushButton::NO_CHANGE:
        break;
      case PushButton::PUSH_DOWN:
        noteOn(MIDI_CHANNEL_BUTTONS, playerIndexToPitch(i), 127);
        break;
      case PushButton::PUSH_UP:
        noteOff(MIDI_CHANNEL_BUTTONS, playerIndexToPitch(i), 0);
        break;
    }
  }
  MidiUSB.flush();
}
