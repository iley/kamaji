#include <Arduino.h>
#include <Wire.h>
#include <LiquidCrystal_I2C.h>

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

void setup() {
  lcd.begin(/*cols=*/16, /*rows=*/2);
  for (unsigned int i = 0; i < ARRAY_SIZE(kCharBitmap); ++i) {
    lcd.createChar(i, (uint8_t*)kCharBitmap[i]);
  }
  lcd.setBacklightPin(3, POSITIVE);
  lcd.setBacklight(HIGH);
}

void loop() {
  lcd.clear();
  lcd.home();
  lcd.print("Hello world!");

  for (int i = 0; i < 256; i += 2) {
    lcd.setCursor(/*col=*/0, /*row=*/1);
    lcd.print(i);
    lcd.setCursor(/*col=*/4, /*row=*/1);
    lcd.print((char)i);
    if (i + 1 < 256) {
      lcd.setCursor(/*col=*/8, /*row=*/1);
      lcd.print(i + 1);
      lcd.setCursor(/*col=*/12, /*row=*/1);
      lcd.print((char)(i + 1));
    }
    delay(500);
  }
}
