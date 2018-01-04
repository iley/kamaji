#ifndef KAMAJI_LCD_H
#define KAMAJI_LCD_H

#if USE_I2C_LCD
#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#elif USE_GRAPHIC_LCD
#include "graphic_lcd.h"
#else
#include <LiquidCrystal.h>
#endif  // USE_I2C_LCD

const int DISPLAY_COLS = 16;
const int DISPLAY_ROWS = 4;

#if USE_I2C_LCD

// An I2C-connected 16x2 character LCD screen.
#define DECLARE_LCD() \
  LiquidCrystal_I2C lcd(0x3f, 2, 1, 0, 4, 5, 6, 7);
#define LCD_ENABLE_BACKLIGHT() \
  lcd.setBacklightPin(3, POSITIVE); \
  lcd.setBacklight(HIGH);
#define LCD_FLUSH()

#elif USE_GRAPHIC_LCD

#define DECLARE_LCD() \
GraphicLcd lcd(A5, A4)
#define LCD_ENABLE_BACKLIGHT()
#define LCD_FLUSH() (lcd.flush())

#else

#define DECLARE_LCD() \
  LiquidCrystal lcd(/*rs=*/14, /*en=*/15, /*d0=*/16, /*d1=*/17, /*d2=*/18, \
                    /*d3=*/19);
#define LCD_ENABLE_BACKLIGHT()
#define LCD_FLUSH()

#endif

#endif  // KAMAJI_LCD_H
