#include <Arduino.h>
#include <Wire.h>
#include <LiquidCrystal_SR.h>

LiquidCrystal_SR lcd(/*dataPin=*/2, /*clockPin=*/1, /*enablePin=*/3);

void setup() {
  lcd.begin(/*width=*/16, /*height=*/2);
  lcd.print("Hello world!");
}

void loop() {}
