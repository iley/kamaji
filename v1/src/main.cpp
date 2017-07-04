#include <Arduino.h>
#include <Wire.h>
#include <LiquidCrystal_I2C.h>

#include "pitches.h"

// Forward declarations.
void jeopardySetup();
void jeopardyLoop();
void clearScreen();

// Supported game modes.
enum {
  MODE_JEOPARDY,
  MODE_BRAINRING,  // not implemented
  MODE_HAMSA,  // not implemented
};

// All available buttons.
enum {
  BUTTON_PLAYER_1,
  BUTTON_PLAYER_2,
  BUTTON_PLAYER_3,
  BUTTON_PLAYER_4,

  BUTTON_CONTROL_1,
  BUTTON_CONTROL_2,
  BUTTON_CONTROL_3,

  BUTTON_COUNT = BUTTON_CONTROL_3 + 1,

  BUTTON_START = BUTTON_CONTROL_1,
  BUTTON_RESET = BUTTON_CONTROL_3,

  FIRST_PLAYER_BUTTON = BUTTON_PLAYER_1,
  LAST_PLAYER_BUTTON = BUTTON_PLAYER_4,
};

// Pin numbers for each button, indexed by the enum values above.
const int kButtonPins[] = {
  2, 4, 6, 8, // players
  15, 16, 17, // control
};

// Pin numbers for each player's LED, indexed by the buttons enum.
// E.g. kLedPins[BUTTON_PLAYER_1] is the first player's LED.
const int kLedPins[] = {3, 5, 7, 9};

const int kSpeakerPin = 11;

// Button debounce delay in milliseconds.
const unsigned long kDebounceMs = 100;

// GLOBAL STATE

// An I2C-connected 16x2 character LCD screen.
LiquidCrystal_I2C lcd(0x3f, 2, 1, 0, 4, 5, 6, 7);

// Selected game mode.
int mode = MODE_JEOPARDY;

// Button state, true means pressed.
bool buttons[BUTTON_COUNT] = { false };
// Button state before the latest update.
bool buttonsBefore[BUTTON_COUNT] = { false };

// For each button, when it was last time pressed in milliseconds since device
// start.
unsigned long lastPressedMs[BUTTON_COUNT] = {0};


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
  lcd.setBacklightPin(3, POSITIVE);
  lcd.setBacklight(HIGH);

  // Serial is for debugging.
  Serial.begin(9600);

  // TODO: Select mode.
  jeopardySetup();
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
  // TODO: Dispatch based on current mode.
  jeopardyLoop();
}

void jeopardySetup() {
  clearScreen();
  lcd.print("Mode: Jeopardy");
}

void jeopardyLoop() {
  static bool gotWinner = false;
  static bool started = false;
  static unsigned long time = 0;

  if (buttons[BUTTON_RESET] && !buttonsBefore[BUTTON_RESET]) {
    gotWinner = false;
    started = false;
    jeopardySetup();
    for (int ledPin : kLedPins) {
      digitalWrite(ledPin, LOW);
      tone(kSpeakerPin, NOTE_D4, 100/*ms*/);
    }
    return;
  }

  if (gotWinner) {
    return;
  }

  if (buttons[BUTTON_START] && !buttonsBefore[BUTTON_START]) {
    clearScreen();
    started = true;
    time = millis();
  }

  if (started) {
    lcd.home();
    lcd.print((millis() - time) / 1000);
  }

  for (int i = FIRST_PLAYER_BUTTON; i <= LAST_PLAYER_BUTTON; ++i) {
    if (buttons[i]) {
      digitalWrite(kLedPins[i], HIGH);
      tone(kSpeakerPin, NOTE_G4, 100/*ms*/);
      gotWinner = true;
      clearScreen();
      lcd.print("Player ");
      lcd.print(i + 1);
      break;
    }
  }
}

void clearScreen() {
  lcd.clear();
  lcd.setCursor(/*row=*/0, /*col=*/1);
  // Print button functions on the lower line of the screen.
  lcd.print("Start      Reset");
  lcd.home();
}
