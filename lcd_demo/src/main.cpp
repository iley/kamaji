#include <Arduino.h>
#include <Wire.h>
#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x3f,2,1,0,4,5,6,7);

void setup() {
  lcd.begin(/*cols=*/16, /*rows=*/2);
  lcd.setBacklightPin(3, POSITIVE);
  lcd.setBacklight(HIGH);
}

void loop() {
  lcd.clear();
  lcd.home();
  lcd.print("Hello world!");
  for (int i = 0; i < 256; ++i) {
    lcd.setCursor(/*col=*/0, /*row=*/1);
    lcd.print(i);
    lcd.setCursor(/*col=*/4, /*row=*/1);
    lcd.print((char)i);
    delay(500);
  }
}
