#ifndef KAMAJI_GRAPHIC_LCD_H
#define KAMAJI_GRAPHIC_LCD_H

#if USE_GRAPHIC_LCD

#include <SPI.h>
#include <U8g2lib.h>

constexpr uint8_t kGraphicLcdCharWidth = 8;
constexpr uint8_t kGraphicLcdCharHeight = 8;

class GraphicLcd {
  public:
    GraphicLcd(uint8_t chip_select_pin, uint8_t reset_pin)
      : u8g2(U8G2_R0, chip_select_pin, reset_pin) {}
    void begin(uint8_t cols, uint8_t rows);
    void clear();
    void setCursor(uint8_t col, uint8_t row);
    void flush();
    template<typename T> void print(T value) { u8g2.print(value); }

    U8G2_ST7920_128X64_F_HW_SPI u8g2;
  private:
};

#endif  // USE_GRAPHIC_LCD
#endif  // KAMAJI_GRAPHIC_LCD_H
