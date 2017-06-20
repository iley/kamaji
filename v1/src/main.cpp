#include <Arduino.h>
#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#include "pitches.h"  // Taken from https://www.arduino.cc/en/Tutorial/ToneMelody

#define ARRAY_SIZE(a) (sizeof(a)/sizeof(a[0]))

LiquidCrystal_I2C lcd(0x3f,2,1,0,4,5,6,7);

const uint8_t kCharBitmap[][8] = {
   { 0xc, 0x12, 0x12, 0xc, 0, 0, 0, 0 },
   { 0x6, 0x9, 0x9, 0x6, 0, 0, 0, 0 },
   { 0x0, 0x6, 0x9, 0x9, 0x6, 0, 0, 0x0 },
   { 0x0, 0xc, 0x12, 0x12, 0xc, 0, 0, 0x0 },
   { 0x0, 0x0, 0xc, 0x12, 0x12, 0xc, 0, 0x0 },
   { 0x0, 0x0, 0x6, 0x9, 0x9, 0x6, 0, 0x0 },
   { 0x0, 0x0, 0x0, 0x6, 0x9, 0x9, 0x6, 0x0 },
   { 0x0, 0x0, 0x0, 0xc, 0x12, 0x12, 0xc, 0x0 },
};

const int kButtonCount = 4;
const int kButtonPins[] = {8, 6, 4, 2};
const int kLedPins[] = {9, 7, 5, 3};
const int kResetButtonPin = 15;
const int kStartButtonPin = 16;
const int kSpeakerPin = 11;

bool gotWinner = false;
unsigned long time = 0;
bool started = false;

void setup() {
  for (const int buttonPin : kButtonPins) {
    pinMode(buttonPin, INPUT_PULLUP);
  }
  for (const int ledPin : kLedPins) {
    pinMode(ledPin, OUTPUT);
  }
  pinMode(kResetButtonPin, INPUT_PULLUP);
  pinMode(kStartButtonPin, INPUT_PULLUP);
  pinMode(kSpeakerPin, OUTPUT);

  lcd.begin(/*cols=*/16, /*rows=*/2);
  for (unsigned int i = 0; i < ARRAY_SIZE(kCharBitmap); ++i) {
    lcd.createChar(i, (uint8_t*)kCharBitmap[i]);
  }
  lcd.setBacklightPin(3, POSITIVE);
  lcd.setBacklight(HIGH);
}

void loop() {
  int resetButtonState = digitalRead(kResetButtonPin);
  int startButtonState = digitalRead(kStartButtonPin);
  if (resetButtonState == LOW) {
    gotWinner = false;
    started = false;
    lcd.clear();
    for (int ledPin : kLedPins) {
      digitalWrite(ledPin, LOW);
      tone(kSpeakerPin, NOTE_D4);
      delay(100/*ms*/);
      noTone(kSpeakerPin);
    }
    return;
  }
  if (!gotWinner) {
    if (startButtonState == LOW) {
      started = true;
      time = millis();
    }
    if (started) {
      lcd.home();
      lcd.print((millis()-time)/1000);
    }
    for (int i = 0; i < kButtonCount; ++i) {
      int buttonState = digitalRead(kButtonPins[i]);
      if (buttonState == LOW) {
        digitalWrite(kLedPins[i], HIGH);
        tone(kSpeakerPin, NOTE_G4);
        delay(100/*ms*/);
        noTone(kSpeakerPin);
        gotWinner = true;
        lcd.clear();
        lcd.home();
        lcd.print("winner: ");
        lcd.print(i+1);
        break;
      }
    }
  }
}
