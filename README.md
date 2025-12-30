# Kamaji quiz game system

See [kamaji.cc](http://kamaji.cc) for assembly instructions and additional information.

![](https://github.com/iley/kamaji/workflows/CI/badge.svg)

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

## Compile and flash firmware

For v1 and v3 custom fuses must be programmed before first flashing.

```
pio run -e v1 -t fuses
```

Select the correct board version (v1, v2, v3) and flash it with:

```
pio run -e v1 -t upload
```

## Hardware

**The recommended version for new builds is "Classic V1".**

* V1 uses an ATmega328p running at 8MHz without an external oscillator. [USBasp](http://www.fischl.de/usbasp/) can be used for programming.
* V2 uses ATmega32u4 and a 128x64 graphics screen.
* V3 runs on ATmega328p with a 16MHz oscillator and and utilizes a PCF8574 I/O extender chip.
* "Classic V1" is an updated revision of V1. Fully compatible from software point of view.
* "Headless" is a USB MIDI device without a screen or buttons. Built around "Pro Micro" boards (ATMega32U4).

## Code style

Let's stick to [Google C++ Style Guide](https://google.github.io/styleguide/cppguide.html).
