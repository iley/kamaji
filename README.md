# Kamaji quiz game system

The main source code is in `v1`, `demo` has code samples, `design` is for
schematics, sketches etc.

## SDK

We use [PlatformIO](http://platformio.org) with
[Arduino](http://platformio.org/frameworks/arduino) framework. It should also
be trivial to compile the code with the official Arduino IDE.

To compile and upload the code run `pio run -t upload` in a directory
containing `platformio.ini`. Run `pio run -t size` if you need to compile only.

## Hardware

We use an [Arduino Nano](https://store.arduino.cc/arduino-nano) clone based on
ATmega328 and CH341 usb-to-serial chip. The CH341 requires a [third-party
driver](https://blog.sengotta.net/signed-mac-os-driver-for-winchiphead-ch340-serial-bridge/)
on Mac (and probably Windows), but Linux supports it natively. The screen is a
16x2 HD44780-compatible character LCD connected via
[I2C](https://en.wikipedia.org/wiki/I%C2%B2C).

Here is the mapping of Arduino's digital pins to connected devices:

* 2, 4, 6, 8: player buttons
* 3, 5, 7, 9: player LEDs (in the same order as buttons)
* 15, 16, 17: control buttons
* 11: buzzer

## Code style

Let's stick to [Google C++ Style Guide](https://google.github.io/styleguide/cppguide.html)
and use modern C++ features as much as the environment allows.
