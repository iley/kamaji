#ifndef KAMAJI_XPINS_H
#define KAMAJI_XPINS_H

#include <Arduino.h>

const int kPinPB6 = 50;
const int kPinPB7 = 51;

#if USE_XPINS_HACK

// Wrappers for Arduino's digitalRead, digitalWrite and pinMode with support for
// PB6 (XTAL1) and PB7 (XTAL2).
int xDigitalRead(uint8_t pin);
void xDigitalWrite(uint8_t pin, uint8_t val);
void xPinMode(uint8_t pin, uint8_t mode);

#else

#define xDigitalRead digitalRead
#define xDigitalWrite digitalWrite
#define xPinMode pinMode

#endif  //USE_XPINS_HACK

#endif  // KAMAJI_XPINS_H
