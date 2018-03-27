..\.pio\packages\tool-avrdude\avrdude -v -p atmega328p -C ..\.pio\packages\tool-avrdude\avrdude.conf -c usbasp -Pusb -U lfuse:w:0xe2:m -U hfuse:w:0xd9:m -U efuse:w:0xff:m
