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
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 6250 3160
Connection ~ 6330 3160
Connection ~ 6420 3160
Wire Wire Line
	6080 3160 6590 3160
Connection ~ 6420 3460
Connection ~ 6330 3460
Connection ~ 6250 3460
Wire Wire Line
	6080 3460 6590 3460
Wire Wire Line
	5840 3660 6030 3660
$Comp
L R R18
U 1 1 5A315BAA
P 6080 3310
F 0 "R18" V 6160 3310 50  0000 C CNN
F 1 "200R" V 6080 3310 50  0000 C CNN
F 2 "" V 6010 3310 50  0001 C CNN
F 3 "" H 6080 3310 50  0001 C CNN
	1    6080 3310
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 5A315BB1
P 6590 3310
F 0 "R21" V 6670 3310 50  0000 C CNN
F 1 "200R" V 6590 3310 50  0000 C CNN
F 2 "" V 6520 3310 50  0001 C CNN
F 3 "" H 6590 3310 50  0001 C CNN
	1    6590 3310
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 5A315BB8
P 6250 3310
F 0 "R19" V 6330 3310 50  0000 C CNN
F 1 "200R" V 6250 3310 50  0000 C CNN
F 2 "" V 6180 3310 50  0001 C CNN
F 3 "" H 6250 3310 50  0001 C CNN
	1    6250 3310
	1    0    0    -1  
$EndComp
Text Notes 4530 3270 0    60   Italic 0
Dummy load to make sure\npowerbanks don't shut off\npower due to low current
$Comp
L GND #PWR51
U 1 1 5A315BC0
P 6330 3860
F 0 "#PWR51" H 6330 3610 50  0001 C CNN
F 1 "GND" H 6330 3710 50  0000 C CNN
F 2 "" H 6330 3860 50  0001 C CNN
F 3 "" H 6330 3860 50  0001 C CNN
	1    6330 3860
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR49
U 1 1 5A315BC6
P 6030 3960
F 0 "#PWR49" H 6030 3710 50  0001 C CNN
F 1 "GND" H 6030 3810 50  0000 C CNN
F 2 "" H 6030 3960 50  0001 C CNN
F 3 "" H 6030 3960 50  0001 C CNN
	1    6030 3960
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 5A315BCC
P 6030 3810
F 0 "R17" V 6110 3810 50  0000 C CNN
F 1 "10K" V 6030 3810 50  0000 C CNN
F 2 "" V 5960 3810 50  0001 C CNN
F 3 "" H 6030 3810 50  0001 C CNN
	1    6030 3810
	1    0    0    -1  
$EndComp
$Comp
L IRLIZ44N Q2
U 1 1 5A315BD4
P 6230 3660
F 0 "Q2" H 6480 3735 50  0000 L CNN
F 1 "IRL540N" H 6480 3660 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Horizontal" H 6480 3585 50  0001 L CIN
F 3 "" H 6230 3660 50  0001 L CNN
	1    6230 3660
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR50
U 1 1 5A315BDB
P 6330 3160
F 0 "#PWR50" H 6330 3010 50  0001 C CNN
F 1 "VCC" H 6330 3310 50  0000 C CNN
F 2 "" H 6330 3160 50  0001 C CNN
F 3 "" H 6330 3160 50  0001 C CNN
	1    6330 3160
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 5A315BE1
P 6420 3310
F 0 "R20" V 6500 3310 50  0000 C CNN
F 1 "200R" V 6420 3310 50  0000 C CNN
F 2 "" V 6350 3310 50  0001 C CNN
F 3 "" H 6420 3310 50  0001 C CNN
	1    6420 3310
	1    0    0    -1  
$EndComp
Text HLabel 5840 3660 0    60   Input ~ 0
DUMMY_EN
$EndSCHEMATC
