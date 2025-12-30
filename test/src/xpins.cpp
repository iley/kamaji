#include "xpins.h"

#if USE_XPINS_HACK

int xDigitalRead(uint8_t pin) {
  if (pin < kXpinsBase) {
    return digitalRead(pin);
  }
#if XPINS_ATMEGA328P
  if (pin == kPinPB6) {
    return (PINB & _BV(PINB6)) ? HIGH : LOW;
  } else if (pin == kPinPB7) {
    return (PINB & _BV(PINB7)) ? HIGH : LOW;
  }
#elif XPINS_ATMEGA32U4
  if (pin == kPinPE2) {
    return (PINE & _BV(PINE2)) ? HIGH : LOW;
  } else if (pin == kPinPD5) {
    return (PIND & _BV(PIND5)) ? HIGH : LOW;
  }
#endif
  return LOW;
}

void xDigitalWrite(uint8_t pin, uint8_t val) {
  if (pin < kXpinsBase) {
    digitalWrite(pin, val);
    return;
  }

#if XPINS_ATMEGA328P
  uint8_t mask = 0;
  if (pin == kPinPB6) {
    mask = _BV(PORTB6);
  } else if (pin == kPinPB7) {
    mask = _BV(PORTB7);
  }
  if (val == HIGH) {
    PORTB |= mask;
  } else {
    PORTB &= ~mask;
  }
#elif XPINS_ATMEGA32U4
  if (pin == kPinPE2) {
    if (val == HIGH) {
      PORTE |= _BV(PORTE2);
    } else {
      PORTE &= ~_BV(PORTE2);
    }
  } else if (pin == kPinPD5) {
    if (val == HIGH) {
      PORTD |= _BV(PORTD5);
    } else {
      PORTD &= ~_BV(PORTD5);
    }
  }
#endif
}

void xPinMode(uint8_t pin, uint8_t mode) {
  if (pin < kXpinsBase) {
    pinMode(pin, mode);
    return;
  }

  uint8_t mask;
  volatile uint8_t* port;
  volatile uint8_t* ddr;
#if XPINS_ATMEGA328P
  if (pin == kPinPB6) {
    mask = _BV(PORTB6);
  } else if (pin == kPinPB7) {
    mask = _BV(PORTB7);
  } else {
    return;
  }
  port = &PORTB;
  ddr = &DDRB;
#elif XPINS_ATMEGA32U4
  if (pin == kPinPE2) {
    ddr = &DDRE;
    port = &PORTE;
    mask = _BV(PORTE2);
  } else if (pin == kPinPD5) {
    ddr = &DDRD;
    port = &PORTD;
    mask = _BV(PORTD5);
  } else {
    return;
  }
#endif

  if (mode == INPUT) {
    *ddr &= ~mask;
    *port &= ~mask;
  } else if (mode == INPUT_PULLUP) {
    *ddr &= ~mask;
    *port |= mask;
  } else {
    *ddr |= mask;
  }
}

#endif  // USE_XPINS_HACK
