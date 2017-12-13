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
Sheet 1 4
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
F 2 "Housings_QFP:TQFP-44_10x10mm_Pitch0.8mm" H 2630 3030 50  0001 C CIN
F 3 "" H 3730 4130 50  0001 C CNN
	1    2630 3030
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 59E66238
P 2530 1230
F 0 "#PWR01" H 2530 1080 50  0001 C CNN
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
L C C2
U 1 1 59E663E6
P 970 1830
F 0 "C2" H 995 1930 50  0000 L CNN
F 1 "18pF" H 995 1730 50  0000 L CNN
F 2 "" H 1008 1680 50  0001 C CNN
F 3 "" H 970 1830 50  0001 C CNN
	1    970  1830
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 59E66491
P 970 2130
F 0 "C3" H 995 2230 50  0000 L CNN
F 1 "18pF" H 995 2030 50  0000 L CNN
F 2 "" H 1008 1980 50  0001 C CNN
F 3 "" H 970 2130 50  0001 C CNN
	1    970  2130
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 59E6655E
P 820 2330
F 0 "#PWR02" H 820 2080 50  0001 C CNN
F 1 "GND" H 820 2180 50  0000 C CNN
F 2 "" H 820 2330 50  0001 C CNN
F 3 "" H 820 2330 50  0001 C CNN
	1    820  2330
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 59E666E1
P 1480 3880
F 0 "#PWR03" H 1480 3730 50  0001 C CNN
F 1 "VCC" H 1480 4030 50  0000 C CNN
F 2 "" H 1480 3880 50  0001 C CNN
F 3 "" H 1480 3880 50  0001 C CNN
	1    1480 3880
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 59E66846
P 2480 4630
F 0 "#PWR04" H 2480 4380 50  0001 C CNN
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
L GND #PWR05
U 1 1 59E8F8AC
P 1480 3380
F 0 "#PWR05" H 1480 3130 50  0001 C CNN
F 1 "GND" H 1480 3230 50  0000 C CNN
F 2 "" H 1480 3380 50  0001 C CNN
F 3 "" H 1480 3380 50  0001 C CNN
	1    1480 3380
	1    0    0    -1  
$EndComp
$Comp
L USB_B J7
U 1 1 59EB3731
P 7560 5300
F 0 "J7" H 7360 5750 50  0000 L CNN
F 1 "USB_B" H 7360 5650 50  0000 L CNN
F 2 "" H 7710 5250 50  0001 C CNN
F 3 "" H 7710 5250 50  0001 C CNN
	1    7560 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 59EB3883
P 7560 5700
F 0 "#PWR06" H 7560 5450 50  0001 C CNN
F 1 "GND" H 7560 5550 50  0000 C CNN
F 2 "" H 7560 5700 50  0001 C CNN
F 3 "" H 7560 5700 50  0001 C CNN
	1    7560 5700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 59EB408E
P 8640 4800
F 0 "#PWR07" H 8640 4650 50  0001 C CNN
F 1 "VCC" H 8640 4950 50  0000 C CNN
F 2 "" H 8640 4800 50  0001 C CNN
F 3 "" H 8640 4800 50  0001 C CNN
	1    8640 4800
	1    0    0    -1  
$EndComp
Text Notes 7440 6240 0    59   Italic 0
USB type B (device) for\npower and programming
$Comp
L GND #PWR08
U 1 1 59EB8ACB
P 2050 7010
F 0 "#PWR08" H 2050 6760 50  0001 C CNN
F 1 "GND" H 2050 6860 50  0000 C CNN
F 2 "" H 2050 7010 50  0001 C CNN
F 3 "" H 2050 7010 50  0001 C CNN
	1    2050 7010
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 59EB8B86
P 1850 7010
F 0 "#PWR09" H 1850 6760 50  0001 C CNN
F 1 "GND" H 1850 6860 50  0000 C CNN
F 2 "" H 1850 7010 50  0001 C CNN
F 3 "" H 1850 7010 50  0001 C CNN
	1    1850 7010
	1    0    0    -1  
$EndComp
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
L GND #PWR010
U 1 1 59EB925C
P 2990 7020
F 0 "#PWR010" H 2990 6770 50  0001 C CNN
F 1 "GND" H 2990 6870 50  0000 C CNN
F 2 "" H 2990 7020 50  0001 C CNN
F 3 "" H 2990 7020 50  0001 C CNN
	1    2990 7020
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 59EB9262
P 2790 7020
F 0 "#PWR011" H 2790 6770 50  0001 C CNN
F 1 "GND" H 2790 6870 50  0000 C CNN
F 2 "" H 2790 7020 50  0001 C CNN
F 3 "" H 2790 7020 50  0001 C CNN
	1    2790 7020
	1    0    0    -1  
$EndComp
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
L GND #PWR012
U 1 1 59EB946E
P 3940 7020
F 0 "#PWR012" H 3940 6770 50  0001 C CNN
F 1 "GND" H 3940 6870 50  0000 C CNN
F 2 "" H 3940 7020 50  0001 C CNN
F 3 "" H 3940 7020 50  0001 C CNN
	1    3940 7020
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 59EB9474
P 3740 7020
F 0 "#PWR013" H 3740 6770 50  0001 C CNN
F 1 "GND" H 3740 6870 50  0000 C CNN
F 2 "" H 3740 7020 50  0001 C CNN
F 3 "" H 3740 7020 50  0001 C CNN
	1    3740 7020
	1    0    0    -1  
$EndComp
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
L GND #PWR014
U 1 1 59EB95EA
P 4900 7020
F 0 "#PWR014" H 4900 6770 50  0001 C CNN
F 1 "GND" H 4900 6870 50  0000 C CNN
F 2 "" H 4900 7020 50  0001 C CNN
F 3 "" H 4900 7020 50  0001 C CNN
	1    4900 7020
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 59EB95F0
P 4700 7020
F 0 "#PWR015" H 4700 6770 50  0001 C CNN
F 1 "GND" H 4700 6870 50  0000 C CNN
F 2 "" H 4700 7020 50  0001 C CNN
F 3 "" H 4700 7020 50  0001 C CNN
	1    4700 7020
	1    0    0    -1  
$EndComp
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
L GND #PWR016
U 1 1 59EB9B59
P 5910 7020
F 0 "#PWR016" H 5910 6770 50  0001 C CNN
F 1 "GND" H 5910 6870 50  0000 C CNN
F 2 "" H 5910 7020 50  0001 C CNN
F 3 "" H 5910 7020 50  0001 C CNN
	1    5910 7020
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 59EB9B5F
P 5710 7020
F 0 "#PWR017" H 5710 6770 50  0001 C CNN
F 1 "GND" H 5710 6870 50  0000 C CNN
F 2 "" H 5710 7020 50  0001 C CNN
F 3 "" H 5710 7020 50  0001 C CNN
	1    5710 7020
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 59EB9B69
P 5660 7270
F 0 "R9" V 5740 7270 50  0000 C CNN
F 1 "220R" V 5660 7270 50  0000 C CNN
F 2 "" V 5590 7270 50  0001 C CNN
F 3 "" H 5660 7270 50  0001 C CNN
	1    5660 7270
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW1
U 1 1 59EBA50E
P 3170 5660
F 0 "SW1" H 3220 5760 50  0000 L CNN
F 1 "SW_Push" H 3170 5600 50  0001 C CNN
F 2 "" H 3170 5860 50  0001 C CNN
F 3 "" H 3170 5860 50  0001 C CNN
	1    3170 5660
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 59EBA9B7
P 3370 5660
F 0 "#PWR018" H 3370 5410 50  0001 C CNN
F 1 "GND" H 3370 5510 50  0000 C CNN
F 2 "" H 3370 5660 50  0001 C CNN
F 3 "" H 3370 5660 50  0001 C CNN
	1    3370 5660
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 59EBABAB
P 4400 5660
F 0 "SW2" H 4450 5760 50  0000 L CNN
F 1 "SW_Push" H 4400 5600 50  0001 C CNN
F 2 "" H 4400 5860 50  0001 C CNN
F 3 "" H 4400 5860 50  0001 C CNN
	1    4400 5660
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 59EBABB3
P 4600 5660
F 0 "#PWR019" H 4600 5410 50  0001 C CNN
F 1 "GND" H 4600 5510 50  0000 C CNN
F 2 "" H 4600 5660 50  0001 C CNN
F 3 "" H 4600 5660 50  0001 C CNN
	1    4600 5660
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW3
U 1 1 59EBAD06
P 5580 5660
F 0 "SW3" H 5630 5760 50  0000 L CNN
F 1 "SW_Push" H 5580 5600 50  0001 C CNN
F 2 "" H 5580 5860 50  0001 C CNN
F 3 "" H 5580 5860 50  0001 C CNN
	1    5580 5660
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 59EBAD0E
P 5780 5660
F 0 "#PWR020" H 5780 5410 50  0001 C CNN
F 1 "GND" H 5780 5510 50  0000 C CNN
F 2 "" H 5780 5660 50  0001 C CNN
F 3 "" H 5780 5660 50  0001 C CNN
	1    5780 5660
	1    0    0    -1  
$EndComp
$Comp
L USB_A J8
U 1 1 59EBB3E7
P 10300 4610
F 0 "J8" H 10100 5060 50  0000 L CNN
F 1 "USB_A" H 10100 4960 50  0000 L CNN
F 2 "" H 10450 4560 50  0001 C CNN
F 3 "" H 10450 4560 50  0001 C CNN
	1    10300 4610
	1    0    0    -1  
$EndComp
NoConn ~ 10600 4610
NoConn ~ 10600 4710
$Comp
L VCC #PWR021
U 1 1 59EBB5A1
P 10600 4410
F 0 "#PWR021" H 10600 4260 50  0001 C CNN
F 1 "VCC" H 10600 4560 50  0000 C CNN
F 2 "" H 10600 4410 50  0001 C CNN
F 3 "" H 10600 4410 50  0001 C CNN
	1    10600 4410
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 59EBB615
P 10200 5010
F 0 "#PWR022" H 10200 4760 50  0001 C CNN
F 1 "GND" H 10200 4860 50  0000 C CNN
F 2 "" H 10200 5010 50  0001 C CNN
F 3 "" H 10200 5010 50  0001 C CNN
	1    10200 5010
	1    0    0    -1  
$EndComp
$Comp
L IRLIZ44N Q2
U 1 1 59EBB689
P 10200 5350
F 0 "Q2" H 10450 5425 50  0000 L CNN
F 1 "IRL540N" H 10450 5350 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Horizontal" H 10450 5275 50  0001 L CIN
F 3 "" H 10200 5350 50  0001 L CNN
	1    10200 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 59EBB82E
P 10300 5550
F 0 "#PWR023" H 10300 5300 50  0001 C CNN
F 1 "GND" H 10300 5400 50  0000 C CNN
F 2 "" H 10300 5550 50  0001 C CNN
F 3 "" H 10300 5550 50  0001 C CNN
	1    10300 5550
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 59EBB8A5
P 10000 5500
F 0 "R15" V 10080 5500 50  0000 C CNN
F 1 "10K" V 10000 5500 50  0000 C CNN
F 2 "" V 9930 5500 50  0001 C CNN
F 3 "" H 10000 5500 50  0001 C CNN
	1    10000 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 59EBB950
P 10000 5650
F 0 "#PWR024" H 10000 5400 50  0001 C CNN
F 1 "GND" H 10000 5500 50  0000 C CNN
F 2 "" H 10000 5650 50  0001 C CNN
F 3 "" H 10000 5650 50  0001 C CNN
	1    10000 5650
	1    0    0    -1  
$EndComp
Text Notes 9820 6230 0    59   Italic 0
USB type A (host)\nfor the signal lamp
$Comp
L C C1
U 1 1 59EB7B64
P 910 5010
F 0 "C1" H 800 5110 50  0000 L CNN
F 1 "0.1uF" H 670 4920 50  0000 L CNN
F 2 "" H 948 4860 50  0001 C CNN
F 3 "" H 910 5010 50  0001 C CNN
	1    910  5010
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 59EB7C3A
P 910 5160
F 0 "#PWR025" H 910 4910 50  0001 C CNN
F 1 "GND" H 910 5010 50  0000 C CNN
F 2 "" H 910 5160 50  0001 C CNN
F 3 "" H 910 5160 50  0001 C CNN
	1    910  5160
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR026
U 1 1 59EB7CBD
P 910 4860
F 0 "#PWR026" H 910 4710 50  0001 C CNN
F 1 "VCC" H 910 5010 50  0000 C CNN
F 2 "" H 910 4860 50  0001 C CNN
F 3 "" H 910 4860 50  0001 C CNN
	1    910  4860
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 59EB7D86
P 1270 5010
F 0 "C4" H 1160 5110 50  0000 L CNN
F 1 "0.1uF" H 1030 4920 50  0000 L CNN
F 2 "" H 1308 4860 50  0001 C CNN
F 3 "" H 1270 5010 50  0001 C CNN
	1    1270 5010
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 59EB7D8C
P 1270 5160
F 0 "#PWR027" H 1270 4910 50  0001 C CNN
F 1 "GND" H 1270 5010 50  0000 C CNN
F 2 "" H 1270 5160 50  0001 C CNN
F 3 "" H 1270 5160 50  0001 C CNN
	1    1270 5160
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR028
U 1 1 59EB7D92
P 1270 4860
F 0 "#PWR028" H 1270 4710 50  0001 C CNN
F 1 "VCC" H 1270 5010 50  0000 C CNN
F 2 "" H 1270 4860 50  0001 C CNN
F 3 "" H 1270 4860 50  0001 C CNN
	1    1270 4860
	1    0    0    -1  
$EndComp
$Comp
L Fuse F1
U 1 1 59EB8E94
P 8640 4950
F 0 "F1" V 8720 4950 50  0000 C CNN
F 1 "1A" V 8565 4950 50  0000 C CNN
F 2 "" V 8570 4950 50  0001 C CNN
F 3 "" H 8640 4950 50  0001 C CNN
	1    8640 4950
	-1   0    0    1   
$EndComp
$Comp
L Jumper JP1
U 1 1 59EBAFB0
P 8160 5100
F 0 "JP1" H 8160 5250 50  0000 C CNN
F 1 "Jumper" H 8160 5020 50  0001 C CNN
F 2 "" H 8160 5100 50  0001 C CNN
F 3 "" H 8160 5100 50  0001 C CNN
	1    8160 5100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR029
U 1 1 59EC6A2F
P 1480 2680
F 0 "#PWR029" H 1480 2530 50  0001 C CNN
F 1 "VCC" H 1480 2830 50  0000 C CNN
F 2 "" H 1480 2680 50  0001 C CNN
F 3 "" H 1480 2680 50  0001 C CNN
	1    1480 2680
	1    0    0    -1  
$EndComp
Text Notes 3340 5470 0    60   Italic 0
Control buttons use the internal pull-ups
$Comp
L RJ10 J1
U 1 1 59F9E9B3
P 1900 6660
F 0 "J1" H 1900 6710 60  0000 C CNN
F 1 "RJ10" H 1900 6560 60  0000 C CNN
F 2 "" H 1875 6635 60  0001 C CNN
F 3 "" H 1875 6635 60  0001 C CNN
	1    1900 6660
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J2
U 1 1 59F9EB79
P 2840 6670
F 0 "J2" H 2840 6720 60  0000 C CNN
F 1 "RJ10" H 2840 6570 60  0000 C CNN
F 2 "" H 2815 6645 60  0001 C CNN
F 3 "" H 2815 6645 60  0001 C CNN
	1    2840 6670
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J3
U 1 1 59F9ED52
P 3790 6670
F 0 "J3" H 3790 6720 60  0000 C CNN
F 1 "RJ10" H 3790 6570 60  0000 C CNN
F 2 "" H 3765 6645 60  0001 C CNN
F 3 "" H 3765 6645 60  0001 C CNN
	1    3790 6670
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J4
U 1 1 59F9EE0B
P 4750 6670
F 0 "J4" H 4750 6720 60  0000 C CNN
F 1 "RJ10" H 4750 6570 60  0000 C CNN
F 2 "" H 4725 6645 60  0001 C CNN
F 3 "" H 4725 6645 60  0001 C CNN
	1    4750 6670
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J5
U 1 1 59F9EEE4
P 5760 6670
F 0 "J5" H 5760 6720 60  0000 C CNN
F 1 "RJ10" H 5760 6570 60  0000 C CNN
F 2 "" H 5735 6645 60  0001 C CNN
F 3 "" H 5735 6645 60  0001 C CNN
	1    5760 6670
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR030
U 1 1 59FAA095
P 1390 1180
F 0 "#PWR030" H 1390 1030 50  0001 C CNN
F 1 "VCC" H 1390 1330 50  0000 C CNN
F 2 "" H 1390 1180 50  0001 C CNN
F 3 "" H 1390 1180 50  0001 C CNN
	1    1390 1180
	1    0    0    -1  
$EndComp
Text Notes 8390 4870 2    39   Italic 0
Break for current\nmeasurement
$Comp
L C C6
U 1 1 5A15E885
P 1620 5010
F 0 "C6" H 1510 5110 50  0000 L CNN
F 1 "0.1uF" H 1380 4920 50  0000 L CNN
F 2 "" H 1658 4860 50  0001 C CNN
F 3 "" H 1620 5010 50  0001 C CNN
	1    1620 5010
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 5A15E88B
P 1620 5160
F 0 "#PWR031" H 1620 4910 50  0001 C CNN
F 1 "GND" H 1620 5010 50  0000 C CNN
F 2 "" H 1620 5160 50  0001 C CNN
F 3 "" H 1620 5160 50  0001 C CNN
	1    1620 5160
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR032
U 1 1 5A15E891
P 1620 4860
F 0 "#PWR032" H 1620 4710 50  0001 C CNN
F 1 "VCC" H 1620 5010 50  0000 C CNN
F 2 "" H 1620 4860 50  0001 C CNN
F 3 "" H 1620 4860 50  0001 C CNN
	1    1620 4860
	1    0    0    -1  
$EndComp
$Sheet
S 8050 1460 740  500 
U 5A30C66D
F0 "Boost Converter" 60
F1 "boost_converter.sch" 60
F2 "BOOST_VOUT" O R 8790 1720 60 
$EndSheet
$Comp
L +28V #PWR033
U 1 1 5A30EB28
P 8890 1720
F 0 "#PWR033" H 8890 1570 50  0001 C CNN
F 1 "+28V" H 8890 1870 50  0000 C CNN
F 2 "" H 9140 1770 50  0001 C CNN
F 3 "" H 9140 1770 50  0001 C CNN
	1    8890 1720
	1    0    0    -1  
$EndComp
$Sheet
S 5190 3490 1220 960 
U 5A311024
F0 "Display" 60
F1 "display.sch" 60
F2 "LCD_SCK" I R 6410 3770 60 
F3 "LCD_MOSI" I R 6410 4110 60 
F4 "LCD_RST" I L 5190 4220 60 
F5 "LCD_CS" I L 5190 3880 60 
$EndSheet
$Comp
L R R8
U 1 1 5A312BDF
P 5010 3700
F 0 "R8" V 5090 3700 50  0000 C CNN
F 1 "10K" V 5010 3700 50  0000 C CNN
F 2 "" V 4940 3700 50  0001 C CNN
F 3 "" H 5010 3700 50  0001 C CNN
	1    5010 3700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR034
U 1 1 5A3130F9
P 5010 3550
F 0 "#PWR034" H 5010 3400 50  0001 C CNN
F 1 "VCC" H 5010 3700 50  0000 C CNN
F 2 "" H 5010 3550 50  0001 C CNN
F 3 "" H 5010 3550 50  0001 C CNN
	1    5010 3550
	1    0    0    -1  
$EndComp
$Sheet
S 5170 1920 690  510 
U 5A3154FA
F0 "Dummy Load" 60
F1 "dummy_load.sch" 60
F2 "DUMMY_EN" I L 5170 2180 60 
$EndSheet
$Comp
L Conn_02x03_Odd_Even J6
U 1 1 5A31A7A1
P 4610 1580
F 0 "J6" H 4660 1780 50  0000 C CNN
F 1 "ICSP" H 4660 1380 50  0000 C CNN
F 2 "" H 4610 1580 50  0001 C CNN
F 3 "" H 4610 1580 50  0001 C CNN
	1    4610 1580
	1    0    0    -1  
$EndComp
Text Label 4200 1480 0    60   ~ 0
MISO
Text Label 4230 1580 0    60   ~ 0
SCK
$Comp
L R R3
U 1 1 59E6611C
P 1390 1330
F 0 "R3" V 1470 1330 50  0000 C CNN
F 1 "10K" V 1390 1330 50  0000 C CNN
F 2 "" V 1320 1330 50  0001 C CNN
F 3 "" H 1390 1330 50  0001 C CNN
	1    1390 1330
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR035
U 1 1 5A31C798
P 4910 1480
F 0 "#PWR035" H 4910 1330 50  0001 C CNN
F 1 "VCC" H 4910 1630 50  0000 C CNN
F 2 "" H 4910 1480 50  0001 C CNN
F 3 "" H 4910 1480 50  0001 C CNN
	1    4910 1480
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 5A31CC00
P 4910 1680
F 0 "#PWR036" H 4910 1430 50  0001 C CNN
F 1 "GND" H 4910 1530 50  0000 C CNN
F 2 "" H 4910 1680 50  0001 C CNN
F 3 "" H 4910 1680 50  0001 C CNN
	1    4910 1680
	1    0    0    -1  
$EndComp
$Comp
L Speaker_Crystal LS1
U 1 1 5A31E08F
P 9930 1720
F 0 "LS1" H 9960 1520 50  0000 R CNN
F 1 "Speaker_Crystal" H 10170 1430 50  0001 R CNN
F 2 "" H 9895 1670 50  0001 C CNN
F 3 "" H 9895 1670 50  0001 C CNN
	1    9930 1720
	1    0    0    -1  
$EndComp
$Comp
L 2N3904 Q1
U 1 1 5A31E796
P 9630 2330
F 0 "Q1" H 9830 2405 50  0000 L CNN
F 1 "2N3904" H 9830 2330 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 9830 2255 50  0001 L CIN
F 3 "" H 9630 2330 50  0001 L CNN
	1    9630 2330
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 5A31EA2B
P 9730 2530
F 0 "#PWR037" H 9730 2280 50  0001 C CNN
F 1 "GND" H 9730 2380 50  0000 C CNN
F 2 "" H 9730 2530 50  0001 C CNN
F 3 "" H 9730 2530 50  0001 C CNN
	1    9730 2530
	1    0    0    -1  
$EndComp
NoConn ~ 3730 2680
NoConn ~ 3730 2780
Text Notes 4800 3270 0    79   Italic 0
TODO: Check whether there\nis an internap pull-up on LCD_EN
$Comp
L Jumper_NO_Small JP3
U 1 1 5A317296
P 9170 1620
F 0 "JP3" V 9160 1710 50  0000 C CNN
F 1 "SoundVcc2" H 9180 1560 50  0001 C CNN
F 2 "" H 9170 1620 50  0001 C CNN
F 3 "" H 9170 1620 50  0001 C CNN
	1    9170 1620
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR038
U 1 1 5A317FA1
P 9170 1440
F 0 "#PWR038" H 9170 1290 50  0001 C CNN
F 1 "VCC" H 9170 1590 50  0000 C CNN
F 2 "" H 9170 1440 50  0001 C CNN
F 3 "" H 9170 1440 50  0001 C CNN
	1    9170 1440
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5A3185A6
P 9510 1720
F 0 "R14" V 9590 1720 50  0000 C CNN
F 1 "0" V 9510 1720 50  0000 C CNN
F 2 "" V 9440 1720 50  0001 C CNN
F 3 "" H 9510 1720 50  0001 C CNN
	1    9510 1720
	0    1    1    0   
$EndComp
Text Notes 9820 1660 2    39   Italic 0
Optional resistor\nto limit volume
$Comp
L R R13
U 1 1 5A31988B
P 9280 2330
F 0 "R13" V 9360 2330 50  0000 C CNN
F 1 "1K" V 9280 2330 50  0000 C CNN
F 2 "" V 9210 2330 50  0001 C CNN
F 3 "" H 9280 2330 50  0001 C CNN
	1    9280 2330
	0    1    1    0   
$EndComp
$Comp
L Jumper_NC_Small JP2
U 1 1 5A31B45C
P 9070 1720
F 0 "JP2" H 9070 1660 50  0000 C CNN
F 1 "Jumper_NC_Small" H 9080 1660 50  0001 C CNN
F 2 "" H 9070 1720 50  0001 C CNN
F 3 "" H 9070 1720 50  0001 C CNN
	1    9070 1720
	1    0    0    -1  
$EndComp
$Comp
L LED_CRGB D1
U 1 1 5A31BFD9
P 8500 3490
F 0 "D1" H 8500 3860 50  0000 C CNN
F 1 "LED_CRGB" H 8500 3140 50  0000 C CNN
F 2 "" H 8500 3440 50  0001 C CNN
F 3 "" H 8500 3440 50  0001 C CNN
	1    8500 3490
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR039
U 1 1 5A31C215
P 8770 3490
F 0 "#PWR039" H 8770 3240 50  0001 C CNN
F 1 "GND" H 8770 3340 50  0000 C CNN
F 2 "" H 8770 3490 50  0001 C CNN
F 3 "" H 8770 3490 50  0001 C CNN
	1    8770 3490
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5A31CBD5
P 8150 3290
F 0 "R10" V 8230 3290 50  0000 C CNN
F 1 "220R" V 8150 3290 50  0000 C CNN
F 2 "" V 8080 3290 50  0001 C CNN
F 3 "" H 8150 3290 50  0001 C CNN
	1    8150 3290
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 5A31CF2D
P 8150 3490
F 0 "R11" V 8230 3490 50  0000 C CNN
F 1 "220R" V 8150 3490 50  0000 C CNN
F 2 "" V 8080 3490 50  0001 C CNN
F 3 "" H 8150 3490 50  0001 C CNN
	1    8150 3490
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 5A31CFEA
P 8150 3690
F 0 "R12" V 8230 3690 50  0000 C CNN
F 1 "220R" V 8150 3690 50  0000 C CNN
F 2 "" V 8080 3690 50  0001 C CNN
F 3 "" H 8150 3690 50  0001 C CNN
	1    8150 3690
	0    1    1    0   
$EndComp
Text Label 8000 3290 2    60   ~ 0
SIGNAL_R
Text Label 8000 3490 2    60   ~ 0
SIGNAL_G
Text Label 8000 3690 2    60   ~ 0
SIGNAL_B
Text Label 3730 1480 0    60   ~ 0
LAMP
Text Label 3730 1680 0    60   ~ 0
MOSI
Text Label 3730 1880 0    60   ~ 0
PLED3
Text Label 3730 1980 0    60   ~ 0
PBTN4
Text Label 3730 2080 0    60   ~ 0
PLED4
Text Label 3730 2380 0    60   ~ 0
PBTN5
Text Label 3730 2480 0    60   ~ 0
PLED5
Text Label 4410 1680 2    60   ~ 0
RST
Text Label 3730 2880 0    60   ~ 0
PBTN1
Text Label 3730 2980 0    60   ~ 0
PLED1
Text Label 3730 3080 0    60   ~ 0
PBTN2
Text Label 3730 3180 0    60   ~ 0
CBTN1
Text Label 3730 3280 0    60   ~ 0
PLED2
Text Label 3730 3380 0    60   ~ 0
PBTN3
Text Label 3730 3580 0    60   ~ 0
CBTN2
Text Label 3730 3680 0    60   ~ 0
CBTN3
Text Label 3730 4080 0    60   ~ 0
SOUND
Text Label 6500 3770 0    60   ~ 0
SCK
Text Label 6510 4110 0    60   ~ 0
MOSI
Text Label 4910 1580 0    60   ~ 0
MOSI
Text Label 1280 1480 2    60   ~ 0
RST
Text Label 1100 2830 2    60   ~ 0
USB_D+
Text Label 1100 2960 2    60   ~ 0
USB_D-
Text Label 2970 5660 2    60   ~ 0
CBTN1
Text Label 4200 5660 2    60   ~ 0
CBTN2
Text Label 5380 5660 2    60   ~ 0
CBTN3
Text Label 7860 5300 0    60   ~ 0
USB_D+
Text Label 7860 5400 0    60   ~ 0
USB_D-
Text Label 9130 2330 2    60   ~ 0
SOUND
Text Label 9910 5350 2    60   ~ 0
LAMP
Text Label 1650 7050 2    60   ~ 0
PBTN1
Text Label 1650 7260 2    60   ~ 0
PLED1
Text Label 2590 7060 2    60   ~ 0
PBTN2
Text Label 2590 7270 2    60   ~ 0
PLED2
Text Label 3540 7060 2    60   ~ 0
PBTN3
Text Label 3540 7270 2    60   ~ 0
PLED3
Text Label 4500 7060 2    60   ~ 0
PBTN4
Text Label 4500 7270 2    60   ~ 0
PLED4
Text Label 5510 7060 2    60   ~ 0
PBTN5
Text Label 5510 7270 2    60   ~ 0
PLED5
Text Label 3730 4180 0    60   ~ 0
SIGNAL_R
Text Label 3730 4280 0    60   ~ 0
SIGNAL_G
Text Label 3730 4380 0    60   ~ 0
SIGNAL_B
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
	1400 2960 1480 2930
Wire Wire Line
	7560 5700 7460 5700
Wire Wire Line
	1750 7050 1750 7010
Wire Wire Line
	1950 7260 1950 7010
Wire Wire Line
	2690 7060 2690 7020
Wire Wire Line
	2890 7270 2890 7020
Wire Wire Line
	3640 7060 3640 7020
Wire Wire Line
	3840 7270 3840 7020
Wire Wire Line
	4600 7060 4600 7020
Wire Wire Line
	4800 7270 4800 7020
Wire Wire Line
	5610 7060 5610 7020
Wire Wire Line
	5810 7270 5810 7020
Wire Wire Line
	10300 5010 10300 5150
Wire Wire Line
	9910 5350 10000 5350
Wire Wire Line
	8640 5100 8460 5100
Wire Wire Line
	3730 3880 5190 3880
Wire Wire Line
	5010 3880 5010 3850
Connection ~ 5010 3880
Wire Wire Line
	6510 4110 6410 4110
Wire Wire Line
	3730 1580 4410 1580
Wire Wire Line
	3730 1780 4110 1780
Wire Wire Line
	4110 1780 4110 1480
Wire Wire Line
	4110 1480 4410 1480
Wire Wire Line
	9730 2130 9730 1820
Wire Wire Line
	9660 1720 9730 1720
Wire Wire Line
	8790 1720 8970 1720
Connection ~ 8890 1720
Wire Wire Line
	9170 1720 9360 1720
Wire Wire Line
	8700 3490 8770 3490
Wire Wire Line
	5170 2180 3730 2180
Wire Wire Line
	6410 3770 6500 3770
Wire Wire Line
	1280 1480 1480 1480
Connection ~ 1390 1480
Wire Wire Line
	1650 7050 1750 7050
Wire Wire Line
	2590 7060 2690 7060
Wire Wire Line
	3540 7060 3640 7060
Wire Wire Line
	4500 7060 4600 7060
Wire Wire Line
	5510 7060 5610 7060
Wire Wire Line
	3730 3980 4560 3980
Wire Wire Line
	4560 3980 4560 4220
Wire Wire Line
	4560 4220 5190 4220
Wire Wire Line
	9170 1440 9170 1520
Text Notes 9470 1250 2    39   Italic 0
Backup power supply\nfor the speaker
Text Notes 8010 2980 0    59   Italic 0
Signal LED
$EndSCHEMATC
