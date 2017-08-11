#include <string.h>

#include <Arduino.h>

#ifdef USE_I2C_LCD
#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#else
#include <LiquidCrystal.h>
#endif  // USE_I2C_LCD

#include "pitches.h"
#include "mode.h"
#include "main.h"

const int kResetDelay = 2000;

// Pin numbers for buttons and LEDs are defined in the corresponding config:
// config_v[01].h
DECLARE_KBUTTON_PINS();
DECLARE_KLED_PINS();
DECLARE_KSPEAKER_PIN();

const int kScreenWidth = 16;

// Button debounce delay in milliseconds.
const unsigned long kDebounceMs = 300;

// GLOBAL STATE

#ifdef USE_I2C_LCD
// An I2C-connected 16x2 character LCD screen.
LiquidCrystal_I2C lcd(0x3f, 2, 1, 0, 4, 5, 6, 7);
#else
LiquidCrystal lcd(/*rs=*/14, /*en=*/15, /*d0=*/16, /*d1=*/17, /*d2=*/18,
                  /*d3=*/19);
#endif

Mode *selectMode = new SelectMode();

// Selected game mode.
Mode *mode = selectMode;

// Button state, true means pressed.
bool buttons[BUTTON_COUNT] = { false };
// Button state before the latest update.
bool buttonsBefore[BUTTON_COUNT] = { false };

// For each button, when it was last time pressed in milliseconds since device
// start.
unsigned long lastPressedMs[BUTTON_COUNT] = {0};

char lastLeft[17];
char lastRight[17];
char lastCaption[17];
bool lastLeds[4];
bool resetStarted;
unsigned long resetStartTime;

void setup() {
  for (const int buttonPin : kButtonPins) {
    pinMode(buttonPin, INPUT_PULLUP);
  }
  for (const int ledPin : kLedPins) {
    pinMode(ledPin, OUTPUT);
    digitalWrite(ledPin, LOW);
  }
  pinMode(kSpeakerPin, OUTPUT);

  // Initialize the screen.
  lcd.begin(/*cols=*/16, /*rows=*/2);
#ifdef USE_I2C_LCD
  lcd.setBacklightPin(3, POSITIVE);
  lcd.setBacklight(HIGH);
#endif

  mode->init();
}

void updateScreenAndLeds() {
  const char* caption = mode->getCaption();
  const char* left = mode->getLabel(BUTTON_RESET);
  const char* right = mode->getLabel(BUTTON_START);
  if (strcmp(lastCaption, caption) != 0 || strcmp(lastLeft, left) != 0 ||
      strcmp(lastRight, right) != 0) {
    lcd.clear();
    lcd.print(mode->getCaption());
    lcd.setCursor(/*row=*/0, /*col=*/1);
    // Print button functions on the lower line of the screen.
    lcd.print(left);
    const int spaces = kScreenWidth - strlen(left) - strlen(right);
    for (int i = 0; i < spaces; ++i) {
      lcd.print(' ');
    }
    lcd.print(right);
    strcpy(lastLeft, left);
    strcpy(lastRight, right);
    strcpy(lastCaption, caption);
  }
  for (int i = BUTTON_PLAYER_1; i <= LAST_PLAYER_BUTTON; i++) {
    digitalWrite(kLedPins[i], mode->getLedState(i) ? HIGH : LOW);
  }
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
      buttons[i] = (digitalRead(kButtonPins[i]) == LOW);
    }
  }
  if (digitalRead(kButtonPins[BUTTON_RESET]) == LOW &&
      digitalRead(kButtonPins[BUTTON_START]) == LOW) {
    if (resetStarted && millis() - resetStartTime > kResetDelay) {
      mode = selectMode;
      mode->init();
      return;
    }
    if (!resetStarted) {
      resetStarted = true;
      resetStartTime = millis();
    }
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

void playResetSound() {
  tone(kSpeakerPin, NOTE_D4, 300/*ms*/);
}

void playPlayerSound() {
  tone(kSpeakerPin, NOTE_G4, 300/*ms*/);
}

void playCorrectSound() {
  tone(kSpeakerPin, NOTE_F4, 300/*ms*/);
}

void playFalseStartSound() {
  tone(kSpeakerPin, NOTE_F7, 1000/*ms*/);
}

void playTimeSound() {
  tone(kSpeakerPin, NOTE_F2, 1000/*ms*/);
}

void setMode(Mode *newMode) {
  mode = newMode;
  mode->init();
}
