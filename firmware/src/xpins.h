#ifndef KAMAJI_XPINS_H
#define KAMAJI_XPINS_H

#include <Arduino.h>

const int kPinPB6 = 50;
const int kPinPB7 = 51;

// Wrappers for Arduino's digitalRead, digitalWrite and pinMode with support for
// PB6 (XTAL1) and PB7 (XTAL2).
// TODO: Disable these wrappers with #ifdef-s when the hack is not needed.
int xDigitalRead(uint8_t pin);
void xDigitalWrite(uint8_t pin, uint8_t val);
void xPinMode(uint8_t pin, uint8_t mode);

#endif  // KAMAJI_XPINS_H
