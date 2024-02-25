#ifndef KAMAJI_GRAPHIC_LCD_H
#define KAMAJI_GRAPHIC_LCD_H

#if USE_GRAPHIC_LCD

// TODO: Try using u8x8 instead of u8g2.
// TODO: UTF-8 support.

#include <Print.h>
#include <SPI.h>

#define U8G2_WITHOUT_FONT_ROTATION
#define U8G2_WITHOUT_INTERSECTION
#define U8G2_WITHOUT_INTERSECTION

#include <U8g2lib.h>

// A wrapper for the ST7920-based 128x64 graphic screen.
// The interface is modelled after the standard LiquidCrystal class.
// ATTENTION: You need to call flush() to update the screen after print()-ing.
template <uint8_t Rows, uint8_t Cols, uint8_t CharHeight, uint8_t CharWidth>
class GraphicLcd : public Print {
public:
  GraphicLcd(uint8_t chip_select_pin, uint8_t reset_pin)
      : u8g2_(U8G2_R0, chip_select_pin, reset_pin) {}

  void begin() {
    u8g2_.begin();
    u8g2_.enableUTF8Print();
    clear();
  }

  void clear() {
    setCursor(0, 0);
    clearBuffer();
    flush();
  }

  void setCursor(uint8_t col, uint8_t row) {
    col_ = col % Cols;
    row_ = row % Rows;
  }

  void flush() {
    u8g2_.firstPage();
    do {
      u8g2_.setFont(GRAPHIC_LCD_FONT);
      for (int i = 0; i < Rows; ++i) {
        u8g2_.drawUTF8(0, (i + 1) * CharHeight, buffer_[i]);
      }
    } while (u8g2_.nextPage());
  }

  size_t write(uint8_t ch) override {
    buffer_[row_][col_] = ch;
    col_++;
    return 1;
  }

private:
  void clearBuffer() {
    for (int i = 0; i < Rows; ++i) {
      for (int j = 0; j < 2 * Cols; ++j) {
        buffer_[i][j] = ' ';
      }
      buffer_[i][2 * Cols] = 0;
    }
  }

  U8G2_ST7920_128X64_2_HW_SPI u8g2_;
  char buffer_[Rows][2 * Cols + 1];
  uint8_t row_ = 0;
  uint8_t col_ = 0;
};

#endif // USE_GRAPHIC_LCD
#endif // KAMAJI_GRAPHIC_LCD_H
