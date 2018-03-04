# ATMega32u4 bootloader

This is a slightly modified version of the [Sparkfan Arduino bootloader][sf].

Program with [USBasp][usbasp]:

    avrdude -p atmega32u4 -P usb -c usbasp \
        -U flash:w:Caterina.hex \
        -U efuse:w:0xcb:m -U hfuse:w:0xd8:m -U lfuse:w:0xff:m

Hot bo rebuild:

1. Install avr-gcc and avr-libc.
2. Download [LUFA][lufa] version 111009 into `LUFA` directory.
3. Run `make`.

[usbasp]: http://www.fischl.de/usbasp/
[sf]: https://github.com/sparkfun/SF32u4_boards/tree/master/sparkfun/avr/bootloaders/caterina
[lufa]: http://www.fourwalledcubicle.com/LUFA.php
