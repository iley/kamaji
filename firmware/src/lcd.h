#ifndef KAMAJI_LCD_H
#define KAMAJI_LCD_H

#if USE_I2C_LCD
#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#else
#include <LiquidCrystal.h>
#endif  // USE_I2C_LCD

#if USE_I2C_LCD

// An I2C-connected 16x2 character LCD screen.
#define DECLARE_LCD() \
  LiquidCrystal_I2C lcd(0x3f, 2, 1, 0, 4, 5, 6, 7);
#define ENABLE_LCD_BACKLIGHT() \
  lcd.setBacklightPin(3, POSITIVE); \
  lcd.setBacklight(HIGH);

#else

#define DECLARE_LCD() \
  LiquidCrystal lcd(/*rs=*/14, /*en=*/15, /*d0=*/16, /*d1=*/17, /*d2=*/18, \
                    /*d3=*/19);
#define ENABLE_LCD_BACKLIGHT()

#endif

#endif  // KAMAJI_LCD_H
