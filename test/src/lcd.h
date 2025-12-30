#ifndef KAMAJI_LCD_H
#define KAMAJI_LCD_H

#if USE_I2C_LCD
// An I2C-connected 16x2 character LCD screen.
#include <Wire.h>
#include <LiquidCrystal_I2C.h>

const int kDisplayCols = 16;
const int kDisplayRows = 2;

#define DECLARE_LCD() \
  LiquidCrystal_I2C lcd(0x3f, 2, 1, 0, 4, 5, 6, 7);

inline void initLcd(LiquidCrystal_I2C* lcd) {
  lcd->begin(kDisplayCols, kDisplayRows);
  lcd->setBacklightPin(3, POSITIVE);
  lcd->setBacklight(HIGH);
}

inline void flushLcd(LiquidCrystal_I2C* lcd) { /* NOOP */ }

#elif USE_GRAPHIC_LCD
// A ST7920-based 128x64 graphic screen.
#define GRAPHIC_LCD_FONT u8g2_font_6x13_t_cyrillic 
#include "graphic_lcd.h"

const int kDisplayCols = 21;
const int kDisplayRows = 5;
const int kFontHeight = 12;
const int kFontWidth = 6;

using Lcd = GraphicLcd<kDisplayRows, kDisplayCols, kFontHeight, kFontWidth>;

#define DECLARE_LCD() Lcd lcd(A5, A4)

inline void initLcd(Lcd* lcd) {
  lcd->begin();
}

inline void flushLcd(Lcd* lcd) {
  lcd->flush();
}

#else
// 16x2 character LCD with parallel interface.
#include <LiquidCrystal.h>

const int kDisplayCols = 16;
const int kDisplayRows = 2;

#define DECLARE_LCD() \
  LiquidCrystal lcd(/*rs=*/14, /*en=*/15, /*d0=*/16, /*d1=*/17, /*d2=*/18, \
                    /*d3=*/19)

inline void initLcd(LiquidCrystal* lcd) {
  lcd->begin(kDisplayCols, kDisplayRows);
}

inline void flushLcd(LiquidCrystal* lcd) { /* NOOP */ }

#endif

#endif  // KAMAJI_LCD_H
