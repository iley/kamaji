#if USE_GRAPHIC_LCD
#include "graphic_lcd.h"

void GraphicLcd::begin(uint8_t cols, uint8_t rows) {
  // Ignore cols and rows for now.
  u8g2.begin();
  u8g2.enableUTF8Print();
  u8g2.setFont(u8g2_font_haxrcorp4089_t_cyrillic);
  clear();
}

void GraphicLcd::clear() {
  u8g2.clearBuffer();
  setCursor(0, 0);
}

void GraphicLcd::setCursor(uint8_t col, uint8_t row) {
  u8g2.setCursor(kGraphicLcdCharWidth * row, kGraphicLcdCharHeight * (col+1));
}

void GraphicLcd::flush() {
  u8g2.sendBuffer();
}


#endif  // USE_GRAPHIC_LCD
