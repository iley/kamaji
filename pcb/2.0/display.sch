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
LIBS:boost-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LCD12864B DS?
U 1 1 5A311520
P 6070 3340
F 0 "DS?" H 5740 4090 50  0000 C CNN
F 1 "LCD12864B" H 6290 4090 50  0000 C CNN
F 2 "kamaji:LCD12864B" H 6070 2440 50  0001 C CIN
F 3 "" H 6270 3140 50  0001 C CNN
	1    6070 3340
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A311527
P 6070 4140
F 0 "#PWR?" H 6070 3890 50  0001 C CNN
F 1 "GND" H 6070 3990 50  0000 C CNN
F 2 "" H 6070 4140 50  0001 C CNN
F 3 "" H 6070 4140 50  0001 C CNN
	1    6070 4140
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5A31152D
P 6070 2540
F 0 "#PWR?" H 6070 2390 50  0001 C CNN
F 1 "VCC" H 6070 2690 50  0000 C CNN
F 2 "" H 6070 2540 50  0001 C CNN
F 3 "" H 6070 2540 50  0001 C CNN
	1    6070 2540
	1    0    0    -1  
$EndComp
Wire Wire Line
	5570 3240 5570 3340
Wire Wire Line
	5570 3340 5570 3440
Wire Wire Line
	5570 3440 5570 3540
Wire Wire Line
	5570 3540 5570 3640
Wire Wire Line
	5570 3640 5570 3740
Wire Wire Line
	5570 3740 5570 3840
Wire Wire Line
	5570 3840 5570 3940
Connection ~ 5570 3340
Connection ~ 5570 3440
Connection ~ 5570 3540
Connection ~ 5570 3640
Connection ~ 5570 3740
Connection ~ 5570 3840
NoConn ~ 6570 2790
$Comp
L VCC #PWR?
U 1 1 5A311544
P 6670 2890
F 0 "#PWR?" H 6670 2740 50  0001 C CNN
F 1 "VCC" H 6670 3040 50  0000 C CNN
F 2 "" H 6670 2890 50  0001 C CNN
F 3 "" H 6670 2890 50  0001 C CNN
	1    6670 2890
	1    0    0    -1  
$EndComp
Wire Wire Line
	6570 2890 6670 2890
$Comp
L GND #PWR?
U 1 1 5A31154B
P 6570 2990
F 0 "#PWR?" H 6570 2740 50  0001 C CNN
F 1 "GND" H 6570 2840 50  0000 C CNN
F 2 "" H 6570 2990 50  0001 C CNN
F 3 "" H 6570 2990 50  0001 C CNN
	1    6570 2990
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5A311551
P 6780 3040
F 0 "#PWR?" H 6780 2890 50  0001 C CNN
F 1 "VCC" H 6780 3190 50  0000 C CNN
F 2 "" H 6780 3040 50  0001 C CNN
F 3 "" H 6780 3040 50  0001 C CNN
	1    6780 3040
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A311557
P 6780 3190
F 0 "R?" V 6700 3190 50  0000 C CNN
F 1 "10K" V 6780 3190 50  0000 C CNN
F 2 "" V 6710 3190 50  0001 C CNN
F 3 "" H 6780 3190 50  0001 C CNN
	1    6780 3190
	-1   0    0    1   
$EndComp
NoConn ~ 6570 3790
$Comp
L R R?
U 1 1 5A311573
P 6720 3840
F 0 "R?" V 6640 3840 50  0000 C CNN
F 1 "10K" V 6720 3840 50  0000 C CNN
F 2 "" V 6650 3840 50  0001 C CNN
F 3 "" H 6720 3840 50  0001 C CNN
	1    6720 3840
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A31157A
P 6720 3990
F 0 "#PWR?" H 6720 3740 50  0001 C CNN
F 1 "GND" H 6720 3840 50  0000 C CNN
F 2 "" H 6720 3990 50  0001 C CNN
F 3 "" H 6720 3990 50  0001 C CNN
	1    6720 3990
	1    0    0    -1  
$EndComp
Wire Wire Line
	6570 3340 6780 3340
Wire Wire Line
	6780 3340 6970 3340
Connection ~ 6780 3340
Wire Wire Line
	6570 3690 6720 3690
Text Notes 3380 2510 0    60   Italic 0
ST7920-based LCD\ndisplay in serial mode
$Comp
L GND #PWR?
U 1 1 5A311585
P 5570 3940
F 0 "#PWR?" H 5570 3690 50  0001 C CNN
F 1 "GND" H 5570 3790 50  0000 C CNN
F 2 "" H 5570 3940 50  0001 C CNN
F 3 "" H 5570 3940 50  0001 C CNN
	1    5570 3940
	1    0    0    -1  
$EndComp
Text HLabel 5130 3220 0    60   Input ~ 0
LCD_SCK
Text HLabel 5130 3000 0    60   Input ~ 0
LCD_MOSI
Text HLabel 6970 3340 2    60   Input ~ 0
LCD_RST
Text HLabel 5130 2790 0    60   Input ~ 0
LCD_CS
Wire Wire Line
	5350 2990 5570 2990
Wire Wire Line
	5260 2890 5570 2890
Wire Wire Line
	5130 3000 5260 3000
Wire Wire Line
	5260 3000 5260 2890
Wire Wire Line
	5130 3220 5350 3220
Wire Wire Line
	5350 3220 5350 2990
Wire Wire Line
	5130 2790 5360 2790
Wire Wire Line
	5360 2790 5570 2790
$EndSCHEMATC
