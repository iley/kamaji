#include <Arduino.h>
#include <SPI.h>
#include <Wire.h>
#include <U8g2lib.h>

#include "bitmap.h"

U8G2_ST7920_128X64_1_HW_SPI u8g2(U8G2_R0, A5/*CS, pin 41*/, A4/*RESET, pin 40*/);

const uint8_t bitmap[] PROGMEM = { BITMAP_DATA };

void setup(void) {
  u8g2.begin();
  u8g2.enableUTF8Print();
  u8g2.setDrawColor(1);
  u8g2.setBitmapMode(1);
}

void loop(void) {
  u8g2.setFont(u8g2_font_haxrcorp4089_t_cyrillic);

  u8g2.firstPage();
  do {
    u8g2.setCursor(0, 8);
    u8g2.print(F("Съешь еще этих мягких "));
    u8g2.setCursor(0, 16);
    u8g2.print(F("французских булок,"));
    u8g2.setCursor(0, 24);
    u8g2.print(F("да выпей же чаю."));
  } while (u8g2.nextPage());
  delay(5000);

  u8g2.clearDisplay();

  u8g2.firstPage();
  do {
    u8g2.drawXBMP(0, 0, BITMAP_WIDTH, BITMAP_HEIGHT, bitmap);
  } while (u8g2.nextPage());
  delay(5000);
}
