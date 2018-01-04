# Kamaji quiz game system

Build status: [![CircleCI](https://circleci.com/gh/iley/kamaji.svg?style=svg)](https://circleci.com/gh/iley/kamaji)

Directories:

* `firmware`: main source code;
* `demo`: code samples;
* `3d`: [OpenSCAD](http://www.openscad.org/) models for the enclosure;
* `pcb`: schematic and printed circuit board layout in [KiCAD](http://kicad-pcb.org/) format;
* `misc`: the rest.

## SDK

We use [PlatformIO](http://platformio.org) with
[Arduino](http://platformio.org/frameworks/arduino) framework. It should also
be possible to compile the code with the official Arduino IDE.

## Compilation

* Version 0 (the prototype): `pio run -e v0 -t upload`
* Version 1: `pio run -e v1 -t program`
* Version 1, 4 Jeopardy players: `pio run -e v1_4players -t program`
* Version 2: `pio run -e v2 -t upload`

## Hardware

V0 uses an [Arduino Nano](https://store.arduino.cc/arduino-nano) clone based on
ATmega328 and CH341 usb-to-serial chip. The CH341 requires a [third-party
driver](https://blog.sengotta.net/signed-mac-os-driver-for-winchiphead-ch340-serial-bridge/)
on Mac (and probably Windows), but Linux supports it natively. The screen is a
16x2 HD44780-compatible character LCD connected via
[I2C](https://en.wikipedia.org/wiki/I%C2%B2C).

V1 uses an ATmega328p running at 8MHz without an external oscillator.
[USBasp](http://www.fischl.de/usbasp/) can be used for programming.

V2 uses ATmega32u4 and a 128x64 graphics screen.


## Code style

Let's stick to [Google C++ Style Guide](https://google.github.io/styleguide/cppguide.html).
