#include "Arduino.h"
#include "pushbutton.h"

static const unsigned long kDebounceMillis = 100;

PushButton::PushButton()
  : pin_(-1)
  , lastState_(false)
  , lastChangeMillis_(0) {}

void PushButton::init(uint8_t pin) {
  pin_ = pin;
  pinMode(pin_, INPUT_PULLUP);
  lastState_ = false;
  lastChangeMillis_ = millis();
}

PushButton::Event PushButton::poll() {
  if (pin_ == -1) {
    // Uninitialized.
    return NO_CHANGE;
  }

  unsigned long now = millis();

  bool state;
  if ((now - lastChangeMillis_) < kDebounceMillis) {
    // Ignore any state changes for kDebounceMillis since last change.
    state = lastState_;
  } else {
    // The button is active-low.
    // It has a pull-up resistor enabled and is connected to ground when pressed.
    state = (digitalRead(pin_) == LOW);
  }

  if (state && !lastState_) {
    lastChangeMillis_ = now;
    lastState_ = state;
    return PUSH_DOWN;
  } else if (!state && lastState_) {
    lastChangeMillis_ = now;
    lastState_ = state;
    return PUSH_UP;
  }

  return NO_CHANGE;
}
