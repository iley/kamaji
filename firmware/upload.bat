..\.pio\packages\tool-avrdude\avrdude -v -p atmega328p -C ../.pio/packages/tool-avrdude/avrdude.conf -c usbasp -Pusb -Uflash:w:.pioenvs/v1/firmware.hex

call set_fuses.bat