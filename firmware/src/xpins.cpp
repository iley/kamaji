#include "xpins.h"

int xDigitalRead(uint8_t pin) {
  if (pin == kPinPB6) {
    return (PINB & _BV(PINB6)) ? HIGH : LOW;
  } else if (pin == kPinPB7) {
    return (PINB & _BV(PINB7)) ? HIGH : LOW;
  } else {
    return digitalRead(pin);
  }
}

void xDigitalWrite(uint8_t pin, uint8_t val) {
  uint8_t mask;
  if (pin == kPinPB6) {
    mask = _BV(PORTB6);
  } else if (pin == kPinPB7) {
    mask = _BV(PORTB7);
  } else {
    digitalWrite(pin, val);
    return;
  }
  if (val == HIGH) {
    PORTB |= mask;
  } else {
    PORTB &= ~mask;
  }
}

void xPinMode(uint8_t pin, uint8_t mode) {
  uint8_t mask;
  if (pin == kPinPB6) {
    mask = _BV(PORTB6);
  } else if (pin == kPinPB7) {
    mask = _BV(PORTB7);
  } else {
    pinMode(pin, mode);
    return;
  }
  if (mode == INPUT) {
    DDRB &= ~mask;
    PORTB &= ~mask;
  } else if (mode == INPUT_PULLUP) {
    DDRB &= ~mask;
    PORTB |= mask;
  } else {
    DDRB |= mask;
  }
}
