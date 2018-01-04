#ifndef KAMAJI_GRAPHIC_LCD_H
#define KAMAJI_GRAPHIC_LCD_H

#if USE_GRAPHIC_LCD

#include <SPI.h>
#include <Print.h>
#include <U8g2lib.h>

#define GRAPHIC_LCD_USE_SOFTWARE_SPI 1

class GraphicLcd : public Print {
  public:
    GraphicLcd(uint8_t chip_select_pin, uint8_t reset_pin)
#if GRAPHIC_LCD_USE_SOFTWARE_SPI
      : u8g2_(U8G2_R0, 15, 16, chip_select_pin, reset_pin) {}
#else
      : u8g2_(U8G2_R0, chip_select_pin, reset_pin) {}
#endif
    void begin(uint8_t cols, uint8_t rows);
    void clear();
    void setCursor(uint8_t col, uint8_t row);
    void flush();
    size_t write(uint8_t ch) override;

  private:
    enum {
      MAX_COLS = 16,
      MAX_ROWS = 8,
      CHAR_WIDTH = 8,
      CHAR_HEIGHT = 8,
    };

    void clearBuffer();

#if GRAPHIC_LCD_USE_SOFTWARE_SPI
    U8G2_ST7920_128X64_1_SW_SPI u8g2_;
#else
    U8G2_ST7920_128X64_1_HW_SPI u8g2_;
#endif
    char buffer_[MAX_ROWS][MAX_COLS+1];
    uint8_t row_ = 0;
    uint8_t col_ = 0;
    uint8_t rows_ = MAX_ROWS;
    uint8_t cols_ = MAX_COLS;
};

#endif  // USE_GRAPHIC_LCD
#endif  // KAMAJI_GRAPHIC_LCD_H
