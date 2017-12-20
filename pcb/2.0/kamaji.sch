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
Sheet 1 2
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
F 2 "Crystals:Crystal_HC49-U_Vertical" H 1300 1980 50  0001 C CNN
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
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1008 1680 50  0001 C CNN
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
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1008 1980 50  0001 C CNN
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
P 1330 2830
F 0 "R1" V 1230 2830 50  0000 C CNN
F 1 "22R" V 1330 2830 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1260 2830 50  0001 C CNN
F 3 "" H 1330 2830 50  0001 C CNN
	1    1330 2830
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 59E8F0DD
P 1330 2930
F 0 "R2" V 1410 2930 50  0000 C CNN
F 1 "22R" V 1330 2930 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1260 2930 50  0001 C CNN
F 3 "" H 1330 2930 50  0001 C CNN
	1    1330 2930
	0    1    1    0   
$EndComp
$Comp
L C C5
U 1 1 59E8F572
P 1480 3230
F 0 "C5" H 1370 3330 50  0000 L CNN
F 1 "0.1uF" H 1240 3140 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1518 3080 50  0001 C CNN
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
F 2 "Connectors:USB_B" H 7710 5250 50  0001 C CNN
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
P 7860 4800
F 0 "#PWR07" H 7860 4650 50  0001 C CNN
F 1 "VCC" H 7860 4950 50  0000 C CNN
F 2 "" H 7860 4800 50  0001 C CNN
F 3 "" H 7860 4800 50  0001 C CNN
	1    7860 4800
	1    0    0    -1  
$EndComp
Text Notes 7440 6240 0    59   Italic 0
USB type B (device) for\npower and programming
$Comp
L GND #PWR08
U 1 1 59EB8ACB
P 1360 6990
F 0 "#PWR08" H 1360 6740 50  0001 C CNN
F 1 "GND" H 1360 6840 50  0000 C CNN
F 2 "" H 1360 6990 50  0001 C CNN
F 3 "" H 1360 6990 50  0001 C CNN
	1    1360 6990
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 59EB8B86
P 1160 6990
F 0 "#PWR09" H 1160 6740 50  0001 C CNN
F 1 "GND" H 1160 6840 50  0000 C CNN
F 2 "" H 1160 6990 50  0001 C CNN
F 3 "" H 1160 6990 50  0001 C CNN
	1    1160 6990
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 59EB8E65
P 1110 7240
F 0 "R4" V 1190 7240 50  0000 C CNN
F 1 "220R" V 1110 7240 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1040 7240 50  0001 C CNN
F 3 "" H 1110 7240 50  0001 C CNN
	1    1110 7240
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 59EB925C
P 2300 7000
F 0 "#PWR010" H 2300 6750 50  0001 C CNN
F 1 "GND" H 2300 6850 50  0000 C CNN
F 2 "" H 2300 7000 50  0001 C CNN
F 3 "" H 2300 7000 50  0001 C CNN
	1    2300 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 59EB9262
P 2100 7000
F 0 "#PWR011" H 2100 6750 50  0001 C CNN
F 1 "GND" H 2100 6850 50  0000 C CNN
F 2 "" H 2100 7000 50  0001 C CNN
F 3 "" H 2100 7000 50  0001 C CNN
	1    2100 7000
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 59EB926C
P 2050 7250
F 0 "R5" V 2130 7250 50  0000 C CNN
F 1 "220R" V 2050 7250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1980 7250 50  0001 C CNN
F 3 "" H 2050 7250 50  0001 C CNN
	1    2050 7250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR012
U 1 1 59EB946E
P 3250 7000
F 0 "#PWR012" H 3250 6750 50  0001 C CNN
F 1 "GND" H 3250 6850 50  0000 C CNN
F 2 "" H 3250 7000 50  0001 C CNN
F 3 "" H 3250 7000 50  0001 C CNN
	1    3250 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 59EB9474
P 3050 7000
F 0 "#PWR013" H 3050 6750 50  0001 C CNN
F 1 "GND" H 3050 6850 50  0000 C CNN
F 2 "" H 3050 7000 50  0001 C CNN
F 3 "" H 3050 7000 50  0001 C CNN
	1    3050 7000
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 59EB947E
P 3000 7250
F 0 "R6" V 3080 7250 50  0000 C CNN
F 1 "220R" V 3000 7250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2930 7250 50  0001 C CNN
F 3 "" H 3000 7250 50  0001 C CNN
	1    3000 7250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 59EB95EA
P 4210 7000
F 0 "#PWR014" H 4210 6750 50  0001 C CNN
F 1 "GND" H 4210 6850 50  0000 C CNN
F 2 "" H 4210 7000 50  0001 C CNN
F 3 "" H 4210 7000 50  0001 C CNN
	1    4210 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 59EB95F0
P 4010 7000
F 0 "#PWR015" H 4010 6750 50  0001 C CNN
F 1 "GND" H 4010 6850 50  0000 C CNN
F 2 "" H 4010 7000 50  0001 C CNN
F 3 "" H 4010 7000 50  0001 C CNN
	1    4010 7000
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 59EB95FA
P 3960 7250
F 0 "R7" V 4040 7250 50  0000 C CNN
F 1 "220R" V 3960 7250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3890 7250 50  0001 C CNN
F 3 "" H 3960 7250 50  0001 C CNN
	1    3960 7250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR016
U 1 1 59EB9B59
P 5220 7000
F 0 "#PWR016" H 5220 6750 50  0001 C CNN
F 1 "GND" H 5220 6850 50  0000 C CNN
F 2 "" H 5220 7000 50  0001 C CNN
F 3 "" H 5220 7000 50  0001 C CNN
	1    5220 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 59EB9B5F
P 5020 7000
F 0 "#PWR017" H 5020 6750 50  0001 C CNN
F 1 "GND" H 5020 6850 50  0000 C CNN
F 2 "" H 5020 7000 50  0001 C CNN
F 3 "" H 5020 7000 50  0001 C CNN
	1    5020 7000
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 59EB9B69
P 4970 7250
F 0 "R9" V 5050 7250 50  0000 C CNN
F 1 "220R" V 4970 7250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4900 7250 50  0001 C CNN
F 3 "" H 4970 7250 50  0001 C CNN
	1    4970 7250
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW1
U 1 1 59EBA50E
P 1350 5960
F 0 "SW1" H 1400 6060 50  0000 L CNN
F 1 "SW_Push" H 1350 5900 50  0001 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH-12mm" H 1350 6160 50  0001 C CNN
F 3 "" H 1350 6160 50  0001 C CNN
	1    1350 5960
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 59EBA9B7
P 1550 5960
F 0 "#PWR018" H 1550 5710 50  0001 C CNN
F 1 "GND" H 1550 5810 50  0000 C CNN
F 2 "" H 1550 5960 50  0001 C CNN
F 3 "" H 1550 5960 50  0001 C CNN
	1    1550 5960
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 59EBABAB
P 2580 5960
F 0 "SW2" H 2630 6060 50  0000 L CNN
F 1 "SW_Push" H 2580 5900 50  0001 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH-12mm" H 2580 6160 50  0001 C CNN
F 3 "" H 2580 6160 50  0001 C CNN
	1    2580 5960
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 59EBABB3
P 2780 5960
F 0 "#PWR019" H 2780 5710 50  0001 C CNN
F 1 "GND" H 2780 5810 50  0000 C CNN
F 2 "" H 2780 5960 50  0001 C CNN
F 3 "" H 2780 5960 50  0001 C CNN
	1    2780 5960
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW3
U 1 1 59EBAD06
P 3760 5960
F 0 "SW3" H 3810 6060 50  0000 L CNN
F 1 "SW_Push" H 3760 5900 50  0001 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH-12mm" H 3760 6160 50  0001 C CNN
F 3 "" H 3760 6160 50  0001 C CNN
	1    3760 5960
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 59EBAD0E
P 3960 5960
F 0 "#PWR020" H 3960 5710 50  0001 C CNN
F 1 "GND" H 3960 5810 50  0000 C CNN
F 2 "" H 3960 5960 50  0001 C CNN
F 3 "" H 3960 5960 50  0001 C CNN
	1    3960 5960
	1    0    0    -1  
$EndComp
$Comp
L USB_A J8
U 1 1 59EBB3E7
P 10300 4610
F 0 "J8" H 10100 5060 50  0000 L CNN
F 1 "USB_A" H 10100 4960 50  0000 L CNN
F 2 "Connectors:USB_A" H 10450 4560 50  0001 C CNN
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
F 2 "Resistors_SMD:R_1206_HandSoldering" V 9930 5500 50  0001 C CNN
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
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 948 4860 50  0001 C CNN
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
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1308 4860 50  0001 C CNN
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
P 7860 4950
F 0 "F1" V 7940 4950 50  0000 C CNN
F 1 "1A" V 7785 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_1812_HandSoldering" V 7790 4950 50  0001 C CNN
F 3 "" H 7860 4950 50  0001 C CNN
	1    7860 4950
	-1   0    0    1   
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
Text Notes 1520 5770 0    60   Italic 0
Control buttons use the internal pull-ups
$Comp
L RJ10 J1
U 1 1 59F9E9B3
P 1210 6640
F 0 "J1" H 1210 6690 60  0000 C CNN
F 1 "RJ10" H 1210 6540 60  0000 C CNN
F 2 "kamaji:RJ10" H 1185 6615 60  0001 C CNN
F 3 "" H 1185 6615 60  0001 C CNN
	1    1210 6640
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J2
U 1 1 59F9EB79
P 2150 6650
F 0 "J2" H 2150 6700 60  0000 C CNN
F 1 "RJ10" H 2150 6550 60  0000 C CNN
F 2 "kamaji:RJ10" H 2125 6625 60  0001 C CNN
F 3 "" H 2125 6625 60  0001 C CNN
	1    2150 6650
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J3
U 1 1 59F9ED52
P 3100 6650
F 0 "J3" H 3100 6700 60  0000 C CNN
F 1 "RJ10" H 3100 6550 60  0000 C CNN
F 2 "kamaji:RJ10" H 3075 6625 60  0001 C CNN
F 3 "" H 3075 6625 60  0001 C CNN
	1    3100 6650
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J4
U 1 1 59F9EE0B
P 4060 6650
F 0 "J4" H 4060 6700 60  0000 C CNN
F 1 "RJ10" H 4060 6550 60  0000 C CNN
F 2 "kamaji:RJ10" H 4035 6625 60  0001 C CNN
F 3 "" H 4035 6625 60  0001 C CNN
	1    4060 6650
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J5
U 1 1 59F9EEE4
P 5070 6650
F 0 "J5" H 5070 6700 60  0000 C CNN
F 1 "RJ10" H 5070 6550 60  0000 C CNN
F 2 "kamaji:RJ10" H 5045 6625 60  0001 C CNN
F 3 "" H 5045 6625 60  0001 C CNN
	1    5070 6650
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
$Comp
L C C6
U 1 1 5A15E885
P 1620 5010
F 0 "C6" H 1510 5110 50  0000 L CNN
F 1 "0.1uF" H 1380 4920 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1658 4860 50  0001 C CNN
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
S 7200 1100 740  500 
U 5A30C66D
F0 "Boost Converter" 60
F1 "boost_converter.sch" 60
F2 "BOOST_VOUT" O R 7940 1360 60 
$EndSheet
$Comp
L +28V #PWR033
U 1 1 5A30EB28
P 8860 1690
F 0 "#PWR033" H 8860 1540 50  0001 C CNN
F 1 "+28V" H 8860 1840 50  0000 C CNN
F 2 "" H 9110 1740 50  0001 C CNN
F 3 "" H 9110 1740 50  0001 C CNN
	1    8860 1690
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5A312BDF
P 5020 3780
F 0 "R8" V 5100 3780 50  0000 C CNN
F 1 "10K" V 5020 3780 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4950 3780 50  0001 C CNN
F 3 "" H 5020 3780 50  0001 C CNN
	1    5020 3780
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR034
U 1 1 5A3130F9
P 5020 3630
F 0 "#PWR034" H 5020 3480 50  0001 C CNN
F 1 "VCC" H 5020 3780 50  0000 C CNN
F 2 "" H 5020 3630 50  0001 C CNN
F 3 "" H 5020 3630 50  0001 C CNN
	1    5020 3630
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x03_Odd_Even ICSP1
U 1 1 5A31A7A1
P 4610 1580
F 0 "ICSP1" H 4660 1780 50  0000 C CNN
F 1 "ICSP" H 4660 1380 50  0000 C CNN
F 2 "Connectors_IDC:IDC-Header_2x03_Pitch2.54mm_Straight" H 4610 1580 50  0001 C CNN
F 3 "" H 4610 1580 50  0001 C CNN
	1    4610 1580
	1    0    0    -1  
$EndComp
Text Label 4200 1480 0    60   ~ 0
MISO
Text Label 3730 1580 0    60   ~ 0
SCK
$Comp
L R R3
U 1 1 59E6611C
P 1390 1330
F 0 "R3" V 1470 1330 50  0000 C CNN
F 1 "10K" V 1390 1330 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1320 1330 50  0001 C CNN
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
P 10230 1720
F 0 "LS1" H 10260 1520 50  0000 R CNN
F 1 "Speaker_Crystal" H 10470 1430 50  0001 R CNN
F 2 "kamaji:buzzer_30x17" H 10195 1670 50  0001 C CNN
F 3 "" H 10195 1670 50  0001 C CNN
	1    10230 1720
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
$Comp
L Jumper_NO_Small JP3
U 1 1 5A317296
P 9170 1620
F 0 "JP3" V 9160 1710 50  0000 C CNN
F 1 "SoundVcc2" H 9180 1560 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 9170 1620 50  0001 C CNN
F 3 "" H 9170 1620 50  0001 C CNN
	1    9170 1620
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR038
U 1 1 5A317FA1
P 9170 1520
F 0 "#PWR038" H 9170 1370 50  0001 C CNN
F 1 "VCC" H 9170 1670 50  0000 C CNN
F 2 "" H 9170 1520 50  0001 C CNN
F 3 "" H 9170 1520 50  0001 C CNN
	1    9170 1520
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5A3185A6
P 9510 1720
F 0 "R14" V 9590 1720 50  0000 C CNN
F 1 "0" V 9510 1720 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 9440 1720 50  0001 C CNN
F 3 "" H 9510 1720 50  0001 C CNN
	1    9510 1720
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 5A31988B
P 9280 2330
F 0 "R13" V 9360 2330 50  0000 C CNN
F 1 "1K" V 9280 2330 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 9210 2330 50  0001 C CNN
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
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 9070 1720 50  0001 C CNN
F 3 "" H 9070 1720 50  0001 C CNN
	1    9070 1720
	1    0    0    -1  
$EndComp
Text Label 3730 1480 0    60   ~ 0
LAMP
Text Label 3730 1680 0    60   ~ 0
MOSI
Text Label 3730 3080 0    60   ~ 0
PLED3
Text Label 3730 1880 0    60   ~ 0
PBTN4
Text Label 3730 3380 0    60   ~ 0
PLED4
Text Label 3730 2380 0    60   ~ 0
PBTN5
Text Label 3730 2080 0    60   ~ 0
PLED5
Text Label 4410 1680 2    60   ~ 0
RST
Text Label 3730 2680 0    60   ~ 0
PBTN1
Text Label 3730 2780 0    60   ~ 0
PLED1
Text Label 3730 2880 0    60   ~ 0
PBTN2
Text Label 3730 2480 0    60   ~ 0
CBTN1
Text Label 3730 2980 0    60   ~ 0
PLED2
Text Label 3730 3280 0    60   ~ 0
PBTN3
Text Label 3730 3580 0    60   ~ 0
CBTN2
Text Label 3730 3680 0    60   ~ 0
CBTN3
Text Label 5080 4130 2    60   ~ 0
SCK
Text Label 5080 4030 2    60   ~ 0
MOSI
Text Label 4910 1580 0    60   ~ 0
MOSI
Text Label 1280 1480 2    60   ~ 0
RST
Text Label 1180 2830 2    60   ~ 0
USB_D+
Text Label 1180 2930 2    60   ~ 0
USB_D-
Text Label 1150 5960 2    60   ~ 0
CBTN1
Text Label 2380 5960 2    60   ~ 0
CBTN2
Text Label 3560 5960 2    60   ~ 0
CBTN3
Text Label 7860 5300 0    60   ~ 0
USB_D+
Text Label 7860 5400 0    60   ~ 0
USB_D-
Text Label 9910 5350 2    60   ~ 0
LAMP
Text Label 960  7030 2    60   ~ 0
PBTN1
Text Label 960  7240 2    60   ~ 0
PLED1
Text Label 1900 7040 2    60   ~ 0
PBTN2
Text Label 1900 7250 2    60   ~ 0
PLED2
Text Label 2850 7040 2    60   ~ 0
PBTN3
Text Label 2850 7250 2    60   ~ 0
PLED3
Text Label 3810 7040 2    60   ~ 0
PBTN4
Text Label 3810 7250 2    60   ~ 0
PLED4
Text Label 4820 7040 2    60   ~ 0
PBTN5
Text Label 4820 7250 2    60   ~ 0
PLED5
Text Notes 9460 1300 2    39   Italic 0
Backup power supply\nfor the speaker
$Comp
L +28V #PWR039
U 1 1 5A33C3C6
P 8050 1360
F 0 "#PWR039" H 8050 1210 50  0001 C CNN
F 1 "+28V" H 8050 1510 50  0000 C CNN
F 2 "" H 8300 1410 50  0001 C CNN
F 3 "" H 8300 1410 50  0001 C CNN
	1    8050 1360
	1    0    0    -1  
$EndComp
$Comp
L POT RV2
U 1 1 5A34230D
P 9880 1720
F 0 "RV2" V 9870 1710 50  0000 C CNN
F 1 "VOLUME" V 10070 1720 50  0000 C CNN
F 2 "kamaji:Potentiometer_Wheel_16mm" H 9880 1720 50  0001 C CNN
F 3 "" H 9880 1720 50  0001 C CNN
	1    9880 1720
	0    -1   -1   0   
$EndComp
Text Label 9130 2330 2    60   ~ 0
SOUND
Text Label 3730 1980 0    60   ~ 0
SOUND
$Comp
L R R21
U 1 1 5A35013A
P 5610 1970
F 0 "R21" V 5690 1970 50  0000 C CNN
F 1 "200R" V 5610 1970 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5540 1970 50  0001 C CNN
F 3 "" H 5610 1970 50  0001 C CNN
	1    5610 1970
	1    0    0    -1  
$EndComp
$Comp
L R R24
U 1 1 5A350141
P 6120 1970
F 0 "R24" V 6200 1970 50  0000 C CNN
F 1 "200R" V 6120 1970 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6050 1970 50  0001 C CNN
F 3 "" H 6120 1970 50  0001 C CNN
	1    6120 1970
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 5A350148
P 5780 1970
F 0 "R22" V 5860 1970 50  0000 C CNN
F 1 "200R" V 5780 1970 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5710 1970 50  0001 C CNN
F 3 "" H 5780 1970 50  0001 C CNN
	1    5780 1970
	1    0    0    -1  
$EndComp
Text Notes 5450 1580 0    60   Italic 0
Dummy load to make sure\npowerbanks don't shut off\npower due to low current
$Comp
L GND #PWR040
U 1 1 5A350150
P 5860 2520
F 0 "#PWR040" H 5860 2270 50  0001 C CNN
F 1 "GND" H 5860 2370 50  0000 C CNN
F 2 "" H 5860 2520 50  0001 C CNN
F 3 "" H 5860 2520 50  0001 C CNN
	1    5860 2520
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 5A350156
P 5560 2620
F 0 "#PWR041" H 5560 2370 50  0001 C CNN
F 1 "GND" H 5560 2470 50  0000 C CNN
F 2 "" H 5560 2620 50  0001 C CNN
F 3 "" H 5560 2620 50  0001 C CNN
	1    5560 2620
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 5A35015C
P 5560 2470
F 0 "R20" V 5640 2470 50  0000 C CNN
F 1 "10K" V 5560 2470 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5490 2470 50  0001 C CNN
F 3 "" H 5560 2470 50  0001 C CNN
	1    5560 2470
	1    0    0    -1  
$EndComp
$Comp
L IRLIZ44N Q3
U 1 1 5A350163
P 5760 2320
F 0 "Q3" H 6010 2395 50  0000 L CNN
F 1 "IRL540N" H 6010 2320 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Horizontal" H 6010 2245 50  0001 L CIN
F 3 "" H 5760 2320 50  0001 L CNN
	1    5760 2320
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR042
U 1 1 5A35016A
P 5860 1820
F 0 "#PWR042" H 5860 1670 50  0001 C CNN
F 1 "VCC" H 5860 1970 50  0000 C CNN
F 2 "" H 5860 1820 50  0001 C CNN
F 3 "" H 5860 1820 50  0001 C CNN
	1    5860 1820
	1    0    0    -1  
$EndComp
$Comp
L R R23
U 1 1 5A350170
P 5950 1970
F 0 "R23" V 6030 1970 50  0000 C CNN
F 1 "200R" V 5950 1970 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5880 1970 50  0001 C CNN
F 3 "" H 5950 1970 50  0001 C CNN
	1    5950 1970
	1    0    0    -1  
$EndComp
Text Label 3730 2180 0    60   ~ 0
DUMMY_EN
$Comp
L LCD12864B DS1
U 1 1 5A352FC4
P 5580 4480
F 0 "DS1" H 5250 5230 50  0000 C CNN
F 1 "LCD12864B" H 5800 5230 50  0000 C CNN
F 2 "kamaji:LCD12864" H 5580 3580 50  0001 C CIN
F 3 "" H 5780 4280 50  0001 C CNN
	1    5580 4480
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 5A352FCB
P 5580 5280
F 0 "#PWR043" H 5580 5030 50  0001 C CNN
F 1 "GND" H 5580 5130 50  0000 C CNN
F 2 "" H 5580 5280 50  0001 C CNN
F 3 "" H 5580 5280 50  0001 C CNN
	1    5580 5280
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR044
U 1 1 5A352FD1
P 5580 3680
F 0 "#PWR044" H 5580 3530 50  0001 C CNN
F 1 "VCC" H 5580 3830 50  0000 C CNN
F 2 "" H 5580 3680 50  0001 C CNN
F 3 "" H 5580 3680 50  0001 C CNN
	1    5580 3680
	1    0    0    -1  
$EndComp
NoConn ~ 6080 3930
$Comp
L VCC #PWR045
U 1 1 5A352FDF
P 6180 4030
F 0 "#PWR045" H 6180 3880 50  0001 C CNN
F 1 "VCC" H 6180 4180 50  0000 C CNN
F 2 "" H 6180 4030 50  0001 C CNN
F 3 "" H 6180 4030 50  0001 C CNN
	1    6180 4030
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 5A352FE6
P 6080 4130
F 0 "#PWR046" H 6080 3880 50  0001 C CNN
F 1 "GND" H 6080 3980 50  0000 C CNN
F 2 "" H 6080 4130 50  0001 C CNN
F 3 "" H 6080 4130 50  0001 C CNN
	1    6080 4130
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR047
U 1 1 5A352FEC
P 6290 4180
F 0 "#PWR047" H 6290 4030 50  0001 C CNN
F 1 "VCC" H 6290 4330 50  0000 C CNN
F 2 "" H 6290 4180 50  0001 C CNN
F 3 "" H 6290 4180 50  0001 C CNN
	1    6290 4180
	1    0    0    -1  
$EndComp
$Comp
L R R26
U 1 1 5A352FF2
P 6290 4330
F 0 "R26" V 6210 4330 50  0000 C CNN
F 1 "10K" V 6290 4330 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6220 4330 50  0001 C CNN
F 3 "" H 6290 4330 50  0001 C CNN
	1    6290 4330
	-1   0    0    1   
$EndComp
NoConn ~ 6080 4930
$Comp
L R R25
U 1 1 5A352FFA
P 6230 4980
F 0 "R25" V 6150 4980 50  0000 C CNN
F 1 "10K" V 6230 4980 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6160 4980 50  0001 C CNN
F 3 "" H 6230 4980 50  0001 C CNN
	1    6230 4980
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR048
U 1 1 5A353001
P 6230 5130
F 0 "#PWR048" H 6230 4880 50  0001 C CNN
F 1 "GND" H 6230 4980 50  0000 C CNN
F 2 "" H 6230 5130 50  0001 C CNN
F 3 "" H 6230 5130 50  0001 C CNN
	1    6230 5130
	1    0    0    -1  
$EndComp
Text Notes 5150 5680 0    60   Italic 0
ST7920-based LCD\ndisplay in serial mode
$Comp
L GND #PWR049
U 1 1 5A35300B
P 5080 5080
F 0 "#PWR049" H 5080 4830 50  0001 C CNN
F 1 "GND" H 5080 4930 50  0000 C CNN
F 2 "" H 5080 5080 50  0001 C CNN
F 3 "" H 5080 5080 50  0001 C CNN
	1    5080 5080
	1    0    0    -1  
$EndComp
Text Label 6480 4480 0    60   ~ 0
LCD_RST
Text Label 4640 3930 0    60   ~ 0
LCD_CS
Text Label 3730 3880 0    60   ~ 0
LCD_CS
Text Label 3730 3980 0    60   ~ 0
LCD_RST
$Comp
L C C10
U 1 1 5A350184
P 4880 4750
F 0 "C10" H 4770 4850 50  0000 L CNN
F 1 "0.1uF" H 4640 4660 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4918 4600 50  0001 C CNN
F 3 "" H 4880 4750 50  0001 C CNN
	1    4880 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR050
U 1 1 5A35018A
P 4880 4900
F 0 "#PWR050" H 4880 4650 50  0001 C CNN
F 1 "GND" H 4880 4750 50  0000 C CNN
F 2 "" H 4880 4900 50  0001 C CNN
F 3 "" H 4880 4900 50  0001 C CNN
	1    4880 4900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR051
U 1 1 5A350190
P 4880 4600
F 0 "#PWR051" H 4880 4450 50  0001 C CNN
F 1 "VCC" H 4880 4750 50  0000 C CNN
F 2 "" H 4880 4600 50  0001 C CNN
F 3 "" H 4880 4600 50  0001 C CNN
	1    4880 4600
	1    0    0    -1  
$EndComp
Text Label 3730 4180 0    60   ~ 0
SIGNAL_R
Text Label 3730 4280 0    60   ~ 0
SIGNAL_G
Text Label 3730 4380 0    60   ~ 0
SIGNAL_B
$Comp
L GND #PWR052
U 1 1 5A3A8D7F
P 6320 7000
F 0 "#PWR052" H 6320 6750 50  0001 C CNN
F 1 "GND" H 6320 6850 50  0000 C CNN
F 2 "" H 6320 7000 50  0001 C CNN
F 3 "" H 6320 7000 50  0001 C CNN
	1    6320 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR053
U 1 1 5A3A8D85
P 6120 7000
F 0 "#PWR053" H 6120 6750 50  0001 C CNN
F 1 "GND" H 6120 6850 50  0000 C CNN
F 2 "" H 6120 7000 50  0001 C CNN
F 3 "" H 6120 7000 50  0001 C CNN
	1    6120 7000
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5A3A8D8B
P 6070 7250
F 0 "R10" V 6150 7250 50  0000 C CNN
F 1 "220R" V 6070 7250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6000 7250 50  0001 C CNN
F 3 "" H 6070 7250 50  0001 C CNN
	1    6070 7250
	0    1    1    0   
$EndComp
$Comp
L RJ10 J6
U 1 1 5A3A8D91
P 6170 6650
F 0 "J6" H 6170 6700 60  0000 C CNN
F 1 "RJ10" H 6170 6550 60  0000 C CNN
F 2 "kamaji:RJ10" H 6145 6625 60  0001 C CNN
F 3 "" H 6145 6625 60  0001 C CNN
	1    6170 6650
	1    0    0    -1  
$EndComp
Text Label 5920 7040 2    60   ~ 0
PBTN6
Text Label 5920 7250 2    60   ~ 0
PLED6
Text Label 3730 4080 0    60   ~ 0
PBTN6
Text Label 3730 3180 0    60   ~ 0
PLED6
$Comp
L TEST_2P J9
U 1 1 5A3AAF62
P 7530 2700
F 0 "J9" H 7530 2760 50  0000 C CNN
F 1 "TEST_28V" H 7530 2630 50  0000 C CNN
F 2 "Measurement_Points:Test_Point_2Pads" H 7530 2700 50  0001 C CNN
F 3 "" H 7530 2700 50  0001 C CNN
	1    7530 2700
	0    1    1    0   
$EndComp
$Comp
L +28V #PWR054
U 1 1 5A3AB05D
P 7530 2500
F 0 "#PWR054" H 7530 2350 50  0001 C CNN
F 1 "+28V" H 7530 2650 50  0000 C CNN
F 2 "" H 7780 2550 50  0001 C CNN
F 3 "" H 7780 2550 50  0001 C CNN
	1    7530 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR055
U 1 1 5A3AB146
P 7530 2900
F 0 "#PWR055" H 7530 2650 50  0001 C CNN
F 1 "GND" H 7530 2750 50  0000 C CNN
F 2 "" H 7530 2900 50  0001 C CNN
F 3 "" H 7530 2900 50  0001 C CNN
	1    7530 2900
	1    0    0    -1  
$EndComp
$Comp
L TEST_2P J10
U 1 1 5A3AB726
P 7960 2700
F 0 "J10" H 7960 2760 50  0000 C CNN
F 1 "TEST_5V" H 7960 2630 50  0000 C CNN
F 2 "Measurement_Points:Test_Point_2Pads" H 7960 2700 50  0001 C CNN
F 3 "" H 7960 2700 50  0001 C CNN
	1    7960 2700
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR056
U 1 1 5A3AB8AB
P 7960 2500
F 0 "#PWR056" H 7960 2350 50  0001 C CNN
F 1 "VCC" H 7960 2650 50  0000 C CNN
F 2 "" H 7960 2500 50  0001 C CNN
F 3 "" H 7960 2500 50  0001 C CNN
	1    7960 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR057
U 1 1 5A3AB95B
P 7960 2900
F 0 "#PWR057" H 7960 2650 50  0001 C CNN
F 1 "GND" H 7960 2750 50  0000 C CNN
F 2 "" H 7960 2900 50  0001 C CNN
F 3 "" H 7960 2900 50  0001 C CNN
	1    7960 2900
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
	7560 5700 7460 5700
Wire Wire Line
	1060 7030 1060 6990
Wire Wire Line
	1260 7240 1260 6990
Wire Wire Line
	2000 7040 2000 7000
Wire Wire Line
	2200 7250 2200 7000
Wire Wire Line
	2950 7040 2950 7000
Wire Wire Line
	3150 7250 3150 7000
Wire Wire Line
	3910 7040 3910 7000
Wire Wire Line
	4110 7250 4110 7000
Wire Wire Line
	4920 7040 4920 7000
Wire Wire Line
	5120 7250 5120 7000
Wire Wire Line
	10300 5010 10300 5150
Wire Wire Line
	9910 5350 10000 5350
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
	9170 1720 9360 1720
Wire Wire Line
	1280 1480 1480 1480
Connection ~ 1390 1480
Wire Wire Line
	960  7030 1060 7030
Wire Wire Line
	1900 7040 2000 7040
Wire Wire Line
	2850 7040 2950 7040
Wire Wire Line
	3810 7040 3910 7040
Wire Wire Line
	4820 7040 4920 7040
Wire Wire Line
	7940 1360 8050 1360
Wire Wire Line
	8970 1720 8860 1720
Wire Wire Line
	8860 1720 8860 1690
Wire Wire Line
	9880 1570 10030 1570
Wire Wire Line
	10030 1570 10030 1720
Wire Wire Line
	9730 1820 10030 1820
Connection ~ 5780 1820
Connection ~ 5860 1820
Connection ~ 5950 1820
Wire Wire Line
	5610 1820 6120 1820
Connection ~ 5950 2120
Connection ~ 5860 2120
Connection ~ 5780 2120
Wire Wire Line
	5610 2120 6120 2120
Wire Wire Line
	3730 2180 4820 2180
Wire Wire Line
	4820 2180 4820 2320
Wire Wire Line
	4820 2320 5560 2320
Wire Wire Line
	5080 4380 5080 5080
Connection ~ 5080 4480
Connection ~ 5080 4580
Connection ~ 5080 4680
Connection ~ 5080 4780
Connection ~ 5080 4880
Connection ~ 5080 4980
Wire Wire Line
	6080 4030 6180 4030
Wire Wire Line
	6080 4480 6480 4480
Connection ~ 6290 4480
Wire Wire Line
	6080 4830 6230 4830
Wire Wire Line
	4640 3930 5080 3930
Connection ~ 5020 3930
Wire Wire Line
	6020 7040 6020 7000
Wire Wire Line
	6220 7250 6220 7000
Wire Wire Line
	5920 7040 6020 7040
$Comp
L LED_CRGB D1
U 1 1 5A3AC970
P 8380 3840
F 0 "D1" H 8380 4210 50  0000 C CNN
F 1 "LED_CRGB" H 8380 3490 50  0000 C CNN
F 2 "kamaji:LED_RGB_common_cathode_5mm" H 8380 3790 50  0001 C CNN
F 3 "" H 8380 3790 50  0001 C CNN
	1    8380 3840
	-1   0    0    1   
$EndComp
Text Notes 7900 4450 0    60   Italic 0
Signal LED
$Comp
L GND #PWR058
U 1 1 5A3ACD5F
P 8580 3840
F 0 "#PWR058" H 8580 3590 50  0001 C CNN
F 1 "GND" H 8580 3690 50  0000 C CNN
F 2 "" H 8580 3840 50  0001 C CNN
F 3 "" H 8580 3840 50  0001 C CNN
	1    8580 3840
	1    0    0    -1  
$EndComp
Text Label 8180 4040 2    60   ~ 0
SIGNAL_R
Text Label 8180 3840 2    60   ~ 0
SIGNAL_G
Text Label 8180 3640 2    60   ~ 0
SIGNAL_B
$EndSCHEMATC
