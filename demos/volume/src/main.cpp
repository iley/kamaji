#include "Arduino.h"
#include "Volume.h"
#include "pitches.h"  // Taken from https://www.arduino.cc/en/Tutorial/ToneMelody

// const int freqs[] = {100, 500, 1000, 1500, 2000, 2500, 3000};

Volume vol;

void setup() {
  vol.begin();
  vol.tone(1000, 80);
}

void loop() {
  /*vol.tone(440, 255);*/
  /*vol.delay(1000);*/
  /*//vol.noTone();*/

  /*vol.delay(1000);*/

  /*vol.tone(440, 120);*/
  /*vol.delay(1000);*/
  /*//vol.noTone();*/

  /*vol.delay(1000);*/
  /*vol.tone(440, 120);*/
  /*vol.delay(1000);*/
}
