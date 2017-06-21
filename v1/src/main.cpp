#include <Arduino.h>
#include <Wire.h>
#include <LiquidCrystal_I2C.h>

#include "pitches.h"

// Forward declarations.
void jeopardySetup();
void jeopardyLoop();

// Supported game modes.
enum {
  MODE_JEOPARDY,
  MODE_BRAINRING,  // not implemented
  MODE_HAMSA,  // not implemented
};

enum {
  BUTTON_PLAYER_1,
  BUTTON_PLAYER_2,
  BUTTON_PLAYER_3,
  BUTTON_PLAYER_4,

  BUTTON_START,
  BUTTON_RESET,

  BUTTON_COUNT = BUTTON_RESET + 1,

  FIRST_PLAYER_BUTTON = BUTTON_PLAYER_1,
  LAST_PLAYER_BUTTON = BUTTON_PLAYER_4,
};

// Pin numbers for each button, indexed by the enum values above.
const int kButtonPins[] = {
  2, 4, 6, 8, // players
  16,  // start
  15,  // reset
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
  for (int i = FIRST_PLAYER_BUTTON; i < BUTTON_COUNT; ++i) {
    // Ignore the button state changes if it was pressed less than kDebounceMs
    // milliseconds ago to account for contact bouncing.
    if (now - lastPressedMs[i] < kDebounceMs) {
      continue;
    }
    // The buttons pins are active LOW.
    buttons[i] = (digitalRead(kButtonPins[i]) == LOW);
  }
  // TODO: Dispatch based on current mode.
  jeopardyLoop();
}

void jeopardySetup() {
  lcd.clear();
  lcd.print("Mode: Jeopardy");
  Serial.println("start. mode: jeopardy");
}

void jeopardyLoop() {
  static bool gotWinner = false;
  static bool started = false;
  static unsigned long time = 0;

  if (buttons[BUTTON_RESET]) {
    Serial.println("reset");
    gotWinner = false;
    started = false;
    lcd.clear();
    for (int ledPin : kLedPins) {
      digitalWrite(ledPin, LOW);
      tone(kSpeakerPin, NOTE_D4);
      // TODO: Get rid of the delay by introducing a rudimentary scheduling
      // mechanism. Put a timestamp and a callback into a global array and run
      // the callback from the main loop when millis() > timestamp.
      delay(100/*ms*/);
      noTone(kSpeakerPin);
    }
    return;
  }

  if (gotWinner) {
    return;
  }

  if (buttons[BUTTON_START]) {
    Serial.println("start");
    started = true;
    time = millis();
  }

  if (started) {
    lcd.home();
    lcd.print((millis() - time) / 1000);

    for (int i = FIRST_PLAYER_BUTTON; i <= LAST_PLAYER_BUTTON; ++i) {
      if (buttons[i]) {
        Serial.print("player ");
        Serial.println(i + 1);

        digitalWrite(kLedPins[i], HIGH);
        tone(kSpeakerPin, NOTE_G4);
        delay(100/*ms*/);  // TODO: Get rid of the delay.
        noTone(kSpeakerPin);
        gotWinner = true;
        lcd.clear();
        lcd.home();
        lcd.print("Player ");
        lcd.print(i + 1);
        break;
      }
    }
  }
}
