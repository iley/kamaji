#ifndef CONFIG_V3_H
#define CONFIG_V3_H

#define USE_LAMP 1
#define USE_PCF8574_LEDS 1

// All available buttons.
enum {
  BUTTON_PLAYER_1,
  BUTTON_PLAYER_2,
  BUTTON_PLAYER_3,
  BUTTON_PLAYER_4,
  BUTTON_PLAYER_5,
  BUTTON_PLAYER_6,

  BUTTON_CONTROL_1,
  BUTTON_CONTROL_2,
  BUTTON_CONTROL_3,

  BUTTON_COUNT = BUTTON_CONTROL_3 + 1,

  BUTTON_RESET = BUTTON_CONTROL_1,
  BUTTON_START = BUTTON_CONTROL_3,

  FIRST_PLAYER_BUTTON = BUTTON_PLAYER_1,
  LAST_PLAYER_BUTTON = BUTTON_PLAYER_6,
  PLAYER_COUNT = BUTTON_PLAYER_5 - BUTTON_PLAYER_1 + 1
};

// Pin numbers for each button, indexed by the enum values above.
// Players:
// PBTN1: PD5 - pin 5
// PBTN2: PD4 - pin 4
// PBTN3: PD3 - pin 3
// PBTN4: PD2 - pin 2
// PBTN5: PD1 - pin 1
// PBTN6: PD0 - pin 0
// Controls:
// CBTN1: PB3 - pin 11
// CBTN2: PB5 - pin 13
// CBTN3: PB4 - pin 12
#define DECLARE_KBUTTON_PINS()    \
  const int kButtonPins[] = {     \
    5, 4, 3, 2, 1, 0, /* players */ \
    11, 13, 12,       /* control */ \
  }

// Not used in this version.
#define DECLARE_KLED_PINS() \
  const int kLedPins[] = {10, 10, 10, 10, 10, 10}

#define DECLARE_KSPEAKER_PIN()  \
  const int kSpeakerPin = 9

// Lamp: PB0 - pin 8
#define DECLARE_KLAMP_PIN()  \
  const int kLampPin = 8

#endif  // CONFIG_V3_H
