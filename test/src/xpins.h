#ifndef KAMAJI_XPINS_H
#define KAMAJI_XPINS_H

#include <Arduino.h>

constexpr uint8_t kXpinsBase = 50;

// ATMega328p XTAL pins.
constexpr uint8_t kPinPB6 = kXpinsBase + 0;
constexpr uint8_t  kPinPB7 = kXpinsBase + 1;
// ATMega32u4 pins.
constexpr uint8_t kPinPE2 = kXpinsBase + 2;  // HWB (enables bootloader).
constexpr uint8_t kPinPD5 = kXpinsBase + 3;  // Used as LED on Arduino.

#define USE_XPINS_HACK (defined(XPINS_ATMEGA328P) || defined(XPINS_ATMEGA32U4))

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
