#ifndef TETROMINOES_H
#define TETROMINOES_H

#include <avr/pgmspace.h>

const int16_t kTetrominoCount = 7;
const int16_t kRotationCount = 4;
const int16_t kTetrominoRows = 4;
const int16_t kTetrominoCols = 4;

// Generated by pack_tetrominos.py.
const uint16_t kTetrominoes[kTetrominoCount][kRotationCount] PROGMEM = {
  {
    0x0660,
    0x0660,
    0x0660,
    0x0660,
  },
  {
    0x00f0,
    0x4444,
    0x00f0,
    0x4444,
  },
  {
    0x0071,
    0x0226,
    0x0470,
    0x0322,
  },
  {
    0x0074,
    0x0622,
    0x0170,
    0x0223,
  },
  {
    0x0036,
    0x0462,
    0x0360,
    0x0231,
  },
  {
    0x0063,
    0x0264,
    0x0630,
    0x0132,
  },
  {
    0x0072,
    0x0262,
    0x0270,
    0x0232,
  },
};

#endif  // TETROMINOES_H