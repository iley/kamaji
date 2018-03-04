#ifndef CONFIG_V2_H
#define CONFIG_V2_H

#define USE_GRAPHIC_LCD 1
#define XPINS_ATMEGA32U4 1
#define USE_DUMMY_LOAD 1
#define USE_SIGNAL_LED 1
#define RUSSIAN
// TODO: Enable the lamp.

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
  PLAYER_COUNT = LAST_PLAYER_BUTTON - BUTTON_PLAYER_1 + 1
};

// Pin numbers for each button, indexed by the enum values above.
// Players (reversed):
// PBTN6: PD6 - pin 12
// PBTN5: PB4 - pin 8
// PBTN4: PC6 - pin 5
// PBTN3: PE2 - xpin 52
// PBTN2: PF6 - pin 19
// PBTN1: PE6 - pin 7
// Controls:
// CBTN1: PD3 - pin 1
// CBTN2: PD2 - pin 0
// CBTN3: PB0 - pin 17
#define DECLARE_KBUTTON_PINS()    \
  const uint8_t kButtonPins[] = {     \
    12, 8, 5, 52, 19, 7, /* players */ \
    1, 0, 17,      /* control */ \
  }

// Pin numbers for each player's LED, indexed by the buttons enum.
// E.g. kLedPins[BUTTON_PLAYER_1] is the first player's LED.
// Player LEDs (reversed):
// PLED6: PD4 - pin 4
// PLED5: PD7 - pin 6
// PLED4: PB6 - pin 10
// PLED3: PC7 - pin 13
// PLED2: PF7 - pin 18
// PLED1: PF4 - pin 21
#define DECLARE_KLED_PINS() \
  const uint8_t kLedPins[] = {4, 6, 10, 13, 18, 21}

#define DECLARE_KSPEAKER_PIN()  \
  const uint8_t kSpeakerPin = 9

// Lamp: PD5 - xpin 53
#define DECLARE_KLAMP_PIN()  \
  const uint8_t kLampPin = 53

// Dummy load: PB7 - pin 11
#define DECLARE_KDUMMY_PIN() \
  const uint8_t kDummyPin = 11

#define DECLARE_KSIGNAL_PIN() \
  const uint8_t kSignalPin = 20

#endif  // CONFIG_V2_H
