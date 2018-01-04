#ifndef KAMAJI_GRAPHIC_LCD_H
#define KAMAJI_GRAPHIC_LCD_H

#include <Print.h>
#include <SPI.h>
#include <U8g2lib.h>

constexpr uint8_t kGraphicLcdCharWidth = 8;
constexpr uint8_t kGraphicLcdCharHeight = 8;

class GraphicLcd : public Print {
  public:
    GraphicLcd(uint8_t chip_select_pin, uint8_t reset_pin)
      : u8g2(U8G2_R0, chip_select_pin, reset_pin) {}
    void begin(uint8_t cols, uint8_t rows);
    void clear();
    void setCursor(uint8_t col, uint8_t row);
    size_t write(uint8_t ch) override;

  private:
    U8G2_ST7920_128X64_F_HW_SPI u8g2;
};

#endif  // KAMAJI_GRAPHIC_LCD_H
