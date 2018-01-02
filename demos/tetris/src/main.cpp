#include <stdlib.h>
#include <stdint.h>

#include <Arduino.h>
#include <SPI.h>
#include <Wire.h>
#include <U8g2lib.h>
#include <avr/pgmspace.h>

#include "tetrominoes.h"
#include "tune.h"

U8G2_ST7920_128X64_F_HW_SPI scr(
    U8G2_R1/*Rotate the screen 90 degree clockwise*/,
    A5/*CS, pin 41*/,
    A4/*RESET, pin 40*/
);

constexpr int16_t kSpeakerPin = 9;

constexpr int16_t kFieldCols = 10;
constexpr int16_t kFieldRows = 22;
constexpr int16_t kFieldOffsetX = 5;
constexpr int16_t kFieldOffsetY = 1;
constexpr int16_t kBoxSize = 5;
constexpr int16_t kStartRow = -2;
constexpr int16_t kStartCol = 3;

constexpr uint32_t kDebounceMs = 50;
constexpr uint32_t kGameStepMs = 1000;
uint32_t nextStepMs = 0;

int16_t tetrRot = 0;
int16_t tetrRow = 0;
int16_t tetrCol = kStartCol;
int16_t tetrType = 0;

int16_t score = 0;
const int16_t kMaxScore = 999;

int16_t level = 0;
const int16_t kMaxLevel = 9;
const uint32_t kStepMs[kMaxLevel+1] = {800, 700, 600, 500, 400, 300, 200, 100, 50, 10};
const int16_t kLinesPerLevel = 10;

bool field[kFieldRows][kFieldCols] = {0};

enum {
  BUTTON_LEFT,
  BUTTON_RIGHT,
  BUTTON_ROT,
  BUTTON_DROP,
  BUTTON_COUNT = BUTTON_DROP + 1,
};

enum {
  STATE_RUNNING,
  STATE_GAMEOVER,
  STATE_PAUSE,
};

int16_t state = STATE_RUNNING;

bool buttons[BUTTON_COUNT] = {false};
bool buttonsBefore[BUTTON_COUNT] = {false};
uint32_t lastPressedMs[BUTTON_COUNT] = {0};
const int16_t kButtonPins[BUTTON_COUNT] = {4, 5, 6, 7};

int16_t nextToneIndex = -1;
int16_t nextTone = 0;
uint16_t nextToneDurationMs = 0;
uint32_t nextToneTimeMs = 0;

bool currentTetromino[kTetrominoRows][kTetrominoCols] = {0};

void loadTetramino() {
  int16_t data = pgm_read_word_near(&kTetrominoes[tetrType][tetrRot]);
  for (int16_t row = 0; row < kTetrominoRows; ++row) {
    for (int16_t col = 0; col < kTetrominoCols; ++col) {
      currentTetromino[row][col] = (data & 1) == 1;
      data >>= 1;
    }
  }
}

inline bool wasPressed(int16_t btn) {
  return buttons[btn] && !buttonsBefore[btn];
}

inline void drawBox(int16_t row, int16_t col) {
  scr.drawBox(kFieldOffsetX + 2 + col * kBoxSize,
              kFieldOffsetY + 2 + row * kBoxSize,
              kBoxSize - 1,
              kBoxSize - 1);
}

void drawField() {
  scr.clearBuffer();
  scr.drawFrame(kFieldOffsetX,
                kFieldOffsetY,
                kFieldCols * kBoxSize + 3,
                kFieldRows * kBoxSize + 3);
  for (int16_t row = 0; row < kFieldRows; ++row) {
    for (int16_t col = 0; col < kFieldCols; ++col) {
      if (field[row][col]) {
        drawBox(row, col);
      }
    }
  }

  for (int16_t row = 0; row < kTetrominoRows; ++row) {
    for (int16_t col = 0; col < kTetrominoCols; ++col) {
      if (currentTetromino[row][col]) {
        drawBox(tetrRow + row, tetrCol + col);
      }
    }
  }

  scr.setCursor(3, 125);
  scr.print("S");
  scr.print(score);
  scr.setCursor(32, 125);
  scr.print("L");
  scr.print(level + 1);

  scr.sendBuffer();
}

void drawFinalScreen() {
  scr.setDrawColor(0);
  scr.drawBox(0, 47, 64, 18);
  scr.setDrawColor(1);
  scr.setCursor(5, 60);
  scr.print(F("GAME OVER"));
  scr.sendBuffer();
}

bool collides(int16_t trow, int16_t tcol) {
  for (int16_t row = 0; row < kTetrominoRows; ++row) {
    for (int16_t col = 0; col < kTetrominoCols; ++col) {
      if (currentTetromino[row][col]) {
        if (trow + row >= kFieldRows || tcol + col < 0 || tcol + col >= kFieldCols) {
          return true;
        }
        if (field[trow + row][tcol + col]) {
          return true;
        }
      }
    }
  }
  return false;
}

bool isCompleteRow(int16_t row) {
  for (int16_t col = 0; col < kFieldCols; ++col) {
    if (!field[row][col]) {
      return false;
    }
  }
  return true;
}

void deleteRow(int16_t row) {
  for (int16_t i = row; i > 0; --i) {
    for (int16_t col = 0; col < kFieldCols; ++col) {
      field[i][col] = field[i-1][col];
    }
  }
  for (int16_t col = 0; col < kFieldCols; ++col) {
    field[0][col] = false;
  }
  score++;
  if (score > kMaxScore) {
    score = kMaxScore;
  }
  level = score / kLinesPerLevel;
  if (level > kMaxLevel) {
    level = kMaxLevel;
  }
}

void placeTetromino() {
  for (int16_t row = 0; row < kTetrominoRows; ++row) {
    for (int16_t col = 0; col < kTetrominoCols; ++col) {
      if (currentTetromino[row][col]) {
        field[tetrRow + row][tetrCol + col] = true;
      }
    }
  }

  bool deleted;
  do {
    deleted = false;
    for (int16_t row = kFieldRows-1; row >= 0; --row) {
      if (isCompleteRow(row)) {
        deleteRow(row);
        deleted = true;
        break;
      }
    }
  } while (deleted);
}

void step() {
  if (collides(tetrRow + 1, tetrCol)) {
    placeTetromino();

    tetrRow = 0;
    tetrCol = kStartCol;
    tetrRot = 0;
    tetrType = random(kTetrominoCount);
    loadTetramino();

    if (collides(tetrRow, tetrCol)) {
      state = STATE_GAMEOVER;
    }
  } else {
    tetrRow++;
  }
}

// Returns whether there were changes.
bool updateGameState(uint32_t now) {
  bool changesMade = false;
  // Test rotation.
  if (wasPressed(BUTTON_ROT)) {
    // FIXME: load all rotations into RAM, pass rotation to collides().
    tetrRot = (tetrRot + 1) % kRotationCount;
    loadTetramino();
    changesMade = true;
    if (collides(tetrRow, tetrCol)) {
      // Undo.
      tetrRot = (tetrRot - 1) % kRotationCount;
      loadTetramino();
    }
  }

  if (wasPressed(BUTTON_LEFT)) {
    if (!collides(tetrRow, tetrCol - 1)) {
      --tetrCol;
    }
  }

  if (wasPressed(BUTTON_RIGHT)) {
    if (!collides(tetrRow, tetrCol + 1)) {
      ++tetrCol;
    }
  }

  if (now >= nextStepMs) {
    step();
    nextStepMs = now + kStepMs[level];
    changesMade = true;
  }

  return changesMade;
}

void initGame() {
  tetrType = random(kTetrominoCount);
  tetrRot = 0;
  tetrRow = 0;
  tetrCol = kStartCol;
  score = 0;
  for (int16_t row = 0; row < kFieldRows; ++row) {
    for (int16_t col = 0; col < kFieldCols; ++col) {
      field[row][col] = false;
    }
  }
  loadTetramino();
}

void setup() {
  randomSeed(analogRead(0));
  pinMode(kSpeakerPin, OUTPUT);
  for (uint16_t pin : kButtonPins) {
    pinMode(pin, INPUT_PULLUP);
  }
  scr.begin();
  scr.setFont(u8g2_font_profont12_tr);
  initGame();
}

void loop() {
  uint32_t now = millis();
  if (now >= nextToneTimeMs) {
    if (nextTone != 0) {
      tone(kSpeakerPin, nextTone, (uint32_t)nextToneDurationMs);
    }
    nextToneTimeMs = now + nextToneDurationMs;
    nextToneIndex = (nextToneIndex + 1) % kToneCount;
    nextTone = pgm_read_word_near(&kTones[nextToneIndex]);
    nextToneDurationMs = pgm_read_word_near(&kToneDurations[nextToneIndex]);
  }
  for (uint16_t i = 0; i < BUTTON_COUNT; ++i) {
    buttonsBefore[i] = buttons[i];
    if (now - lastPressedMs[i] > kDebounceMs) {
      if (digitalRead(kButtonPins[i]) == LOW) {
        buttons[i] = true;
        lastPressedMs[i] = now;
      } else {
        buttons[i] = false;
      }
    }
  }
  if (state == STATE_RUNNING) {
    if (updateGameState(now)) {
      drawField();
    }
  } else if (state == STATE_GAMEOVER) {
    drawFinalScreen();
  }
}
