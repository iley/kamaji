#include <Arduino.h>

#include "lcd.h"
#include "xpins.h"

const uint32_t kDebounceMs = 100;
const uint32_t kFlashMs = 1000;
const uint16_t kToneHz = 1000;
const uint32_t kToneMs = 300;

DECLARE_KBUTTON_PINS();
DECLARE_KLED_PINS();
DECLARE_KSPEAKER_PIN();
DECLARE_LCD();

#if USE_LAMP
DECLARE_KLAMP_PIN();
#endif

bool buttons[BUTTON_COUNT] = { false };
bool buttonsBefore[BUTTON_COUNT] = { false };
uint32_t lastPressedMs[BUTTON_COUNT] = { 0 };
uint32_t flashStartMs[PLAYER_COUNT] = { 0 };

void setup() {
  for (const int buttonPin : kButtonPins) {
    xPinMode(buttonPin, INPUT_PULLUP);
  }
  for (const int ledPin : kLedPins) {
    xPinMode(ledPin, OUTPUT);
    xDigitalWrite(ledPin, LOW);
  }
  xPinMode(kSpeakerPin, OUTPUT);

#if USE_LAMP
  xPinMode(kLampPin, OUTPUT);
#endif

  lcd.begin(DISPLAY_COLS, DISPLAY_ROWS);
  ENABLE_LCD_BACKLIGHT();

  lcd.print("Hello!");
  tone(kSpeakerPin, kToneHz, kToneMs);
}

void loop() {
  uint32_t now = millis();
  for (int i = 0; i < BUTTON_COUNT; ++i) {
    buttonsBefore[i] = buttons[i];
    if (now - lastPressedMs[i] > kDebounceMs) {
      if (xDigitalRead(kButtonPins[i]) == LOW) {
        buttons[i] = true;
        lastPressedMs[i] = now;
      } else {
        buttons[i] = false;
      }
    }

    if (buttons[i] && !buttonsBefore[i]) {
      lcd.clear();
      lcd.print("Pressed ");
      lcd.print(i);
      tone(kSpeakerPin, kToneHz, kToneMs);

      if (FIRST_PLAYER_BUTTON <= i && i <= LAST_PLAYER_BUTTON) {
        int playerNumber = i - FIRST_PLAYER_BUTTON;
        int ledPin = kLedPins[playerNumber];
        digitalWrite(ledPin, HIGH);
        flashStartMs[playerNumber] = now;
      }
    }
  }

  for (int i = 0; i < PLAYER_COUNT; ++i) {
    if (flashStartMs[i] != 0 && now - flashStartMs[i] > kFlashMs) {
      digitalWrite(kLedPins[i], LOW);
    }
  }
}
