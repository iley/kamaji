#ifndef CONFIG_V2_H
#define CONFIG_V2_H

#define USE_I2C_LCD 0
#define USE_GRAPHIC_LCD 1
// TODO: Enable the lamp.
#define USE_LAMP 0
#define SHOW_SCORES 1
#define MIDDLE_BUTTON 1
#define USE_XPINS_HACK 1

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
// PBTN1: PE6 - pin 7
// PBTN2: PF6 - pin 19
// PBTN3: PE2 - pin ??
// PBTN4: PC6 - pin 5
// PBTN5: PB4 - pin 8
// PBTN6: PD6 - pin 12
// Controls:
// CBTN1: PB0 - pin 17
// CBTN2: PD2 - pin 0
// CBTN3: PD3 - pin 1
// TODO: Socket 3 is skipped for now. Add it back.
#define DECLARE_KBUTTON_PINS()    \
  const int kButtonPins[] = {     \
    7, 19, 5, 8, 12, /* players */ \
    17, 0, 1,      /* control */ \
  }

// Pin numbers for each player's LED, indexed by the buttons enum.
// E.g. kLedPins[BUTTON_PLAYER_1] is the first player's LED.
// Player LEDs:
// PLED1: PF4 - pin 21
// PLED2: PF7 - pin 18
// PLED3: PC7 - pin 13
// PLED4: PB6 - pin 10
// PLED5: PD7 - pin 6
// PLED6: PD4 - pin 4
#define DECLARE_KLED_PINS() \
  const int kLedPins[] = {21, 18, 10, 6, 4}

#define DECLARE_KSPEAKER_PIN()  \
  const int kSpeakerPin = 9

// Lamp: PD5 - pin 8
#define DECLARE_KLAMP_PIN()  \
  const int kLampPin = 8

#endif  // CONFIG_V2_H
