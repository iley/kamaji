#ifndef TUNE_H
#define TUNE_H

#include <avr/pgmspace.h>
#include <stdint.h>

const int kToneCount = 83;

const uint16_t kTones[] PROGMEM = {
  658, 1320, 990, 1056, 1188, 1320, 1188, 1056, 990, 880, 880, 1056, 1320, 1188,
  1056, 990, 1056, 1188, 1320, 1056, 880, 880, 0, 1188, 1408, 1760, 1584, 1408,
  1320, 1056, 1320, 1188, 1056, 990, 990, 1056, 1188, 1320, 1056, 880, 880, 0,
  1320, 990, 1056, 1188, 1320, 1188, 1056, 990, 880, 880, 1056, 1320, 1188,
  1056, 990, 1056, 1188, 1320, 1056, 880, 880, 0, 1188, 1408, 1760, 1584, 1408,
  1320, 1056, 1320, 1188, 1056, 990, 990, 1056, 1188, 1320, 1056, 880, 880, 0,
};

const uint16_t kToneDurations[] PROGMEM = {
  125, 500, 250, 250, 250, 125, 125, 250, 250, 500, 250, 250, 500, 250, 250,
  750, 250, 500, 500, 500, 500, 500, 250, 500, 250, 500, 250, 250, 750, 250,
  500, 250, 250, 500, 250, 250, 500, 500, 500, 500, 500, 500, 500, 250, 250,
  250, 125, 125, 250, 250, 500, 250, 250, 500, 250, 250, 750, 250, 500, 500,
  500, 500, 500, 250, 500, 250, 500, 250, 250, 750, 250, 500, 250, 250, 500,
  250, 250, 500, 500, 500, 500, 500, 500,
};

#endif  // TUNE_H