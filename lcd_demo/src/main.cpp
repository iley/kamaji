#include <Arduino.h>
#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x38);

void setup() {
  lcd.begin(/*cols=*/16, /*rows=*/2);
  lcd.home();
  lcd.print("Hello world!");
}

void loop() {
}
