#include <Arduino.h>
#include <string.h>

#include "lamp.h"
#include "lcd.h"
#include "main.h"
#include "mode.h"
#include "pitches.h"
#include "xpins.h"
#include "strlen.h"

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

char caption[2 * kDisplayCols + 1];
char score[2 * kDisplayCols + 1];
char info[2 * kDisplayCols + 1];
char lastLeft[2 * kDisplayCols + 1];
char lastRight[2 * kDisplayCols + 1];
char lastMiddle[2 * kDisplayCols + 1];
char lastCaption[2 * kDisplayCols + 1];
char lastScore[2 * kDisplayCols + 1];
char lastInfo[2 * kDisplayCols + 1];

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
  score[0] = '\0';
  mode->getScore(score, sizeof(score));
  mode->getInfo(info, sizeof(info));
  const char* left = mode->getLabel(BUTTON_RESET);
  const char* right = mode->getLabel(BUTTON_START);
  const char* middle = mode->getLabel(BUTTON_CONTROL_2);
  if (strcmp(lastCaption, caption) != 0 ||
      strcmp(lastScore, score) != 0 ||
      strcmp(lastLeft, left) != 0 ||
      strcmp(lastRight, right) != 0 ||
      strcmp(lastMiddle, middle) != 0 ||
      strcmp(lastInfo, info)) {
    lcd.clear();
    if (kDisplayRows == 2) {
      lcd.print(mode->preferShowScore() ? score : caption);
    } else {
      lcd.print(score);
      lcd.setCursor(0, 2);
      lcd.print(caption);
      lcd.setCursor(0, 3);
      lcd.print(info);
    }
    lcd.setCursor(/*col=*/0, /*row=*/kDisplayRows == 2 ? 1 : 4);
    // Print button functions on the lower line of the screen.
    lcd.print(left);
    const int spaces = kDisplayCols - strlen_utf(left) - strlen_utf(right) - strlen_utf(middle);
    for (int i = 0; i < spaces / 2; ++i) {
      lcd.print(' ');
    }
    lcd.print(middle);
    for (int i = 0; i < (spaces + 1) / 2; ++i) {
      lcd.print(' ');
    }
    lcd.print(right);
    flushLcd(&lcd);  // Redraw the screen.
    strncpy(lastMiddle, middle, sizeof(lastMiddle));
    strncpy(lastLeft, left, sizeof(lastLeft));
    strncpy(lastRight, right, sizeof(lastRight));
    strncpy(lastCaption, caption, sizeof(lastCaption));
    strncpy(lastScore, score, sizeof(lastScore));
    strncpy(lastInfo, info, sizeof(lastInfo));
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
