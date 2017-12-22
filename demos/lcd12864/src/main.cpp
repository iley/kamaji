#include <Arduino.h>
#include <SPI.h>
#include <Wire.h>
#include <U8g2lib.h>

#include "bitmap.h"

U8G2_ST7920_128X64_1_HW_SPI u8g2(U8G2_R0, 41/*CS*/, 40/*RESET*/);

const uint8_t bitmap[] PROGMEM = { BITMAP_DATA };

void setup(void) {
  u8g2.begin();
  u8g2.enableUTF8Print();
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
  } while ( u8g2.nextPage() );
  delay(1000);
}
