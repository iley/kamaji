#include <Arduino.h>
#include <Wire.h>
#include <LiquidCrystal_I2C.h>

#define ARRAY_SIZE(a) (sizeof(a)/sizeof(a[0]))

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
  lcd.setCursor(0, 1);
  for (int i = 0; i < 16; ++i) {
    lcd.print('.');
    delay(500/*ms*/);
  }
}
