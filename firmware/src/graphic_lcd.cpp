#if USE_GRAPHIC_LCD
#include "graphic_lcd.h"

void GraphicLcd::begin(uint8_t cols, uint8_t rows) {
  // Ignore cols and rows for now.
  u8g2.begin();
  u8g2.enableUTF8Print();
  u8g2.setFont(u8g2_font_pressstart2p_8r);
}

void GraphicLcd::clear() {
  u8g2.clearBuffer();
  u8g2.sendBuffer();
}

void GraphicLcd::setCursor(uint8_t col, uint8_t row) {
  u8g2.setCursor(kGraphicLcdCharHeight * col, kGraphicLcdCharWidth * row);
}

size_t GraphicLcd::write(uint8_t ch) {
  size_t result = u8g2.write(ch);
  u8g2.sendBuffer();
  return result;
}

#endif  // USE_GRAPHIC_LCD
