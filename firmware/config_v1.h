#ifndef CONFIG_V1_H
#define CONFIG_V1_H

// All available buttons.
enum {
  BUTTON_PLAYER_1,
  BUTTON_PLAYER_2,
  BUTTON_PLAYER_3,
  BUTTON_PLAYER_4,
  BUTTON_PLAYER_5,

  BUTTON_CONTROL_1,
  BUTTON_CONTROL_2,
  BUTTON_CONTROL_3,

  BUTTON_COUNT = BUTTON_CONTROL_3 + 1,

  BUTTON_RESET = BUTTON_CONTROL_1,
  BUTTON_START = BUTTON_CONTROL_3,

  FIRST_PLAYER_BUTTON = BUTTON_PLAYER_1,
  LAST_PLAYER_BUTTON = BUTTON_PLAYER_5,
  PLAYER_COUNT = BUTTON_PLAYER_5 - BUTTON_PLAYER_1 + 1
};

// Pin numbers for each button, indexed by the enum values above.
// Players:
// PBTN1: PD0 - pin 0
// PBTN2: PD2 - pin 2
// PBTN3: PD4 - pin 4
// PBTN4: PB7 - pin 51
// PBTN5: PD6 - pin 6
// Controls:
// CBTN1: PB2 - pin 10
// CBTN2: PB3 - pin 11
// CBTN3: PB4 - pin 12
#define DECLARE_KBUTTON_PINS()    \
  const int kButtonPins[] = {     \
    0, 2, 4, 51, 6, /* players */ \
    10, 11, 12,     /* control */ \
  }

// Pin numbers for each player's LED, indexed by the buttons enum.
// E.g. kLedPins[BUTTON_PLAYER_1] is the first player's LED.
// Player LEDs:
// PLED1: PD1 - pin 1
// PLED2: PD3 - pin 3
// PLED3: PB6 - pin 50
// PLED4: PD5 - pin 5
// PLED5: PD7 - pin 7
#define DECLARE_KLED_PINS() \
  const int kLedPins[] = {1, 3, 50, 5, 7}

#define DECLARE_KSPEAKER_PIN()  \
  const int kSpeakerPin = 9

// Lamp: PB0 - pin 8
#define DECLARE_KLAMP_PIN()  \
  const int kLampPin = 8

#define USE_LAMP 1

#endif  // CONFIG_V1_H
