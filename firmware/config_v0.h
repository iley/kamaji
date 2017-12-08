#ifndef CONFIG_V0_H
#define CONFIG_V0_H

#define USE_I2C_LCD 1

// All available buttons.
enum {
  BUTTON_PLAYER_1,
  BUTTON_PLAYER_2,
  BUTTON_PLAYER_6,
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



// Pin numbers for each button, indexed by the enum values above.
#define DECLARE_KBUTTON_PINS()  \
  const int kButtonPins[] = {   \
    8, 6, 4, 2, /* players */   \
    15, 16, 17, /* control */   \
  }

// Pin numbers for each player's LED, indexed by the buttons enum.
// E.g. kLedPins[BUTTON_PLAYER_1] is the first player's LED.
#define DECLARE_KLED_PINS() \
  const int kLedPins[] = {9, 7, 5, 3};

#define DECLARE_KSPEAKER_PIN()  \
  const int kSpeakerPin = 11;

#define USE_LAMP 0
#define SHOW_SCORES 1
#define MIDDLE_BUTTON 1

#endif  // CONFIG_V0_H
