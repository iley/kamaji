#ifndef KAMAJI_MAIN_H
#define KAMAJI_MAIN_H

#include "mode.h"

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
