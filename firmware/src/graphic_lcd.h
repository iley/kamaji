#ifndef KAMAJI_GRAPHIC_LCD_H
#define KAMAJI_GRAPHIC_LCD_H

#if USE_GRAPHIC_LCD

#include <SPI.h>
#include <Print.h>
#include <U8g2lib.h>

// A wrapper for the ST7920-based 128x64 graphic screen.
// The interface is modelled after the standard LiquidCrystal class.
// ATTENTION: You need to call flush() to update the screen after print()-ing.
template<uint8_t Rows, uint8_t Cols, uint8_t CharHeight=8, uint8_t CharWidth=4>
class GraphicLcd : public Print {
  public:
    GraphicLcd(uint8_t chip_select_pin, uint8_t reset_pin)
      : u8g2_(U8G2_R0, chip_select_pin, reset_pin) {}

    void begin(uint8_t cols, uint8_t rows) {
      u8g2_.begin();
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
        u8g2_.setFont(u8g2_font_haxrcorp4089_t_cyrillic);
        for (int i = 0; i < Rows; ++i) {
          u8g2_.drawStr(0, (i+1) * CharHeight, buffer_[i]);
        }
      } while (u8g2_.nextPage());
    }

    size_t write(uint8_t ch) override {
      buffer_[row_][col_] = ch;
      col_ = (col_ + 1) % Cols;
      return 1;
    }

  private:
    void clearBuffer() {
      for (int i = 0; i < Rows; ++i) {
        for (int j = 0; j < Cols; ++j) {
          buffer_[i][j] = ' ';
        }
        buffer_[i][Cols] = 0;
      }
    }

    U8G2_ST7920_128X64_1_HW_SPI u8g2_;
    char buffer_[Rows][Cols+1];
    uint8_t row_ = 0;
    uint8_t col_ = 0;
};

#endif  // USE_GRAPHIC_LCD
#endif  // KAMAJI_GRAPHIC_LCD_H
