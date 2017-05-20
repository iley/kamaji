#include <Arduino.h>
#include <Wire.h>
#include <LiquidCrystal_I2C.h>

#define ARRAY_SIZE(a) (sizeof(a)/sizeof(a[0]))

LiquidCrystal_I2C lcd(0x3f,2,1,0,4,5,6,7);

const char kProgressChars[] = {'/', '-', '\\', '|'};

void setup() {
  lcd.begin(/*cols=*/16, /*rows=*/2);

  lcd.setBacklightPin(3, POSITIVE);
  lcd.setBacklight(HIGH);

  lcd.home();
  lcd.print("Hello world!");
  delay(1000/*ms*/);
}

void loop() {
  int i = 0;
  while (true) {
    lcd.setCursor(0, 1);
    lcd.print(kProgressChars[i]);
    i = (i + 1) % ARRAY_SIZE(kProgressChars);
    delay(1000/*ms*/);
  }
}
