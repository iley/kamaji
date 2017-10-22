EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:kamaji
LIBS:switches
LIBS:kamaji-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Kamaji"
Date ""
Rev "2.0"
Comp ""
Comment1 "© Ilya Strukov 2017"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA32U4-AU U1
U 1 1 59E66067
P 2630 3030
F 0 "U1" H 1680 4730 50  0000 C CNN
F 1 "ATMEGA32U4-AU" H 3330 1530 50  0000 C CNN
F 2 "TQFP44" H 2630 3030 50  0001 C CIN
F 3 "" H 3730 4130 50  0001 C CNN
	1    2630 3030
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR6
U 1 1 59E660F3
P 1480 1180
F 0 "#PWR6" H 1480 1030 50  0001 C CNN
F 1 "VCC" H 1480 1330 50  0000 C CNN
F 2 "" H 1480 1180 50  0001 C CNN
F 3 "" H 1480 1180 50  0001 C CNN
	1    1480 1180
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 59E6611C
P 1480 1330
F 0 "R3" V 1560 1330 50  0000 C CNN
F 1 "10K" V 1480 1330 50  0000 C CNN
F 2 "" V 1410 1330 50  0001 C CNN
F 3 "" H 1480 1330 50  0001 C CNN
	1    1480 1330
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR14
U 1 1 59E66238
P 2530 1230
F 0 "#PWR14" H 2530 1080 50  0001 C CNN
F 1 "VCC" H 2530 1380 50  0000 C CNN
F 2 "" H 2530 1230 50  0001 C CNN
F 3 "" H 2530 1230 50  0001 C CNN
	1    2530 1230
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 59E662AF
P 1300 1980
F 0 "Y1" H 1300 2130 50  0000 C CNN
F 1 "16MHz" H 1300 1830 50  0000 C CNN
F 2 "" H 1300 1980 50  0001 C CNN
F 3 "" H 1300 1980 50  0001 C CNN
	1    1300 1980
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 59E663E6
P 970 1830
F 0 "C1" H 995 1930 50  0000 L CNN
F 1 "18pF" H 995 1730 50  0000 L CNN
F 2 "" H 1008 1680 50  0001 C CNN
F 3 "" H 970 1830 50  0001 C CNN
	1    970  1830
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 59E66491
P 970 2130
F 0 "C2" H 995 2230 50  0000 L CNN
F 1 "18pF" H 995 2030 50  0000 L CNN
F 2 "" H 1008 1980 50  0001 C CNN
F 3 "" H 970 2130 50  0001 C CNN
	1    970  2130
	0    1    1    0   
$EndComp
$Comp
L GND #PWR1
U 1 1 59E6655E
P 820 2330
F 0 "#PWR1" H 820 2080 50  0001 C CNN
F 1 "GND" H 820 2180 50  0000 C CNN
F 2 "" H 820 2330 50  0001 C CNN
F 3 "" H 820 2330 50  0001 C CNN
	1    820  2330
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR9
U 1 1 59E666E1
P 1480 3880
F 0 "#PWR9" H 1480 3730 50  0001 C CNN
F 1 "VCC" H 1480 4030 50  0000 C CNN
F 2 "" H 1480 3880 50  0001 C CNN
F 3 "" H 1480 3880 50  0001 C CNN
	1    1480 3880
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR13
U 1 1 59E66846
P 2480 4630
F 0 "#PWR13" H 2480 4380 50  0001 C CNN
F 1 "GND" H 2480 4480 50  0000 C CNN
F 2 "" H 2480 4630 50  0001 C CNN
F 3 "" H 2480 4630 50  0001 C CNN
	1    2480 4630
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59E8EF8C
P 1250 2830
F 0 "R1" V 1200 3010 50  0000 C CNN
F 1 "22R" V 1250 2830 50  0000 C CNN
F 2 "" V 1180 2830 50  0001 C CNN
F 3 "" H 1250 2830 50  0001 C CNN
	1    1250 2830
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 59E8F0DD
P 1250 2960
F 0 "R2" V 1330 2960 50  0000 C CNN
F 1 "22R" V 1250 2960 50  0000 C CNN
F 2 "" V 1180 2960 50  0001 C CNN
F 3 "" H 1250 2960 50  0001 C CNN
	1    1250 2960
	0    1    1    0   
$EndComp
Text GLabel 1020 2830 0    60   BiDi ~ 0
USB_D+
Text GLabel 1020 2960 0    60   BiDi ~ 0
USB_D-
$Comp
L C C5
U 1 1 59E8F572
P 1480 3230
F 0 "C5" H 1370 3330 50  0000 L CNN
F 1 "0.1uF" H 1240 3140 50  0000 L CNN
F 2 "" H 1518 3080 50  0001 C CNN
F 3 "" H 1480 3230 50  0001 C CNN
	1    1480 3230
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 59E8F8AC
P 1480 3380
F 0 "#PWR8" H 1480 3130 50  0001 C CNN
F 1 "GND" H 1480 3230 50  0000 C CNN
F 2 "" H 1480 3380 50  0001 C CNN
F 3 "" H 1480 3380 50  0001 C CNN
	1    1480 3380
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 59EB01C4
P 9330 3750
F 0 "R14" V 9410 3750 50  0000 C CNN
F 1 "200R" V 9330 3750 50  0000 C CNN
F 2 "" V 9260 3750 50  0001 C CNN
F 3 "" H 9330 3750 50  0001 C CNN
	1    9330 3750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR43
U 1 1 59EB02B1
P 9240 3600
F 0 "#PWR43" H 9240 3450 50  0001 C CNN
F 1 "VCC" H 9240 3750 50  0000 C CNN
F 2 "" H 9240 3600 50  0001 C CNN
F 3 "" H 9240 3600 50  0001 C CNN
	1    9240 3600
	1    0    0    -1  
$EndComp
$Comp
L IRLIZ44N Q2
U 1 1 59EB0368
P 9140 4100
F 0 "Q2" H 9390 4175 50  0000 L CNN
F 1 "IRL540N" H 9390 4100 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 9390 4025 50  0001 L CIN
F 3 "" H 9140 4100 50  0001 L CNN
	1    9140 4100
	1    0    0    -1  
$EndComp
Text GLabel 8860 4100 0    60   Input ~ 0
DUMMY
$Comp
L R R11
U 1 1 59EB0444
P 8940 4250
F 0 "R11" V 9020 4250 50  0000 C CNN
F 1 "10K" V 8940 4250 50  0000 C CNN
F 2 "" V 8870 4250 50  0001 C CNN
F 3 "" H 8940 4250 50  0001 C CNN
	1    8940 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR42
U 1 1 59EB04F8
P 8940 4400
F 0 "#PWR42" H 8940 4150 50  0001 C CNN
F 1 "GND" H 8940 4250 50  0000 C CNN
F 2 "" H 8940 4400 50  0001 C CNN
F 3 "" H 8940 4400 50  0001 C CNN
	1    8940 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR44
U 1 1 59EB052B
P 9240 4300
F 0 "#PWR44" H 9240 4050 50  0001 C CNN
F 1 "GND" H 9240 4150 50  0000 C CNN
F 2 "" H 9240 4300 50  0001 C CNN
F 3 "" H 9240 4300 50  0001 C CNN
	1    9240 4300
	1    0    0    -1  
$EndComp
$Comp
L Speaker LS1
U 1 1 59EB0736
P 8480 1580
F 0 "LS1" H 8540 1360 50  0000 R CNN
F 1 "2W" H 8670 1270 50  0000 R CNN
F 2 "" H 8480 1380 50  0001 C CNN
F 3 "" H 8470 1530 50  0001 C CNN
	1    8480 1580
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 59EB079D
P 8030 1690
F 0 "D1" V 8130 1620 50  0000 C CNN
F 1 "D" V 7910 1630 50  0000 C CNN
F 2 "" H 8030 1690 50  0001 C CNN
F 3 "" H 8030 1690 50  0001 C CNN
	1    8030 1690
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR40
U 1 1 59EB08CE
P 8030 1410
F 0 "#PWR40" H 8030 1260 50  0001 C CNN
F 1 "VCC" H 8030 1560 50  0000 C CNN
F 2 "" H 8030 1410 50  0001 C CNN
F 3 "" H 8030 1410 50  0001 C CNN
	1    8030 1410
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 59EB0A92
P 7780 1690
F 0 "C7" H 7805 1790 50  0000 L CNN
F 1 "C" H 7805 1590 50  0000 L CNN
F 2 "" H 7818 1540 50  0001 C CNN
F 3 "" H 7780 1690 50  0001 C CNN
	1    7780 1690
	1    0    0    -1  
$EndComp
$Comp
L IRLIZ44N Q1
U 1 1 59EB0BD7
P 7930 2140
F 0 "Q1" H 8180 2215 50  0000 L CNN
F 1 "IRL540N" H 8180 2140 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 8180 2065 50  0001 L CIN
F 3 "" H 7930 2140 50  0001 L CNN
	1    7930 2140
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR41
U 1 1 59EB0F4B
P 8030 2340
F 0 "#PWR41" H 8030 2090 50  0001 C CNN
F 1 "GND" H 8030 2190 50  0000 C CNN
F 2 "" H 8030 2340 50  0001 C CNN
F 3 "" H 8030 2340 50  0001 C CNN
	1    8030 2340
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 59EB0FF4
P 7730 2290
F 0 "R10" V 7810 2290 50  0000 C CNN
F 1 "10K" V 7730 2290 50  0000 C CNN
F 2 "" V 7660 2290 50  0001 C CNN
F 3 "" H 7730 2290 50  0001 C CNN
	1    7730 2290
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR39
U 1 1 59EB105E
P 7730 2440
F 0 "#PWR39" H 7730 2190 50  0001 C CNN
F 1 "GND" H 7730 2290 50  0000 C CNN
F 2 "" H 7730 2440 50  0001 C CNN
F 3 "" H 7730 2440 50  0001 C CNN
	1    7730 2440
	1    0    0    -1  
$EndComp
Text GLabel 7650 2140 0    60   Input ~ 0
SOUND
$Comp
L Conn_02x05_Odd_Even J7
U 1 1 59EB13A5
P 6350 1390
F 0 "J7" H 6400 1690 50  0000 C CNN
F 1 "ICSP" H 6400 1090 50  0000 C CNN
F 2 "" H 6350 1390 50  0001 C CNN
F 3 "" H 6350 1390 50  0001 C CNN
	1    6350 1390
	1    0    0    -1  
$EndComp
Text GLabel 6150 1190 0    60   Input ~ 0
MOSI
Text Notes 7450 2830 0    60   Italic 0
TODO: Capacitor value\nfor the low-pass filter
NoConn ~ 6150 1290
$Comp
L VCC #PWR31
U 1 1 59EB2DF7
P 6650 1190
F 0 "#PWR31" H 6650 1040 50  0001 C CNN
F 1 "VCC" H 6650 1340 50  0000 C CNN
F 2 "" H 6650 1190 50  0001 C CNN
F 3 "" H 6650 1190 50  0001 C CNN
	1    6650 1190
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR32
U 1 1 59EB2E6D
P 6650 1590
F 0 "#PWR32" H 6650 1340 50  0001 C CNN
F 1 "GND" H 6650 1440 50  0000 C CNN
F 2 "" H 6650 1590 50  0001 C CNN
F 3 "" H 6650 1590 50  0001 C CNN
	1    6650 1590
	1    0    0    -1  
$EndComp
Text GLabel 6150 1390 0    60   Output ~ 0
RESET
Text GLabel 5790 1490 0    60   Output ~ 0
SCK
Text GLabel 6150 1590 0    60   Output ~ 0
MISO
$Comp
L USB_B J8
U 1 1 59EB3731
P 9860 1930
F 0 "J8" H 9660 2380 50  0000 L CNN
F 1 "USB_B" H 9660 2280 50  0000 L CNN
F 2 "" H 10010 1880 50  0001 C CNN
F 3 "" H 10010 1880 50  0001 C CNN
	1    9860 1930
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR45
U 1 1 59EB3883
P 9860 2330
F 0 "#PWR45" H 9860 2080 50  0001 C CNN
F 1 "GND" H 9860 2180 50  0000 C CNN
F 2 "" H 9860 2330 50  0001 C CNN
F 3 "" H 9860 2330 50  0001 C CNN
	1    9860 2330
	1    0    0    -1  
$EndComp
Text GLabel 10210 1910 2    60   BiDi ~ 0
USB_D+
Text GLabel 10220 2050 2    60   BiDi ~ 0
USB_D-
$Comp
L VCC #PWR50
U 1 1 59EB408E
P 10760 1430
F 0 "#PWR50" H 10760 1280 50  0001 C CNN
F 1 "VCC" H 10760 1580 50  0000 C CNN
F 2 "" H 10760 1430 50  0001 C CNN
F 3 "" H 10760 1430 50  0001 C CNN
	1    10760 1430
	1    0    0    -1  
$EndComp
Text Notes 7570 4540 0    60   Italic 0
Dummy load to make sure\npowerbanks don't shut off\npower due to low current
Text Notes 9480 2740 0    60   Italic 0
USB type B (device) for\npower and programming
$Comp
L WC1602A DS1
U 1 1 59EB4FC8
P 6140 4430
F 0 "DS1" H 5910 5180 50  0000 C CNN
F 1 "WC1602A" H 6350 5180 50  0000 C CNN
F 2 "Displays:WC1602A" H 6140 3530 50  0001 C CIN
F 3 "" H 6840 4430 50  0001 C CNN
	1    6140 4430
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR30
U 1 1 59EB5151
P 6140 5230
F 0 "#PWR30" H 6140 4980 50  0001 C CNN
F 1 "GND" H 6140 5080 50  0000 C CNN
F 2 "" H 6140 5230 50  0001 C CNN
F 3 "" H 6140 5230 50  0001 C CNN
	1    6140 5230
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR29
U 1 1 59EB528C
P 6140 3630
F 0 "#PWR29" H 6140 3480 50  0001 C CNN
F 1 "VCC" H 6140 3780 50  0000 C CNN
F 2 "" H 6140 3630 50  0001 C CNN
F 3 "" H 6140 3630 50  0001 C CNN
	1    6140 3630
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 59EB5D0C
P 6890 3830
F 0 "RV1" V 6715 3830 50  0000 C CNN
F 1 "POT" V 6790 3830 50  0000 C CNN
F 2 "" H 6890 3830 50  0001 C CNN
F 3 "" H 6890 3830 50  0001 C CNN
	1    6890 3830
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR36
U 1 1 59EB5E2F
P 6890 3980
F 0 "#PWR36" H 6890 3730 50  0001 C CNN
F 1 "GND" H 6890 3830 50  0000 C CNN
F 2 "" H 6890 3980 50  0001 C CNN
F 3 "" H 6890 3980 50  0001 C CNN
	1    6890 3980
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR35
U 1 1 59EB5E76
P 6890 3680
F 0 "#PWR35" H 6890 3530 50  0001 C CNN
F 1 "VCC" H 6890 3830 50  0000 C CNN
F 2 "" H 6890 3680 50  0001 C CNN
F 3 "" H 6890 3680 50  0001 C CNN
	1    6890 3680
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR33
U 1 1 59EB5EBD
P 6650 4090
F 0 "#PWR33" H 6650 3940 50  0001 C CNN
F 1 "VCC" H 6650 4240 50  0000 C CNN
F 2 "" H 6650 4090 50  0001 C CNN
F 3 "" H 6650 4090 50  0001 C CNN
	1    6650 4090
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 59EB5F2C
P 6650 4380
F 0 "R9" V 6730 4380 50  0000 C CNN
F 1 "220R" V 6650 4380 50  0000 C CNN
F 2 "" V 6580 4380 50  0001 C CNN
F 3 "" H 6650 4380 50  0001 C CNN
	1    6650 4380
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR34
U 1 1 59EB6036
P 6650 4530
F 0 "#PWR34" H 6650 4280 50  0001 C CNN
F 1 "GND" H 6650 4380 50  0000 C CNN
F 2 "" H 6650 4530 50  0001 C CNN
F 3 "" H 6650 4530 50  0001 C CNN
	1    6650 4530
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR25
U 1 1 59EB6B56
P 5600 4450
F 0 "#PWR25" H 5600 4200 50  0001 C CNN
F 1 "GND" H 5600 4300 50  0000 C CNN
F 2 "" H 5600 4450 50  0001 C CNN
F 3 "" H 5600 4450 50  0001 C CNN
	1    5600 4450
	1    0    0    -1  
$EndComp
Text GLabel 5740 3830 0    60   Input ~ 0
LCD_EN
Text GLabel 5740 4030 0    60   Input ~ 0
LCD_RS
$Comp
L GND #PWR23
U 1 1 59EB6FD1
P 5230 3960
F 0 "#PWR23" H 5230 3710 50  0001 C CNN
F 1 "GND" H 5230 3810 50  0000 C CNN
F 2 "" H 5230 3960 50  0001 C CNN
F 3 "" H 5230 3960 50  0001 C CNN
	1    5230 3960
	1    0    0    -1  
$EndComp
Text GLabel 5740 4730 0    60   Input ~ 0
LCD_D4
Text GLabel 5340 4830 0    60   Input ~ 0
LCD_D5
Text GLabel 5740 4930 0    60   Input ~ 0
LCD_D6
Text GLabel 5340 5030 0    60   Input ~ 0
LCD_D7
Text Notes 5520 5560 0    60   Italic 0
Any HD44780 compatible LCD
$Comp
L RJ10 J1
U 1 1 59EB8096
P 1900 6660
F 0 "J1" H 1900 6710 60  0000 C CNN
F 1 "RJ10" H 1900 6560 60  0000 C CNN
F 2 "" H 1875 6635 60  0001 C CNN
F 3 "" H 1875 6635 60  0001 C CNN
	1    1900 6660
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR11
U 1 1 59EB8ACB
P 2050 7010
F 0 "#PWR11" H 2050 6760 50  0001 C CNN
F 1 "GND" H 2050 6860 50  0000 C CNN
F 2 "" H 2050 7010 50  0001 C CNN
F 3 "" H 2050 7010 50  0001 C CNN
	1    2050 7010
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR10
U 1 1 59EB8B86
P 1850 7010
F 0 "#PWR10" H 1850 6760 50  0001 C CNN
F 1 "GND" H 1850 6860 50  0000 C CNN
F 2 "" H 1850 7010 50  0001 C CNN
F 3 "" H 1850 7010 50  0001 C CNN
	1    1850 7010
	1    0    0    -1  
$EndComp
Text GLabel 1600 7050 0    60   Output ~ 0
PBTN1
Text GLabel 1630 7260 0    60   Input ~ 0
PLED1
$Comp
L R R4
U 1 1 59EB8E65
P 1800 7260
F 0 "R4" V 1880 7260 50  0000 C CNN
F 1 "220R" V 1800 7260 50  0000 C CNN
F 2 "" V 1730 7260 50  0001 C CNN
F 3 "" H 1800 7260 50  0001 C CNN
	1    1800 7260
	0    1    1    0   
$EndComp
$Comp
L RJ10 J2
U 1 1 59EB9256
P 2840 6670
F 0 "J2" H 2840 6720 60  0000 C CNN
F 1 "RJ10" H 2840 6570 60  0000 C CNN
F 2 "" H 2815 6645 60  0001 C CNN
F 3 "" H 2815 6645 60  0001 C CNN
	1    2840 6670
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR16
U 1 1 59EB925C
P 2990 7020
F 0 "#PWR16" H 2990 6770 50  0001 C CNN
F 1 "GND" H 2990 6870 50  0000 C CNN
F 2 "" H 2990 7020 50  0001 C CNN
F 3 "" H 2990 7020 50  0001 C CNN
	1    2990 7020
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 59EB9262
P 2790 7020
F 0 "#PWR15" H 2790 6770 50  0001 C CNN
F 1 "GND" H 2790 6870 50  0000 C CNN
F 2 "" H 2790 7020 50  0001 C CNN
F 3 "" H 2790 7020 50  0001 C CNN
	1    2790 7020
	1    0    0    -1  
$EndComp
Text GLabel 2540 7060 0    60   Output ~ 0
PBTN2
Text GLabel 2570 7270 0    60   Input ~ 0
PLED2
$Comp
L R R5
U 1 1 59EB926C
P 2740 7270
F 0 "R5" V 2820 7270 50  0000 C CNN
F 1 "220R" V 2740 7270 50  0000 C CNN
F 2 "" V 2670 7270 50  0001 C CNN
F 3 "" H 2740 7270 50  0001 C CNN
	1    2740 7270
	0    1    1    0   
$EndComp
$Comp
L RJ10 J3
U 1 1 59EB9468
P 3790 6670
F 0 "J3" H 3790 6720 60  0000 C CNN
F 1 "RJ10" H 3790 6570 60  0000 C CNN
F 2 "" H 3765 6645 60  0001 C CNN
F 3 "" H 3765 6645 60  0001 C CNN
	1    3790 6670
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR19
U 1 1 59EB946E
P 3940 7020
F 0 "#PWR19" H 3940 6770 50  0001 C CNN
F 1 "GND" H 3940 6870 50  0000 C CNN
F 2 "" H 3940 7020 50  0001 C CNN
F 3 "" H 3940 7020 50  0001 C CNN
	1    3940 7020
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR18
U 1 1 59EB9474
P 3740 7020
F 0 "#PWR18" H 3740 6770 50  0001 C CNN
F 1 "GND" H 3740 6870 50  0000 C CNN
F 2 "" H 3740 7020 50  0001 C CNN
F 3 "" H 3740 7020 50  0001 C CNN
	1    3740 7020
	1    0    0    -1  
$EndComp
Text GLabel 3490 7060 0    60   Output ~ 0
PBTN3
Text GLabel 3520 7270 0    60   Input ~ 0
PLED3
$Comp
L R R6
U 1 1 59EB947E
P 3690 7270
F 0 "R6" V 3770 7270 50  0000 C CNN
F 1 "220R" V 3690 7270 50  0000 C CNN
F 2 "" V 3620 7270 50  0001 C CNN
F 3 "" H 3690 7270 50  0001 C CNN
	1    3690 7270
	0    1    1    0   
$EndComp
$Comp
L RJ10 J4
U 1 1 59EB95E4
P 4750 6670
F 0 "J4" H 4750 6720 60  0000 C CNN
F 1 "RJ10" H 4750 6570 60  0000 C CNN
F 2 "" H 4725 6645 60  0001 C CNN
F 3 "" H 4725 6645 60  0001 C CNN
	1    4750 6670
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR22
U 1 1 59EB95EA
P 4900 7020
F 0 "#PWR22" H 4900 6770 50  0001 C CNN
F 1 "GND" H 4900 6870 50  0000 C CNN
F 2 "" H 4900 7020 50  0001 C CNN
F 3 "" H 4900 7020 50  0001 C CNN
	1    4900 7020
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR21
U 1 1 59EB95F0
P 4700 7020
F 0 "#PWR21" H 4700 6770 50  0001 C CNN
F 1 "GND" H 4700 6870 50  0000 C CNN
F 2 "" H 4700 7020 50  0001 C CNN
F 3 "" H 4700 7020 50  0001 C CNN
	1    4700 7020
	1    0    0    -1  
$EndComp
Text GLabel 4450 7060 0    60   Output ~ 0
PBTN4
Text GLabel 4480 7270 0    60   Input ~ 0
PLED4
$Comp
L R R7
U 1 1 59EB95FA
P 4650 7270
F 0 "R7" V 4730 7270 50  0000 C CNN
F 1 "220R" V 4650 7270 50  0000 C CNN
F 2 "" V 4580 7270 50  0001 C CNN
F 3 "" H 4650 7270 50  0001 C CNN
	1    4650 7270
	0    1    1    0   
$EndComp
$Comp
L RJ10 J5
U 1 1 59EB9B53
P 5760 6670
F 0 "J5" H 5760 6720 60  0000 C CNN
F 1 "RJ10" H 5760 6570 60  0000 C CNN
F 2 "" H 5735 6645 60  0001 C CNN
F 3 "" H 5735 6645 60  0001 C CNN
	1    5760 6670
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR27
U 1 1 59EB9B59
P 5910 7020
F 0 "#PWR27" H 5910 6770 50  0001 C CNN
F 1 "GND" H 5910 6870 50  0000 C CNN
F 2 "" H 5910 7020 50  0001 C CNN
F 3 "" H 5910 7020 50  0001 C CNN
	1    5910 7020
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR26
U 1 1 59EB9B5F
P 5710 7020
F 0 "#PWR26" H 5710 6770 50  0001 C CNN
F 1 "GND" H 5710 6870 50  0000 C CNN
F 2 "" H 5710 7020 50  0001 C CNN
F 3 "" H 5710 7020 50  0001 C CNN
	1    5710 7020
	1    0    0    -1  
$EndComp
Text GLabel 5460 7060 0    60   Output ~ 0
PBTN5
Text GLabel 5490 7270 0    60   Input ~ 0
PLED5
$Comp
L R R8
U 1 1 59EB9B69
P 5660 7270
F 0 "R8" V 5740 7270 50  0000 C CNN
F 1 "220R" V 5660 7270 50  0000 C CNN
F 2 "" V 5590 7270 50  0001 C CNN
F 3 "" H 5660 7270 50  0001 C CNN
	1    5660 7270
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW1
U 1 1 59EBA50E
P 1990 5910
F 0 "SW1" H 2040 6010 50  0000 L CNN
F 1 "SW_Push" H 1990 5850 50  0001 C CNN
F 2 "" H 1990 6110 50  0001 C CNN
F 3 "" H 1990 6110 50  0001 C CNN
	1    1990 5910
	1    0    0    -1  
$EndComp
Text GLabel 1730 5910 0    60   Output ~ 0
CBTN1
$Comp
L GND #PWR12
U 1 1 59EBA9B7
P 2190 5910
F 0 "#PWR12" H 2190 5660 50  0001 C CNN
F 1 "GND" H 2190 5760 50  0000 C CNN
F 2 "" H 2190 5910 50  0001 C CNN
F 3 "" H 2190 5910 50  0001 C CNN
	1    2190 5910
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 59EBABAB
P 3220 5910
F 0 "SW2" H 3270 6010 50  0000 L CNN
F 1 "SW_Push" H 3220 5850 50  0001 C CNN
F 2 "" H 3220 6110 50  0001 C CNN
F 3 "" H 3220 6110 50  0001 C CNN
	1    3220 5910
	1    0    0    -1  
$EndComp
Text GLabel 2960 5910 0    60   Output ~ 0
CBTN2
$Comp
L GND #PWR17
U 1 1 59EBABB3
P 3420 5910
F 0 "#PWR17" H 3420 5660 50  0001 C CNN
F 1 "GND" H 3420 5760 50  0000 C CNN
F 2 "" H 3420 5910 50  0001 C CNN
F 3 "" H 3420 5910 50  0001 C CNN
	1    3420 5910
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW3
U 1 1 59EBAD06
P 4400 5910
F 0 "SW3" H 4450 6010 50  0000 L CNN
F 1 "SW_Push" H 4400 5850 50  0001 C CNN
F 2 "" H 4400 6110 50  0001 C CNN
F 3 "" H 4400 6110 50  0001 C CNN
	1    4400 5910
	1    0    0    -1  
$EndComp
Text GLabel 4140 5910 0    60   Output ~ 0
CBTN3
$Comp
L GND #PWR20
U 1 1 59EBAD0E
P 4600 5910
F 0 "#PWR20" H 4600 5660 50  0001 C CNN
F 1 "GND" H 4600 5760 50  0000 C CNN
F 2 "" H 4600 5910 50  0001 C CNN
F 3 "" H 4600 5910 50  0001 C CNN
	1    4600 5910
	1    0    0    -1  
$EndComp
$Comp
L USB_A J9
U 1 1 59EBB3E7
P 10170 4850
F 0 "J9" H 9970 5300 50  0000 L CNN
F 1 "USB_A" H 9970 5200 50  0000 L CNN
F 2 "" H 10320 4800 50  0001 C CNN
F 3 "" H 10320 4800 50  0001 C CNN
	1    10170 4850
	1    0    0    -1  
$EndComp
NoConn ~ 10470 4850
NoConn ~ 10470 4950
$Comp
L VCC #PWR49
U 1 1 59EBB5A1
P 10470 4650
F 0 "#PWR49" H 10470 4500 50  0001 C CNN
F 1 "VCC" H 10470 4800 50  0000 C CNN
F 2 "" H 10470 4650 50  0001 C CNN
F 3 "" H 10470 4650 50  0001 C CNN
	1    10470 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR47
U 1 1 59EBB615
P 10070 5250
F 0 "#PWR47" H 10070 5000 50  0001 C CNN
F 1 "GND" H 10070 5100 50  0000 C CNN
F 2 "" H 10070 5250 50  0001 C CNN
F 3 "" H 10070 5250 50  0001 C CNN
	1    10070 5250
	1    0    0    -1  
$EndComp
$Comp
L IRLIZ44N Q3
U 1 1 59EBB689
P 10070 5590
F 0 "Q3" H 10320 5665 50  0000 L CNN
F 1 "IRL540N" H 10320 5590 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 10320 5515 50  0001 L CIN
F 3 "" H 10070 5590 50  0001 L CNN
	1    10070 5590
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR48
U 1 1 59EBB82E
P 10170 5790
F 0 "#PWR48" H 10170 5540 50  0001 C CNN
F 1 "GND" H 10170 5640 50  0000 C CNN
F 2 "" H 10170 5790 50  0001 C CNN
F 3 "" H 10170 5790 50  0001 C CNN
	1    10170 5790
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 59EBB8A5
P 9870 5740
F 0 "R16" V 9950 5740 50  0000 C CNN
F 1 "10K" V 9870 5740 50  0000 C CNN
F 2 "" V 9800 5740 50  0001 C CNN
F 3 "" H 9870 5740 50  0001 C CNN
	1    9870 5740
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR46
U 1 1 59EBB950
P 9870 5890
F 0 "#PWR46" H 9870 5640 50  0001 C CNN
F 1 "GND" H 9870 5740 50  0000 C CNN
F 2 "" H 9870 5890 50  0001 C CNN
F 3 "" H 9870 5890 50  0001 C CNN
	1    9870 5890
	1    0    0    -1  
$EndComp
Text GLabel 9780 5590 0    60   Input ~ 0
LAMP
Text Notes 9080 5440 0    60   Italic 0
USB type A (host)\nfor the signal lamp
$Comp
L Conn_01x04_Female J6
U 1 1 59EBC81D
P 6160 2510
F 0 "J6" H 6160 2710 50  0000 C CNN
F 1 "Daughter board" V 6240 2480 50  0000 C CNN
F 2 "" H 6160 2510 50  0001 C CNN
F 3 "" H 6160 2510 50  0001 C CNN
	1    6160 2510
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR28
U 1 1 59EBCB25
P 5960 2410
F 0 "#PWR28" H 5960 2260 50  0001 C CNN
F 1 "VCC" H 5960 2560 50  0000 C CNN
F 2 "" H 5960 2410 50  0001 C CNN
F 3 "" H 5960 2410 50  0001 C CNN
	1    5960 2410
	1    0    0    -1  
$EndComp
Text GLabel 5920 2610 0    60   Input ~ 0
I2C_SCL
Text GLabel 5920 2760 0    60   Input ~ 0
I2C_SDA
$Comp
L GND #PWR24
U 1 1 59EB4146
P 5360 2510
F 0 "#PWR24" H 5360 2260 50  0001 C CNN
F 1 "GND" H 5360 2360 50  0000 C CNN
F 2 "" H 5360 2510 50  0001 C CNN
F 3 "" H 5360 2510 50  0001 C CNN
	1    5360 2510
	1    0    0    -1  
$EndComp
Text GLabel 3730 2680 2    60   Output ~ 0
I2C_SCL
Text GLabel 4200 2780 2    60   Output ~ 0
I2C_SDA
Text GLabel 3730 1680 2    60   Output ~ 0
MOSI
Text GLabel 4140 1780 2    60   Input ~ 0
MISO
Text GLabel 1420 1480 0    60   Input ~ 0
RESET
Text GLabel 4140 1580 2    60   Input ~ 0
SCK
$Comp
L Jumper JP1
U 1 1 59EB71E9
P 4550 1460
F 0 "JP1" H 4550 1610 50  0000 C CNN
F 1 "Jumper" H 4550 1380 50  0000 C CNN
F 2 "" H 4550 1460 50  0001 C CNN
F 3 "" H 4550 1460 50  0001 C CNN
	1    4550 1460
	1    0    0    -1  
$EndComp
Text GLabel 4850 1460 2    60   Output ~ 0
SOUND
$Comp
L C C3
U 1 1 59EB7B64
P 1030 4610
F 0 "C3" H 920 4710 50  0000 L CNN
F 1 "0.1uF" H 790 4520 50  0000 L CNN
F 2 "" H 1068 4460 50  0001 C CNN
F 3 "" H 1030 4610 50  0001 C CNN
	1    1030 4610
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 59EB7C3A
P 1030 4760
F 0 "#PWR3" H 1030 4510 50  0001 C CNN
F 1 "GND" H 1030 4610 50  0000 C CNN
F 2 "" H 1030 4760 50  0001 C CNN
F 3 "" H 1030 4760 50  0001 C CNN
	1    1030 4760
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR2
U 1 1 59EB7CBD
P 1030 4460
F 0 "#PWR2" H 1030 4310 50  0001 C CNN
F 1 "VCC" H 1030 4610 50  0000 C CNN
F 2 "" H 1030 4460 50  0001 C CNN
F 3 "" H 1030 4460 50  0001 C CNN
	1    1030 4460
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 59EB7D86
P 1390 4610
F 0 "C4" H 1280 4710 50  0000 L CNN
F 1 "0.1uF" H 1150 4520 50  0000 L CNN
F 2 "" H 1428 4460 50  0001 C CNN
F 3 "" H 1390 4610 50  0001 C CNN
	1    1390 4610
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 59EB7D8C
P 1390 4760
F 0 "#PWR5" H 1390 4510 50  0001 C CNN
F 1 "GND" H 1390 4610 50  0000 C CNN
F 2 "" H 1390 4760 50  0001 C CNN
F 3 "" H 1390 4760 50  0001 C CNN
	1    1390 4760
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR4
U 1 1 59EB7D92
P 1390 4460
F 0 "#PWR4" H 1390 4310 50  0001 C CNN
F 1 "VCC" H 1390 4610 50  0000 C CNN
F 2 "" H 1390 4460 50  0001 C CNN
F 3 "" H 1390 4460 50  0001 C CNN
	1    1390 4460
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 59EB87F3
P 6900 4860
F 0 "C6" H 6790 4960 50  0000 L CNN
F 1 "0.1uF" H 6660 4770 50  0000 L CNN
F 2 "" H 6938 4710 50  0001 C CNN
F 3 "" H 6900 4860 50  0001 C CNN
	1    6900 4860
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR38
U 1 1 59EB87F9
P 6900 5010
F 0 "#PWR38" H 6900 4760 50  0001 C CNN
F 1 "GND" H 6900 4860 50  0000 C CNN
F 2 "" H 6900 5010 50  0001 C CNN
F 3 "" H 6900 5010 50  0001 C CNN
	1    6900 5010
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR37
U 1 1 59EB87FF
P 6900 4710
F 0 "#PWR37" H 6900 4560 50  0001 C CNN
F 1 "VCC" H 6900 4860 50  0000 C CNN
F 2 "" H 6900 4710 50  0001 C CNN
F 3 "" H 6900 4710 50  0001 C CNN
	1    6900 4710
	1    0    0    -1  
$EndComp
$Comp
L Fuse F1
U 1 1 59EB8E94
P 10760 1580
F 0 "F1" V 10840 1580 50  0000 C CNN
F 1 "500mA" V 10685 1580 50  0000 C CNN
F 2 "" V 10690 1580 50  0001 C CNN
F 3 "" H 10760 1580 50  0001 C CNN
	1    10760 1580
	-1   0    0    1   
$EndComp
$Comp
L Jumper JP2
U 1 1 59EBAFB0
P 10460 1730
F 0 "JP2" H 10460 1880 50  0000 C CNN
F 1 "Jumper" H 10460 1650 50  0000 C CNN
F 2 "" H 10460 1730 50  0001 C CNN
F 3 "" H 10460 1730 50  0001 C CNN
	1    10460 1730
	1    0    0    -1  
$EndComp
Text GLabel 3730 1480 2    60   Output ~ 0
LAMP
Text GLabel 3730 3880 2    60   Output ~ 0
LCD_EN
Text GLabel 4120 3980 2    60   Output ~ 0
LCD_RS
Text GLabel 3730 4080 2    60   Output ~ 0
LCD_D4
Text GLabel 4130 4180 2    60   Output ~ 0
LCD_D5
Text GLabel 3730 4280 2    60   Output ~ 0
LCD_D6
Text GLabel 4130 4380 2    60   Output ~ 0
LCD_D7
Text GLabel 4150 3180 2    60   Input ~ 0
CBTN1
Text GLabel 4150 3580 2    60   Input ~ 0
CBTN2
Text GLabel 3730 3680 2    60   Input ~ 0
CBTN3
Text GLabel 4150 2180 2    60   Input ~ 0
DUMMY
Text GLabel 3730 2880 2    60   Input ~ 0
PBTN1
Text GLabel 4140 2980 2    60   Output ~ 0
PLED1
Text GLabel 3730 3080 2    60   Input ~ 0
PBTN2
Text GLabel 3730 3280 2    60   Output ~ 0
PLED2
Text GLabel 4150 3380 2    60   Input ~ 0
PBTN3
Text GLabel 3730 1880 2    60   Output ~ 0
PLED3
Text GLabel 4140 1980 2    60   Input ~ 0
PBTN4
Text GLabel 3730 2080 2    60   Output ~ 0
PLED4
Text GLabel 3730 2380 2    60   Input ~ 0
PBTN5
Text GLabel 4160 2480 2    60   Output ~ 0
PLED5
$Comp
L VCC #PWR7
U 1 1 59EC6A2F
P 1480 2680
F 0 "#PWR7" H 1480 2530 50  0001 C CNN
F 1 "VCC" H 1480 2830 50  0000 C CNN
F 2 "" H 1480 2680 50  0001 C CNN
F 3 "" H 1480 2680 50  0001 C CNN
	1    1480 2680
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 59ED0CE8
P 9160 3750
F 0 "R13" V 9240 3750 50  0000 C CNN
F 1 "200R" V 9160 3750 50  0000 C CNN
F 2 "" V 9090 3750 50  0001 C CNN
F 3 "" H 9160 3750 50  0001 C CNN
	1    9160 3750
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 59ED0EE2
P 9500 3750
F 0 "R15" V 9580 3750 50  0000 C CNN
F 1 "200R" V 9500 3750 50  0000 C CNN
F 2 "" V 9430 3750 50  0001 C CNN
F 3 "" H 9500 3750 50  0001 C CNN
	1    9500 3750
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 59ED0F8D
P 8990 3750
F 0 "R12" V 9070 3750 50  0000 C CNN
F 1 "200R" V 8990 3750 50  0000 C CNN
F 2 "" V 8920 3750 50  0001 C CNN
F 3 "" H 8990 3750 50  0001 C CNN
	1    8990 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2180 1230 2880 1230
Connection ~ 2430 1230
Connection ~ 2530 1230
Connection ~ 2780 1230
Wire Wire Line
	1120 1830 1480 1830
Wire Wire Line
	1480 1830 1480 1880
Wire Wire Line
	1120 2130 1480 2130
Wire Wire Line
	1480 2130 1480 2080
Connection ~ 1300 2130
Connection ~ 1300 1830
Wire Wire Line
	820  1830 820  2330
Connection ~ 820  2130
Wire Wire Line
	2230 4630 2780 4630
Connection ~ 2480 4630
Connection ~ 2580 4630
Connection ~ 2680 4630
Wire Wire Line
	1400 2830 1480 2830
Wire Wire Line
	1020 2830 1100 2830
Wire Wire Line
	1020 2960 1100 2960
Wire Wire Line
	1400 2960 1480 2930
Wire Wire Line
	8860 4100 8940 4100
Wire Wire Line
	7780 1410 8280 1410
Wire Wire Line
	8280 1410 8280 1580
Wire Wire Line
	7780 1540 7780 1410
Wire Wire Line
	8030 1840 8030 1940
Wire Wire Line
	8030 1540 8030 1410
Connection ~ 8030 1410
Wire Wire Line
	7650 2140 7730 2140
Wire Wire Line
	6650 1290 6650 1590
Connection ~ 6650 1390
Connection ~ 6650 1490
Wire Wire Line
	6150 1490 5790 1490
Wire Wire Line
	9860 2330 9760 2330
Wire Wire Line
	10220 2050 10160 2030
Wire Wire Line
	10210 1910 10160 1930
Wire Wire Line
	7780 1840 7780 1900
Wire Wire Line
	7780 1900 8280 1900
Connection ~ 8030 1900
Wire Wire Line
	8280 1900 8280 1680
Wire Wire Line
	6740 3830 6540 3830
Wire Wire Line
	6540 4130 6650 4130
Wire Wire Line
	6650 4130 6650 4090
Wire Wire Line
	6540 4230 6650 4230
Wire Wire Line
	5740 4330 5740 4630
Connection ~ 5740 4430
Connection ~ 5740 4530
Wire Wire Line
	5600 4450 5600 4430
Wire Wire Line
	5600 4430 5740 4430
Wire Wire Line
	5740 3930 5230 3930
Wire Wire Line
	5230 3930 5230 3960
Wire Wire Line
	5340 4830 5740 4830
Wire Wire Line
	5340 5030 5740 5030
Wire Wire Line
	1600 7050 1750 7050
Wire Wire Line
	1750 7050 1750 7010
Wire Wire Line
	1630 7260 1650 7260
Wire Wire Line
	1950 7260 1950 7010
Wire Wire Line
	2540 7060 2690 7060
Wire Wire Line
	2690 7060 2690 7020
Wire Wire Line
	2570 7270 2590 7270
Wire Wire Line
	2890 7270 2890 7020
Wire Wire Line
	3490 7060 3640 7060
Wire Wire Line
	3640 7060 3640 7020
Wire Wire Line
	3520 7270 3540 7270
Wire Wire Line
	3840 7270 3840 7020
Wire Wire Line
	4450 7060 4600 7060
Wire Wire Line
	4600 7060 4600 7020
Wire Wire Line
	4480 7270 4500 7270
Wire Wire Line
	4800 7270 4800 7020
Wire Wire Line
	5460 7060 5610 7060
Wire Wire Line
	5610 7060 5610 7020
Wire Wire Line
	5490 7270 5510 7270
Wire Wire Line
	5810 7270 5810 7020
Wire Wire Line
	1730 5910 1790 5910
Wire Wire Line
	2960 5910 3020 5910
Wire Wire Line
	4140 5910 4200 5910
Wire Wire Line
	10170 5250 10170 5390
Wire Wire Line
	9780 5590 9870 5590
Wire Wire Line
	5920 2760 5960 2760
Wire Wire Line
	5960 2760 5960 2710
Wire Wire Line
	5960 2610 5920 2610
Wire Wire Line
	5960 2510 5360 2510
Wire Wire Line
	3730 2780 4200 2780
Wire Wire Line
	4140 1780 3730 1780
Wire Wire Line
	1420 1480 1480 1480
Wire Wire Line
	3730 3980 4120 3980
Wire Wire Line
	3730 4180 4130 4180
Wire Wire Line
	4130 4380 3730 4380
Wire Wire Line
	4150 2180 3730 2180
Wire Wire Line
	4140 2980 3730 2980
Wire Wire Line
	4150 3380 3730 3380
Wire Wire Line
	4140 1980 3730 1980
Wire Wire Line
	4160 2480 3730 2480
Wire Wire Line
	4150 3180 3730 3180
Wire Wire Line
	4150 3580 3730 3580
Wire Wire Line
	3730 1580 4140 1580
Wire Wire Line
	4250 1460 4070 1460
Wire Wire Line
	4070 1460 4070 1580
Connection ~ 4070 1580
Wire Wire Line
	8990 3900 9500 3900
Connection ~ 9160 3900
Connection ~ 9240 3900
Connection ~ 9330 3900
Wire Wire Line
	8990 3600 9500 3600
Connection ~ 9330 3600
Connection ~ 9240 3600
Connection ~ 9160 3600
$EndSCHEMATC
