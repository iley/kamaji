#ifndef KAMAJI_MAIN_H
#define KAMAJI_MAIN_H

const int DISPLAY_SIZE = 16;

const int kPinPB6 = 50;
const int kPinPB7 = 51;

// Wrappers for Arduino's digitalRead, digitalWrite and pinMode with support for
// PB6 (XTAL1) and PB7 (XTAL2).
int xDigitalRead(uint8_t pin);
void xDigitalWrite(uint8_t pin, uint8_t val);
void xPinMode(uint8_t pin, uint8_t mode);

bool isPlayerPressed(int playerId);
bool isControlPressed(int buttonId);
void playResetSound();
void playPlayerSound();
void playCorrectSound();
void playTimeSound();
void playFalseStartSound();
void playStartSound();
void playAttentionSound();
void playTimerSound();
void setMode(Mode* newMode);

#endif  // KAMAJI_MAIN_H
