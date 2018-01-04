#if USE_GRAPHIC_LCD
#include "graphic_lcd.h"

void GraphicLcd::begin(uint8_t cols, uint8_t rows) {
  cols_ = cols < MAX_COLS ? cols : MAX_COLS;
  rows_ = rows < MAX_ROWS ? rows : MAX_ROWS;
  u8g2_.begin();
  clear();
}

void GraphicLcd::clear() {
  setCursor(0, 0);
  clearBuffer();
  flush();
}

void GraphicLcd::setCursor(uint8_t col, uint8_t row) {
  col_ = col % cols_;
  row_ = row % rows_;
}

void GraphicLcd::flush() {
  u8g2_.firstPage();
  do {
    u8g2_.setFont(u8g2_font_haxrcorp4089_t_cyrillic);
    for (int i = 0; i < rows_; ++i) {
      u8g2_.drawStr(0, (i+1) * CHAR_HEIGHT, buffer_[i]);
    }
  } while (u8g2_.nextPage());
}

size_t GraphicLcd::write(uint8_t ch) {
  buffer_[row_][col_] = ch;
  col_ = (col_ + 1) % cols_;
  return 1;
}

void GraphicLcd::clearBuffer() {
  for (int i = 0; i < MAX_ROWS; ++i) {
    for (int j = 0; j < MAX_COLS; ++j) {
      buffer_[i][j] = ' ';
    }
    buffer_[i][MAX_COLS] = 0;
  }
}


#endif  // USE_GRAPHIC_LCD
