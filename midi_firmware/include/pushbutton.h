#ifndef _PUSHBUTTON_H
#define _PUSHBUTTON_H

#include <stdint.h>

class PushButton {
public:
  enum Event {
    PUSH_DOWN,
    PUSH_UP,
    NO_CHANGE,
  };

  PushButton();
  PushButton(const PushButton&) = delete;
  PushButton& operator=(const PushButton&) = delete;

  void init(uint8_t pin);

  Event poll();

private:
  uint8_t pin_;
  bool lastState_; // true == pushed down
  unsigned long lastChangeMillis_;
};

#endif // _PUSHBUTTON_H
