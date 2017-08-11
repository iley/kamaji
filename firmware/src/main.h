#ifndef PAKET_MAIN_H
#define PAKET_MAIN_H

const int DISPLAY_SIZE = 16;

bool isPlayerPressed(int playerId);
bool isControlPressed(int buttonId);
void playResetSound();
void playPlayerSound();
void playCorrectSound();
void playTimeSound();
void playFalseStartSound();
void setMode(Mode* newMode);

#endif
