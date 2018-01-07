#include <Arduino.h>
#include <string.h>

#include "lamp.h"
#include "lcd.h"
#include "main.h"
#include "mode.h"
#include "pitches.h"
#include "xpins.h"

// How long the two buttons need to be held for a reset.
const unsigned long kResetDelayMs = 2000;
// Button debounce delay in milliseconds.
const unsigned long kDebounceMs = 100;

// Pin numbers for buttons and LEDs are defined in the corresponding config:
// config_v[01].h
DECLARE_KBUTTON_PINS();
DECLARE_KLED_PINS();
DECLARE_KSPEAKER_PIN();
DECLARE_LCD();

SelectMode selectMode;

// Selected game mode.
Mode *mode = &selectMode;

// Button state, true means pressed.
bool buttons[BUTTON_COUNT] = { false };
// Button state before the latest update.
bool buttonsBefore[BUTTON_COUNT] = { false };
// For each button, time when it was last pressed.
unsigned long lastPressedMs[BUTTON_COUNT] = {0};

char caption[kDisplayCols + 1];
char lastLeft[kDisplayCols + 1];
char lastRight[kDisplayCols + 1];
char lastMiddle[kDisplayCols + 1];
char lastCaption[kDisplayCols + 1];

// Whether the reset buttons are being held.
bool resetStarted = false;
// Time when the reset buttons were pushed.
unsigned long resetStartTime;

void setup() {
  for (const int buttonPin : kButtonPins) {
    xPinMode(buttonPin, INPUT_PULLUP);
  }
  for (const int ledPin : kLedPins) {
    xPinMode(ledPin, OUTPUT);
    xDigitalWrite(ledPin, LOW);
  }
  xPinMode(kSpeakerPin, OUTPUT);

  initLamp();
  initLcd(&lcd);
  mode->init();
  tone(kSpeakerPin, NOTE_A7, 300/*ms*/);
}

void updateScreenAndLeds() {
  caption[0] = '\0';
  mode->getCaption(caption, sizeof(caption));
  const char* left = mode->getLabel(BUTTON_RESET);
  const char* right = mode->getLabel(BUTTON_START);
  const char* middle = 0;
  if (SHOW_SCORES != 0) {
    middle = mode->getLabel(BUTTON_CONTROL_2);
  }
  if (strcmp(lastCaption, caption) != 0 ||
      strcmp(lastLeft, left) != 0 ||
      strcmp(lastRight, right) != 0 ||
      (SHOW_SCORES != 0 && strcmp(lastMiddle, middle) != 0)) {
    lcd.clear();
    lcd.print(caption);
    lcd.setCursor(/*row=*/0, /*col=*/1);
    // Print button functions on the lower line of the screen.
    if (SHOW_SCORES == 0) {
      lcd.print(left);
      const int spaces = kDisplayCols - strlen(left) - strlen(right);
      for (int i = 0; i < spaces; ++i) {
        lcd.print(' ');
      }
      lcd.print(right);
    } else {
      lcd.print(left);
      const int spaces = kDisplayCols - strlen(left) - strlen(right) - strlen(middle);
      for (int i = 0; i < spaces / 2; ++i) {
        lcd.print(' ');
      }
      lcd.print(middle);
      for (int i = 0; i < (spaces + 1) / 2; ++i) {
        lcd.print(' ');
      }
      lcd.print(right);
      strncpy(lastMiddle, middle, sizeof(lastMiddle));
    }
    flushLcd(&lcd);  // Redraw the screen.
    strncpy(lastLeft, left, sizeof(lastLeft));
    strncpy(lastRight, right, sizeof(lastRight));
    strncpy(lastCaption, caption, sizeof(lastCaption));
  }
  for (int i = BUTTON_PLAYER_1; i <= LAST_PLAYER_BUTTON; i++) {
    xDigitalWrite(kLedPins[i], mode->getLedState(i) ? HIGH : LOW);
  }
  switchLamp(mode->getLampState());
}

void loop() {
  unsigned long now = millis();
  // Read all buttons and save their state in a global array.
  for (int i = 0; i < BUTTON_COUNT; ++i) {
    buttonsBefore[i] = buttons[i];
    // Ignore the button state changes if it was pressed less than kDebounceMs
    // milliseconds ago to account for contact bouncing.
    if (now - lastPressedMs[i] > kDebounceMs) {
      // The buttons pins are active LOW.
      if (xDigitalRead(kButtonPins[i]) == LOW) {
        buttons[i] = true;
        lastPressedMs[i] = now;
      } else {
        buttons[i] = false;
      }
    }
  }
  if (buttons[BUTTON_RESET] && buttons[BUTTON_START]) {
    if (resetStarted && now - resetStartTime > kResetDelayMs) {
      mode = &selectMode;
      mode->init();
    } else if (!resetStarted) {
      resetStarted = true;
      resetStartTime = now;
    }
  } else {
    resetStarted = false;
  }
  mode->update();
  updateScreenAndLeds();
}

bool isPlayerPressed(int playerId) {
  return buttons[playerId] && !buttonsBefore[playerId];
}

bool isControlPressed(int buttonId) {
  return buttons[buttonId] && !buttonsBefore[buttonId];
}

void playStartSound() {
  tone(kSpeakerPin, NOTE_DS6, 300/*ms*/); 
}

void playTimeSound() {
  tone(kSpeakerPin, NOTE_DS6, 1000/*ms*/);
}

void playResetSound() {
  tone(kSpeakerPin, NOTE_D6, 1000/*ms*/);
}

void playPlayerSound() {
  tone(kSpeakerPin, NOTE_F6, 300/*ms*/);
}

void playTimerSound() {
  tone(kSpeakerPin, NOTE_F6, 100/*ms*/);
}

void playCorrectSound() {
  tone(kSpeakerPin, NOTE_C6, 300/*ms*/);
}

void playFalseStartSound() {
  tone(kSpeakerPin, NOTE_G6, 500/*ms*/);
}

void playAttentionSound() {
  tone(kSpeakerPin, NOTE_F6, 300/*ms*/);
}

void setMode(Mode *newMode) {
  mode = newMode;
  mode->init();
}
