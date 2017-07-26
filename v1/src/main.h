#ifndef PAKET_MAIN_H
#define PAKET_MAIN_H

// All available buttons.
enum {
  BUTTON_PLAYER_1,
  BUTTON_PLAYER_2,
  BUTTON_PLAYER_3,
  BUTTON_PLAYER_4,

  BUTTON_CONTROL_1,
  BUTTON_CONTROL_2,
  BUTTON_CONTROL_3,

  BUTTON_COUNT = BUTTON_CONTROL_3 + 1,

  BUTTON_RESET = BUTTON_CONTROL_1,
  BUTTON_START = BUTTON_CONTROL_3,

  FIRST_PLAYER_BUTTON = BUTTON_PLAYER_1,
  LAST_PLAYER_BUTTON = BUTTON_PLAYER_4,
  PLAYER_COUNT = BUTTON_PLAYER_4 - BUTTON_PLAYER_1 + 1
};

bool isPlayerPressed(int playerId);
bool isControlPressed(int buttonId);
void playResetSound();
void playPlayerSound();
void playCorrectSound();
void playTimeSound();
void playFalseStartSound();
void setMode(Mode* newMode);

#endif
