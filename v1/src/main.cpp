#include <string.h>

#include <Arduino.h>
#include <Wire.h>
#include <LiquidCrystal_I2C.h>

#include "pitches.h"

// Forward declarations.
void jeopardySetup();
void jeopardyLoop();
void clearScreen();
int fastestPlayer();

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
  8, 6, 4, 2, // players
  15, 16, 17, // control
};

// Pin numbers for each player's LED, indexed by the buttons enum.
// E.g. kLedPins[BUTTON_PLAYER_1] is the first player's LED.
const int kLedPins[] = {9, 7, 5, 3};

const int kSpeakerPin = 11;

const int kScreenWidth = 16;

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

// Button labels are printed on the lower line of the screen.
const char* leftButtonLabel = "Start";
const char* rightButtonLabel = "Reset";

void setup() {
  // Analog input 0 is not connected, use noise from it for pseudo-random
  // generator seeding.
  randomSeed(analogRead(0));

  // Setup input and output pins.
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
  leftButtonLabel = "Start";
  rightButtonLabel = "Reset";
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

  const int winner = fastestPlayer();
  if (winner != -1) {
    digitalWrite(kLedPins[winner], HIGH);
    tone(kSpeakerPin, NOTE_G4, 100/*ms*/);
    gotWinner = true;
    leftButtonLabel = "Continue";
    rightButtonLabel = "Reset";
    clearScreen();
    lcd.print("Player ");
    lcd.print(winner + 1);
  }
}

void clearScreen() {
  lcd.clear();
  lcd.setCursor(/*row=*/0, /*col=*/1);
  // Print button functions on the lower line of the screen.
  lcd.print(leftButtonLabel);
  const int spaces = kScreenWidth - strlen(leftButtonLabel) -
      strlen(rightButtonLabel);
  for (int i = 0; i < spaces; ++i) {
    lcd.print(' ');
  }
  lcd.print(rightButtonLabel);
  lcd.home();
}

// Returns index of the player who pressed their button first or -1 for nobody.
int fastestPlayer() {
  // First, count how many players have pressed a button.
  int buttonsPressed = 0;
  for (int i = FIRST_PLAYER_BUTTON; i <= LAST_PLAYER_BUTTON; ++i) {
    if (buttons[i] && !buttonsBefore[i]) {
      ++buttonsPressed;
    }
  }
  if (buttonsPressed == 0) {
    return -1;
  }
  int winnerIndex = random(buttonsPressed);
  int player = FIRST_PLAYER_BUTTON;
  for (int i = 0; i < winnerIndex + 1; ++i) {
    while (!buttons[player] || buttonsBefore[player]) {
      ++player;
    }
  }
  return player;
}
