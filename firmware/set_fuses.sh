#!/bin/bash
avrdude -v -p atmega328p -C $HOME/.platformio/packages/tool-avrdude/avrdude.conf -c usbasp -Pusb -U lfuse:w:0xe2:m -U hfuse:w:0xd9:m -U efuse:w:0xff:m
