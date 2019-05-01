EESchema Schematic File Version 4
LIBS:v3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L MCU_Microchip_ATmega:ATmega328P-PU U1
U 1 1 5C558082
P 2650 2650
F 0 "U1" H 2680 2650 50  0000 R CNN
F 1 "ATmega328P-PU" V 2240 2050 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 2650 2650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2650 2650 50  0001 C CNN
	1    2650 2650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 5C55824F
P 2750 1150
F 0 "#PWR0101" H 2750 1000 50  0001 C CNN
F 1 "VCC" H 2860 1280 50  0000 C CNN
F 2 "" H 2750 1150 50  0001 C CNN
F 3 "" H 2750 1150 50  0001 C CNN
	1    2750 1150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 5C558302
P 2650 1150
F 0 "#PWR0102" H 2650 1000 50  0001 C CNN
F 1 "VCC" H 2550 1280 50  0000 C CNN
F 2 "" H 2650 1150 50  0001 C CNN
F 3 "" H 2650 1150 50  0001 C CNN
	1    2650 1150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 5C558361
P 2050 1450
F 0 "#PWR0103" H 2050 1300 50  0001 C CNN
F 1 "VCC" V 2110 1560 50  0000 C CNN
F 2 "" H 2050 1450 50  0001 C CNN
F 3 "" H 2050 1450 50  0001 C CNN
	1    2050 1450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C558433
P 2650 4150
F 0 "#PWR0104" H 2650 3900 50  0001 C CNN
F 1 "GND" H 2650 3990 50  0000 C CNN
F 2 "" H 2650 4150 50  0001 C CNN
F 3 "" H 2650 4150 50  0001 C CNN
	1    2650 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5C55877D
P 1400 3440
F 0 "C2" V 1148 3440 50  0000 C CNN
F 1 "20pF" V 1239 3440 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1438 3290 50  0001 C CNN
F 3 "~" H 1400 3440 50  0001 C CNN
	1    1400 3440
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5C558901
P 1400 3740
F 0 "C3" V 1620 3740 50  0000 C CNN
F 1 "20pF" V 1530 3740 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1438 3590 50  0001 C CNN
F 3 "~" H 1400 3740 50  0001 C CNN
	1    1400 3740
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5C558C4A
P 1550 3740
F 0 "#PWR0105" H 1550 3490 50  0001 C CNN
F 1 "GND" V 1555 3612 50  0000 R CNN
F 2 "" H 1550 3740 50  0001 C CNN
F 3 "" H 1550 3740 50  0001 C CNN
	1    1550 3740
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5C558D1C
P 1550 3440
F 0 "#PWR0106" H 1550 3190 50  0001 C CNN
F 1 "GND" V 1555 3312 50  0000 R CNN
F 2 "" H 1550 3440 50  0001 C CNN
F 3 "" H 1550 3440 50  0001 C CNN
	1    1550 3440
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 5C559384
P 1460 2110
F 0 "#PWR0107" H 1460 1960 50  0001 C CNN
F 1 "VCC" H 1540 2250 50  0000 C CNN
F 2 "" H 1460 2110 50  0001 C CNN
F 3 "" H 1460 2110 50  0001 C CNN
	1    1460 2110
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5C5594C3
P 1460 2510
F 0 "#PWR0108" H 1460 2260 50  0001 C CNN
F 1 "GND" H 1460 2360 50  0000 C CNN
F 2 "" H 1460 2510 50  0001 C CNN
F 3 "" H 1460 2510 50  0001 C CNN
	1    1460 2510
	1    0    0    -1  
$EndComp
Text Label 960  2110 2    50   ~ 0
MOSI
Text Label 960  2510 2    50   ~ 0
MISO
Text Label 960  2410 2    50   ~ 0
SCK
Text Label 960  2310 2    50   ~ 0
RST
$Comp
L Device:R R4
U 1 1 5C559CDC
P 3690 2800
F 0 "R4" H 3760 2846 50  0000 L CNN
F 1 "10K" H 3760 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3620 2800 50  0001 C CNN
F 3 "~" H 3690 2800 50  0001 C CNN
	1    3690 2800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0109
U 1 1 5C559E8A
P 3690 2650
F 0 "#PWR0109" H 3690 2500 50  0001 C CNN
F 1 "VCC" H 3690 2810 50  0000 C CNN
F 2 "" H 3690 2650 50  0001 C CNN
F 3 "" H 3690 2650 50  0001 C CNN
	1    3690 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2950 3690 2950
Text Label 3250 2950 0    50   ~ 0
RST
Text Label 3250 1750 0    50   ~ 0
MOSI
Text Label 3250 1850 0    50   ~ 0
MISO
Text Label 3250 1950 0    50   ~ 0
SCK
Text Label 2030 5500 2    50   ~ 0
CBTN1
$Comp
L Switch:SW_Push SW1
U 1 1 5C55AFDB
P 2230 5500
F 0 "SW1" H 2230 5785 50  0000 C CNN
F 1 "CTL1" H 2230 5694 50  0000 C CNN
F 2 "kamaji:Pushbutton_12mm" H 2230 5700 50  0001 C CNN
F 3 "" H 2230 5700 50  0001 C CNN
	1    2230 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5C55B18E
P 2430 5500
F 0 "#PWR0110" H 2430 5250 50  0001 C CNN
F 1 "GND" H 2435 5327 50  0000 C CNN
F 2 "" H 2430 5500 50  0001 C CNN
F 3 "" H 2430 5500 50  0001 C CNN
	1    2430 5500
	1    0    0    -1  
$EndComp
Text Label 2840 5490 2    50   ~ 0
CBTN2
$Comp
L Switch:SW_Push SW2
U 1 1 5C55B3DC
P 3040 5490
F 0 "SW2" H 3040 5775 50  0000 C CNN
F 1 "CTL2" H 3040 5684 50  0000 C CNN
F 2 "kamaji:Pushbutton_12mm" H 3040 5690 50  0001 C CNN
F 3 "" H 3040 5690 50  0001 C CNN
	1    3040 5490
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5C55B3E2
P 3240 5490
F 0 "#PWR0111" H 3240 5240 50  0001 C CNN
F 1 "GND" H 3245 5317 50  0000 C CNN
F 2 "" H 3240 5490 50  0001 C CNN
F 3 "" H 3240 5490 50  0001 C CNN
	1    3240 5490
	1    0    0    -1  
$EndComp
Text Label 3650 5480 2    50   ~ 0
CBTN3
$Comp
L Switch:SW_Push SW3
U 1 1 5C55B54C
P 3850 5480
F 0 "SW3" H 3850 5765 50  0000 C CNN
F 1 "CTL3" H 3850 5674 50  0000 C CNN
F 2 "kamaji:Pushbutton_12mm" H 3850 5680 50  0001 C CNN
F 3 "" H 3850 5680 50  0001 C CNN
	1    3850 5480
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5C55B552
P 4050 5480
F 0 "#PWR0112" H 4050 5230 50  0001 C CNN
F 1 "GND" H 4055 5307 50  0000 C CNN
F 2 "" H 4050 5480 50  0001 C CNN
F 3 "" H 4050 5480 50  0001 C CNN
	1    4050 5480
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ10 J1
U 1 1 5C55BE03
P 1090 6720
F 0 "J1" V 1099 7050 50  0000 L CNN
F 1 "RJ10" V 1190 7050 50  0000 L CNN
F 2 "kamaji:RJ10" V 1090 6770 50  0001 C CNN
F 3 "~" V 1090 6770 50  0001 C CNN
	1    1090 6720
	0    1    1    0   
$EndComp
Text Label 1350 7190 0    50   ~ 0
PBTN1
$Comp
L Device:R R1
U 1 1 5C55CEC1
P 940 7450
F 0 "R1" V 1040 7450 50  0000 L CNN
F 1 "1K" V 940 7400 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 870 7450 50  0001 C CNN
F 3 "~" H 940 7450 50  0001 C CNN
	1    940  7450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5C55D551
P 1190 7120
F 0 "#PWR0113" H 1190 6870 50  0001 C CNN
F 1 "GND" V 1180 6930 50  0000 C CNN
F 2 "" H 1190 7120 50  0001 C CNN
F 3 "" H 1190 7120 50  0001 C CNN
	1    1190 7120
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5C55DA12
P 990 7120
F 0 "#PWR0114" H 990 6870 50  0001 C CNN
F 1 "GND" V 980 6930 50  0000 C CNN
F 2 "" H 990 7120 50  0001 C CNN
F 3 "" H 990 7120 50  0001 C CNN
	1    990  7120
	1    0    0    -1  
$EndComp
Text Label 790  7450 2    50   ~ 0
PLED1
Wire Wire Line
	1090 7120 1090 7450
Wire Wire Line
	1290 7120 1290 7190
Wire Wire Line
	1290 7190 1350 7190
$Comp
L Connector:RJ10 J3
U 1 1 5C55F595
P 2070 6720
F 0 "J3" V 2079 7050 50  0000 L CNN
F 1 "RJ10" V 2170 7050 50  0000 L CNN
F 2 "kamaji:RJ10" V 2070 6770 50  0001 C CNN
F 3 "~" V 2070 6770 50  0001 C CNN
	1    2070 6720
	0    1    1    0   
$EndComp
Text Label 2330 7190 0    50   ~ 0
PBTN2
$Comp
L Device:R R2
U 1 1 5C55F59D
P 1920 7450
F 0 "R2" V 2020 7450 50  0000 L CNN
F 1 "1K" V 1920 7400 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1850 7450 50  0001 C CNN
F 3 "~" H 1920 7450 50  0001 C CNN
	1    1920 7450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5C55F5A4
P 2170 7120
F 0 "#PWR0115" H 2170 6870 50  0001 C CNN
F 1 "GND" V 2160 6930 50  0000 C CNN
F 2 "" H 2170 7120 50  0001 C CNN
F 3 "" H 2170 7120 50  0001 C CNN
	1    2170 7120
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5C55F5AA
P 1970 7120
F 0 "#PWR0116" H 1970 6870 50  0001 C CNN
F 1 "GND" V 1960 6930 50  0000 C CNN
F 2 "" H 1970 7120 50  0001 C CNN
F 3 "" H 1970 7120 50  0001 C CNN
	1    1970 7120
	1    0    0    -1  
$EndComp
Text Label 1770 7450 2    50   ~ 0
PLED2
Wire Wire Line
	2070 7120 2070 7450
Wire Wire Line
	2270 7120 2270 7190
Wire Wire Line
	2270 7190 2330 7190
$Comp
L Connector:RJ10 J4
U 1 1 5C55FAEA
P 3020 6720
F 0 "J4" V 3029 7050 50  0000 L CNN
F 1 "RJ10" V 3120 7050 50  0000 L CNN
F 2 "kamaji:RJ10" V 3020 6770 50  0001 C CNN
F 3 "~" V 3020 6770 50  0001 C CNN
	1    3020 6720
	0    1    1    0   
$EndComp
Text Label 3280 7190 0    50   ~ 0
PBTN3
$Comp
L Device:R R3
U 1 1 5C55FAF2
P 2870 7450
F 0 "R3" V 2970 7450 50  0000 L CNN
F 1 "1K" V 2870 7400 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2800 7450 50  0001 C CNN
F 3 "~" H 2870 7450 50  0001 C CNN
	1    2870 7450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5C55FAF9
P 3120 7120
F 0 "#PWR0117" H 3120 6870 50  0001 C CNN
F 1 "GND" V 3110 6930 50  0000 C CNN
F 2 "" H 3120 7120 50  0001 C CNN
F 3 "" H 3120 7120 50  0001 C CNN
	1    3120 7120
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5C55FAFF
P 2920 7120
F 0 "#PWR0118" H 2920 6870 50  0001 C CNN
F 1 "GND" V 2910 6930 50  0000 C CNN
F 2 "" H 2920 7120 50  0001 C CNN
F 3 "" H 2920 7120 50  0001 C CNN
	1    2920 7120
	1    0    0    -1  
$EndComp
Text Label 2720 7450 2    50   ~ 0
PLED3
Wire Wire Line
	3020 7120 3020 7450
Wire Wire Line
	3220 7120 3220 7190
Wire Wire Line
	3220 7190 3280 7190
$Comp
L Connector:RJ10 J5
U 1 1 5C560537
P 3970 6710
F 0 "J5" V 3979 7040 50  0000 L CNN
F 1 "RJ10" V 4070 7040 50  0000 L CNN
F 2 "kamaji:RJ10" V 3970 6760 50  0001 C CNN
F 3 "~" V 3970 6760 50  0001 C CNN
	1    3970 6710
	0    1    1    0   
$EndComp
Text Label 4230 7180 0    50   ~ 0
PBTN4
$Comp
L Device:R R5
U 1 1 5C56053F
P 3820 7440
F 0 "R5" V 3920 7440 50  0000 L CNN
F 1 "1K" V 3820 7390 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3750 7440 50  0001 C CNN
F 3 "~" H 3820 7440 50  0001 C CNN
	1    3820 7440
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5C560546
P 4070 7110
F 0 "#PWR0119" H 4070 6860 50  0001 C CNN
F 1 "GND" V 4060 6920 50  0000 C CNN
F 2 "" H 4070 7110 50  0001 C CNN
F 3 "" H 4070 7110 50  0001 C CNN
	1    4070 7110
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5C56054C
P 3870 7110
F 0 "#PWR0120" H 3870 6860 50  0001 C CNN
F 1 "GND" V 3860 6920 50  0000 C CNN
F 2 "" H 3870 7110 50  0001 C CNN
F 3 "" H 3870 7110 50  0001 C CNN
	1    3870 7110
	1    0    0    -1  
$EndComp
Text Label 3670 7440 2    50   ~ 0
PLED4
Wire Wire Line
	3970 7110 3970 7440
Wire Wire Line
	4170 7110 4170 7180
Wire Wire Line
	4170 7180 4230 7180
$Comp
L Connector:RJ10 J6
U 1 1 5C5619CE
P 4960 6730
F 0 "J6" V 4969 7060 50  0000 L CNN
F 1 "RJ10" V 5060 7060 50  0000 L CNN
F 2 "kamaji:RJ10" V 4960 6780 50  0001 C CNN
F 3 "~" V 4960 6780 50  0001 C CNN
	1    4960 6730
	0    1    1    0   
$EndComp
Text Label 5220 7200 0    50   ~ 0
PBTN5
$Comp
L Device:R R8
U 1 1 5C5619D6
P 4810 7460
F 0 "R8" V 4910 7460 50  0000 L CNN
F 1 "1K" V 4810 7410 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4740 7460 50  0001 C CNN
F 3 "~" H 4810 7460 50  0001 C CNN
	1    4810 7460
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5C5619DD
P 5060 7130
F 0 "#PWR0121" H 5060 6880 50  0001 C CNN
F 1 "GND" V 5050 6940 50  0000 C CNN
F 2 "" H 5060 7130 50  0001 C CNN
F 3 "" H 5060 7130 50  0001 C CNN
	1    5060 7130
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5C5619E3
P 4860 7130
F 0 "#PWR0122" H 4860 6880 50  0001 C CNN
F 1 "GND" V 4850 6940 50  0000 C CNN
F 2 "" H 4860 7130 50  0001 C CNN
F 3 "" H 4860 7130 50  0001 C CNN
	1    4860 7130
	1    0    0    -1  
$EndComp
Text Label 4660 7460 2    50   ~ 0
PLED5
Wire Wire Line
	4960 7130 4960 7460
Wire Wire Line
	5160 7130 5160 7200
Wire Wire Line
	5160 7200 5220 7200
Text Label 3460 1750 0    50   ~ 0
CBTN1
$Comp
L Device:Crystal Y1
U 1 1 5C5585B0
P 1050 3590
F 0 "Y1" V 1050 3380 50  0000 L CNN
F 1 "16MHz" V 1050 3700 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 1050 3590 50  0001 C CNN
F 3 "~" H 1050 3590 50  0001 C CNN
	1    1050 3590
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 3740 1250 3740
Wire Wire Line
	1050 3440 1250 3440
Text Label 3460 1950 0    50   ~ 0
CBTN2
Text Label 3460 1850 0    50   ~ 0
CBTN3
Text Label 3250 2050 0    50   ~ 0
XTAL1
Text Label 3250 2150 0    50   ~ 0
XTAL2
Text Label 910  3440 2    50   ~ 0
XTAL1
Wire Wire Line
	910  3440 1050 3440
Connection ~ 1050 3440
Text Label 910  3740 2    50   ~ 0
XTAL2
Wire Wire Line
	910  3740 1050 3740
Connection ~ 1050 3740
Text Label 3250 2850 0    50   ~ 0
SCL
Text Label 3250 2750 0    50   ~ 0
SDA
$Comp
L Interface_Expansion:PCF8574 U2
U 1 1 5C56DBE8
P 5360 1630
F 0 "U2" H 5360 1630 50  0000 C CNN
F 1 "PCF8574" H 5350 1390 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 5360 1630 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCF8574_PCF8574A.pdf" H 5360 1630 50  0001 C CNN
	1    5360 1630
	1    0    0    -1  
$EndComp
Text Label 5860 1230 0    50   ~ 0
PLED1
Text Label 5860 1330 0    50   ~ 0
PLED2
Text Label 5860 1430 0    50   ~ 0
PLED3
Text Label 5860 1530 0    50   ~ 0
PLED4
Text Label 5860 1630 0    50   ~ 0
PLED5
NoConn ~ 5860 1830
NoConn ~ 5860 1930
$Comp
L power:GND #PWR0123
U 1 1 5C56FE77
P 5360 2330
F 0 "#PWR0123" H 5360 2080 50  0001 C CNN
F 1 "GND" H 5360 2160 50  0000 C CNN
F 2 "" H 5360 2330 50  0001 C CNN
F 3 "" H 5360 2330 50  0001 C CNN
	1    5360 2330
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0124
U 1 1 5C570231
P 5360 930
F 0 "#PWR0124" H 5360 780 50  0001 C CNN
F 1 "VCC" H 5377 1103 50  0000 C CNN
F 2 "" H 5360 930 50  0001 C CNN
F 3 "" H 5360 930 50  0001 C CNN
	1    5360 930 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5C570CFC
P 4760 1730
F 0 "#PWR0125" H 4760 1480 50  0001 C CNN
F 1 "GND" H 4765 1557 50  0000 C CNN
F 2 "" H 4760 1730 50  0001 C CNN
F 3 "" H 4760 1730 50  0001 C CNN
	1    4760 1730
	1    0    0    -1  
$EndComp
Wire Wire Line
	4860 1730 4760 1730
Wire Wire Line
	4860 1630 4760 1630
Wire Wire Line
	4760 1630 4760 1730
Connection ~ 4760 1730
Wire Wire Line
	4860 1530 4760 1530
Wire Wire Line
	4760 1530 4760 1630
Connection ~ 4760 1630
$Comp
L Device:R R7
U 1 1 5C57296C
P 4670 1080
F 0 "R7" H 4720 1080 50  0000 L CNN
F 1 "4K7" V 4670 1010 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4600 1080 50  0001 C CNN
F 3 "~" H 4670 1080 50  0001 C CNN
	1    4670 1080
	1    0    0    -1  
$EndComp
Wire Wire Line
	4860 1230 4670 1230
$Comp
L power:VCC #PWR0126
U 1 1 5C57374F
P 4670 930
F 0 "#PWR0126" H 4670 780 50  0001 C CNN
F 1 "VCC" H 4670 1100 50  0000 C CNN
F 2 "" H 4670 930 50  0001 C CNN
F 3 "" H 4670 930 50  0001 C CNN
	1    4670 930 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5C574123
P 4430 1070
F 0 "R6" H 4480 1070 50  0000 L CNN
F 1 "4K7" V 4430 1000 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4360 1070 50  0001 C CNN
F 3 "~" H 4430 1070 50  0001 C CNN
	1    4430 1070
	1    0    0    -1  
$EndComp
Wire Wire Line
	4430 1220 4430 1330
Wire Wire Line
	4430 1330 4860 1330
$Comp
L power:VCC #PWR0127
U 1 1 5C574B1C
P 4430 920
F 0 "#PWR0127" H 4430 770 50  0001 C CNN
F 1 "VCC" H 4430 1090 50  0000 C CNN
F 2 "" H 4430 920 50  0001 C CNN
F 3 "" H 4430 920 50  0001 C CNN
	1    4430 920 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4670 1230 4310 1230
Connection ~ 4670 1230
Text Label 4310 1230 2    50   ~ 0
SCL
Text Label 4310 1330 2    50   ~ 0
SDA
Wire Wire Line
	4310 1330 4430 1330
Connection ~ 4430 1330
NoConn ~ 4860 2030
$Comp
L Display_Character:RC1602A U3
U 1 1 5C57904B
P 5360 3750
F 0 "U3" H 5360 3740 50  0000 C CNN
F 1 "RC1602A" V 5620 4170 50  0000 C CNN
F 2 "kamaji:LCD2004" H 5460 2950 50  0001 C CNN
F 3 "http://www.raystar-optronics.com/down.php?ProID=18" H 5460 3650 50  0001 C CNN
	1    5360 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5C579F93
P 4650 3770
F 0 "#PWR0128" H 4650 3520 50  0001 C CNN
F 1 "GND" H 4500 3710 50  0000 C CNN
F 2 "" H 4650 3770 50  0001 C CNN
F 3 "" H 4650 3770 50  0001 C CNN
	1    4650 3770
	1    0    0    -1  
$EndComp
Wire Wire Line
	4770 3550 4960 3550
Wire Wire Line
	4960 3650 4770 3650
Connection ~ 4770 3650
Wire Wire Line
	4770 3650 4770 3550
Wire Wire Line
	4960 3850 4770 3850
Wire Wire Line
	4960 3750 4770 3750
Wire Wire Line
	4770 3650 4770 3750
Connection ~ 4770 3750
Wire Wire Line
	4770 3750 4770 3850
Text Label 4960 3950 2    50   ~ 0
LCD0
Text Label 4960 4050 2    50   ~ 0
LCD1
Text Label 4960 4150 2    50   ~ 0
LCD2
Wire Wire Line
	4770 3750 4650 3750
Wire Wire Line
	4650 3750 4650 3770
Text Label 4960 4250 2    50   ~ 0
LCD3
$Comp
L power:GND #PWR0129
U 1 1 5C583224
P 5360 4450
F 0 "#PWR0129" H 5360 4200 50  0001 C CNN
F 1 "GND" H 5360 4280 50  0000 C CNN
F 2 "" H 5360 4450 50  0001 C CNN
F 3 "" H 5360 4450 50  0001 C CNN
	1    5360 4450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0130
U 1 1 5C58420E
P 5360 3050
F 0 "#PWR0130" H 5360 2900 50  0001 C CNN
F 1 "VCC" H 5360 3220 50  0000 C CNN
F 2 "" H 5360 3050 50  0001 C CNN
F 3 "" H 5360 3050 50  0001 C CNN
	1    5360 3050
	1    0    0    -1  
$EndComp
Text Label 4960 3450 2    50   ~ 0
LCDE
$Comp
L power:GND #PWR0131
U 1 1 5C58505F
P 4640 3350
F 0 "#PWR0131" H 4640 3100 50  0001 C CNN
F 1 "GND" H 4510 3260 50  0000 C CNN
F 2 "" H 4640 3350 50  0001 C CNN
F 3 "" H 4640 3350 50  0001 C CNN
	1    4640 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4960 3350 4640 3350
Text Label 4960 3250 2    50   ~ 0
LCDRS
$Comp
L Device:R_POT RV1
U 1 1 5C586EAD
P 5910 3550
F 0 "RV1" H 5840 3504 50  0000 R CNN
F 1 "CONTRAST" H 5840 3595 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Vishay_T73YP_Vertical" H 5910 3550 50  0001 C CNN
F 3 "~" H 5910 3550 50  0001 C CNN
	1    5910 3550
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0132
U 1 1 5C587F11
P 5910 3400
F 0 "#PWR0132" H 5910 3250 50  0001 C CNN
F 1 "VCC" H 5910 3570 50  0000 C CNN
F 2 "" H 5910 3400 50  0001 C CNN
F 3 "" H 5910 3400 50  0001 C CNN
	1    5910 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5C58832B
P 5910 3700
F 0 "#PWR0133" H 5910 3450 50  0001 C CNN
F 1 "GND" H 6070 3650 50  0000 C CNN
F 2 "" H 5910 3700 50  0001 C CNN
F 3 "" H 5910 3700 50  0001 C CNN
	1    5910 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5C58889B
P 5910 4050
F 0 "R10" V 5810 4050 50  0000 C CNN
F 1 "1K" V 5910 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5840 4050 50  0001 C CNN
F 3 "~" H 5910 4050 50  0001 C CNN
	1    5910 4050
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0134
U 1 1 5C58925D
P 6060 4050
F 0 "#PWR0134" H 6060 3900 50  0001 C CNN
F 1 "VCC" V 6077 4178 50  0000 L CNN
F 2 "" H 6060 4050 50  0001 C CNN
F 3 "" H 6060 4050 50  0001 C CNN
	1    6060 4050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 5C58BBDD
P 5760 3950
F 0 "#PWR0135" H 5760 3700 50  0001 C CNN
F 1 "GND" V 5765 3822 50  0000 R CNN
F 2 "" H 5760 3950 50  0001 C CNN
F 3 "" H 5760 3950 50  0001 C CNN
	1    5760 3950
	0    -1   -1   0   
$EndComp
Text Label 3250 1550 0    50   ~ 0
SPK
Text Label 3250 1450 0    50   ~ 0
LAMP
$Comp
L Connector:RJ10 J7
U 1 1 5C59098B
P 5970 6750
F 0 "J7" V 5979 7080 50  0000 L CNN
F 1 "RJ10" V 6070 7080 50  0000 L CNN
F 2 "kamaji:RJ10" V 5970 6800 50  0001 C CNN
F 3 "~" V 5970 6800 50  0001 C CNN
	1    5970 6750
	0    1    1    0   
$EndComp
Text Label 6230 7220 0    50   ~ 0
PBTN6
$Comp
L Device:R R9
U 1 1 5C590993
P 5820 7480
F 0 "R9" V 5920 7480 50  0000 L CNN
F 1 "1K" V 5820 7430 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5750 7480 50  0001 C CNN
F 3 "~" H 5820 7480 50  0001 C CNN
	1    5820 7480
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 5C59099A
P 6070 7150
F 0 "#PWR0136" H 6070 6900 50  0001 C CNN
F 1 "GND" V 6060 6960 50  0000 C CNN
F 2 "" H 6070 7150 50  0001 C CNN
F 3 "" H 6070 7150 50  0001 C CNN
	1    6070 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 5C5909A0
P 5870 7150
F 0 "#PWR0137" H 5870 6900 50  0001 C CNN
F 1 "GND" V 5860 6960 50  0000 C CNN
F 2 "" H 5870 7150 50  0001 C CNN
F 3 "" H 5870 7150 50  0001 C CNN
	1    5870 7150
	1    0    0    -1  
$EndComp
Text Label 5670 7480 2    50   ~ 0
PLED6
Wire Wire Line
	5970 7150 5970 7480
Wire Wire Line
	6170 7150 6170 7220
Wire Wire Line
	6170 7220 6230 7220
Text Label 5860 1730 0    50   ~ 0
PLED6
Text Label 3250 3650 0    50   ~ 0
PBTN1
Text Label 3250 3550 0    50   ~ 0
PBTN2
Text Label 3250 3450 0    50   ~ 0
PBTN3
Text Label 3250 3350 0    50   ~ 0
PBTN4
Text Label 3250 3250 0    50   ~ 0
PBTN5
Text Label 3250 3150 0    50   ~ 0
PBTN6
$Comp
L Connector_Generic:Conn_01x05 J8
U 1 1 5C59500C
P 8030 1500
F 0 "J8" H 8109 1542 50  0000 L CNN
F 1 "BOOST" H 8109 1451 50  0000 L CNN
F 2 "kamaji:DD1718PA" H 8030 1500 50  0001 C CNN
F 3 "~" H 8030 1500 50  0001 C CNN
	1    8030 1500
	1    0    0    -1  
$EndComp
NoConn ~ 7830 1300
$Comp
L power:GND #PWR0138
U 1 1 5C596BCE
P 7830 1600
F 0 "#PWR0138" H 7830 1350 50  0001 C CNN
F 1 "GND" V 7830 1460 50  0000 R CNN
F 2 "" H 7830 1600 50  0001 C CNN
F 3 "" H 7830 1600 50  0001 C CNN
	1    7830 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5C59C728
P 7630 3410
F 0 "RV2" H 7560 3456 50  0000 R CNN
F 1 "VOLUME" H 7560 3365 50  0000 R CNN
F 2 "kamaji:Potentiometer_Wheel_16mm" H 7630 3410 50  0001 C CNN
F 3 "~" H 7630 3410 50  0001 C CNN
	1    7630 3410
	-1   0    0    1   
$EndComp
$Comp
L Device:Jumper_NO_Small JP2
U 1 1 5C59FF98
P 7740 3160
F 0 "JP2" V 7694 3208 50  0000 L CNN
F 1 "SND5V" V 7785 3208 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7740 3160 50  0001 C CNN
F 3 "~" H 7740 3160 50  0001 C CNN
	1    7740 3160
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0139
U 1 1 5C5A16B5
P 7830 1700
F 0 "#PWR0139" H 7830 1550 50  0001 C CNN
F 1 "VCC" V 7830 1840 50  0000 L CNN
F 2 "" H 7830 1700 50  0001 C CNN
F 3 "" H 7830 1700 50  0001 C CNN
	1    7830 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0140
U 1 1 5C5A2E58
P 7830 1400
F 0 "#PWR0140" H 7830 1150 50  0001 C CNN
F 1 "GND" V 7830 1260 50  0000 R CNN
F 2 "" H 7830 1400 50  0001 C CNN
F 3 "" H 7830 1400 50  0001 C CNN
	1    7830 1400
	0    1    1    0   
$EndComp
$Comp
L power:+24V #PWR0141
U 1 1 5C5A3204
P 7830 1500
F 0 "#PWR0141" H 7830 1350 50  0001 C CNN
F 1 "+24V" V 7820 1630 50  0000 L CNN
F 2 "" H 7830 1500 50  0001 C CNN
F 3 "" H 7830 1500 50  0001 C CNN
	1    7830 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:+24V #PWR0142
U 1 1 5C5A433F
P 7520 3060
F 0 "#PWR0142" H 7520 2910 50  0001 C CNN
F 1 "+24V" H 7420 3220 50  0000 L CNN
F 2 "" H 7520 3060 50  0001 C CNN
F 3 "" H 7520 3060 50  0001 C CNN
	1    7520 3060
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0143
U 1 1 5C5A5023
P 7740 3060
F 0 "#PWR0143" H 7740 2910 50  0001 C CNN
F 1 "VCC" H 7740 3220 50  0000 C CNN
F 2 "" H 7740 3060 50  0001 C CNN
F 3 "" H 7740 3060 50  0001 C CNN
	1    7740 3060
	1    0    0    -1  
$EndComp
Wire Wire Line
	7520 3260 7630 3260
Wire Wire Line
	7630 3260 7740 3260
Connection ~ 7630 3260
$Comp
L power:GND #PWR0144
U 1 1 5C5A7206
P 7630 3560
F 0 "#PWR0144" H 7630 3310 50  0001 C CNN
F 1 "GND" H 7630 3390 50  0000 C CNN
F 2 "" H 7630 3560 50  0001 C CNN
F 3 "" H 7630 3560 50  0001 C CNN
	1    7630 3560
	1    0    0    -1  
$EndComp
$Comp
L Device:Speaker_Crystal LS1
U 1 1 5C5A8DB6
P 7280 3510
F 0 "LS1" H 7455 3506 50  0000 L CNN
F 1 "Speaker" H 7455 3415 50  0000 L CNN
F 2 "kamaji:Buzzer_ARIO_98dB" H 7245 3460 50  0001 C CNN
F 3 "~" H 7245 3460 50  0001 C CNN
	1    7280 3510
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5C5AA536
P 7380 3940
F 0 "Q2" H 7571 3986 50  0000 L CNN
F 1 "2N3904" H 7571 3895 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 7580 3865 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 7380 3940 50  0001 L CNN
	1    7380 3940
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0145
U 1 1 5C5ABB73
P 7480 4140
F 0 "#PWR0145" H 7480 3890 50  0001 C CNN
F 1 "GND" H 7480 3970 50  0000 C CNN
F 2 "" H 7480 4140 50  0001 C CNN
F 3 "" H 7480 4140 50  0001 C CNN
	1    7480 4140
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP1
U 1 1 5C5AC498
P 7520 3160
F 0 "JP1" V 7570 3350 50  0000 R CNN
F 1 "SND24V" V 7480 3520 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7520 3160 50  0001 C CNN
F 3 "~" H 7520 3160 50  0001 C CNN
	1    7520 3160
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 5C5ADC70
P 7030 3940
F 0 "R12" V 6930 3940 50  0000 C CNN
F 1 "1K" V 7030 3940 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6960 3940 50  0001 C CNN
F 3 "~" H 7030 3940 50  0001 C CNN
	1    7030 3940
	0    -1   -1   0   
$EndComp
Text Label 6880 3940 2    50   ~ 0
SPK
Text Label 3250 3850 0    50   ~ 0
LCDRS
Text Label 3250 3750 0    50   ~ 0
LCDE
$Comp
L Connector:USB_A J10
U 1 1 5C56BBEE
P 10170 3080
F 0 "J10" H 10225 3547 50  0000 C CNN
F 1 "USB_A" H 10225 3456 50  0000 C CNN
F 2 "kamaji:USB_A" H 10320 3030 50  0001 C CNN
F 3 " ~" H 10320 3030 50  0001 C CNN
	1    10170 3080
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B J9
U 1 1 5C56C054
P 10120 1380
F 0 "J9" H 10175 1847 50  0000 C CNN
F 1 "USB_B" H 10175 1756 50  0000 C CNN
F 2 "kamaji:USB_B" H 10270 1330 50  0001 C CNN
F 3 " ~" H 10270 1330 50  0001 C CNN
	1    10120 1380
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 5C56C959
P 10120 1780
F 0 "#PWR0146" H 10120 1530 50  0001 C CNN
F 1 "GND" H 10240 1620 50  0000 C CNN
F 2 "" H 10120 1780 50  0001 C CNN
F 3 "" H 10120 1780 50  0001 C CNN
	1    10120 1780
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0147
U 1 1 5C56D0D3
P 10020 1780
F 0 "#PWR0147" H 10020 1530 50  0001 C CNN
F 1 "GND" H 9910 1620 50  0000 C CNN
F 2 "" H 10020 1780 50  0001 C CNN
F 3 "" H 10020 1780 50  0001 C CNN
	1    10020 1780
	1    0    0    -1  
$EndComp
NoConn ~ 10420 1380
NoConn ~ 10420 1480
$Comp
L power:VCC #PWR0148
U 1 1 5C56F223
P 10420 1180
F 0 "#PWR0148" H 10420 1030 50  0001 C CNN
F 1 "VCC" H 10480 1340 50  0000 C CNN
F 2 "" H 10420 1180 50  0001 C CNN
F 3 "" H 10420 1180 50  0001 C CNN
	1    10420 1180
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0149
U 1 1 5C57096C
P 10070 3480
F 0 "#PWR0149" H 10070 3230 50  0001 C CNN
F 1 "GND" H 9960 3370 50  0000 C CNN
F 2 "" H 10070 3480 50  0001 C CNN
F 3 "" H 10070 3480 50  0001 C CNN
	1    10070 3480
	1    0    0    -1  
$EndComp
NoConn ~ 10470 3080
NoConn ~ 10470 3180
$Comp
L power:VCC #PWR0150
U 1 1 5C5728ED
P 10470 2880
F 0 "#PWR0150" H 10470 2730 50  0001 C CNN
F 1 "VCC" H 10530 3040 50  0000 C CNN
F 2 "" H 10470 2880 50  0001 C CNN
F 3 "" H 10470 2880 50  0001 C CNN
	1    10470 2880
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BS170 Q3
U 1 1 5C5755BD
P 10070 3810
F 0 "Q3" H 10275 3856 50  0000 L CNN
F 1 "BS170" H 10275 3765 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 10270 3735 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BS/BS170.pdf" H 10070 3810 50  0001 L CNN
	1    10070 3810
	1    0    0    -1  
$EndComp
Wire Wire Line
	10170 3480 10170 3610
$Comp
L power:GND #PWR0151
U 1 1 5C5768E9
P 10170 4010
F 0 "#PWR0151" H 10170 3760 50  0001 C CNN
F 1 "GND" H 10175 3837 50  0000 C CNN
F 2 "" H 10170 4010 50  0001 C CNN
F 3 "" H 10170 4010 50  0001 C CNN
	1    10170 4010
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5C577613
P 9870 3960
F 0 "R19" H 9700 3950 50  0000 L CNN
F 1 "10K" V 9870 3880 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9800 3960 50  0001 C CNN
F 3 "~" H 9870 3960 50  0001 C CNN
	1    9870 3960
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0152
U 1 1 5C57872C
P 9870 4110
F 0 "#PWR0152" H 9870 3860 50  0001 C CNN
F 1 "GND" H 9875 3937 50  0000 C CNN
F 2 "" H 9870 4110 50  0001 C CNN
F 3 "" H 9870 4110 50  0001 C CNN
	1    9870 4110
	1    0    0    -1  
$EndComp
Wire Wire Line
	9870 3810 9740 3810
Connection ~ 9870 3810
Text Label 9440 3810 2    50   ~ 0
LAMP
$Comp
L Device:R R18
U 1 1 5C57A589
P 9590 3810
F 0 "R18" V 9500 3820 50  0000 C CNN
F 1 "1K" V 9590 3810 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9520 3810 50  0001 C CNN
F 3 "~" H 9590 3810 50  0001 C CNN
	1    9590 3810
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5C59494F
P 1290 1130
F 0 "C1" H 1405 1176 50  0000 L CNN
F 1 "0.1uF" H 1405 1085 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1328 980 50  0001 C CNN
F 3 "~" H 1290 1130 50  0001 C CNN
	1    1290 1130
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0156
U 1 1 5C594EEE
P 1290 1280
F 0 "#PWR0156" H 1290 1030 50  0001 C CNN
F 1 "GND" H 1295 1107 50  0000 C CNN
F 2 "" H 1290 1280 50  0001 C CNN
F 3 "" H 1290 1280 50  0001 C CNN
	1    1290 1280
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0157
U 1 1 5C59538F
P 1290 980
F 0 "#PWR0157" H 1290 830 50  0001 C CNN
F 1 "VCC" H 1307 1153 50  0000 C CNN
F 2 "" H 1290 980 50  0001 C CNN
F 3 "" H 1290 980 50  0001 C CNN
	1    1290 980 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5C5964F9
P 6110 2180
F 0 "C5" H 6225 2226 50  0000 L CNN
F 1 "0.1uF" H 6225 2135 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6148 2030 50  0001 C CNN
F 3 "~" H 6110 2180 50  0001 C CNN
	1    6110 2180
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0158
U 1 1 5C596500
P 6110 2330
F 0 "#PWR0158" H 6110 2080 50  0001 C CNN
F 1 "GND" H 6115 2157 50  0000 C CNN
F 2 "" H 6110 2330 50  0001 C CNN
F 3 "" H 6110 2330 50  0001 C CNN
	1    6110 2330
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0159
U 1 1 5C596506
P 6110 2030
F 0 "#PWR0159" H 6110 1880 50  0001 C CNN
F 1 "VCC" H 6127 2203 50  0000 C CNN
F 2 "" H 6110 2030 50  0001 C CNN
F 3 "" H 6110 2030 50  0001 C CNN
	1    6110 2030
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5C597457
P 5900 4670
F 0 "C4" H 6015 4716 50  0000 L CNN
F 1 "0.1uF" H 6015 4625 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5938 4520 50  0001 C CNN
F 3 "~" H 5900 4670 50  0001 C CNN
	1    5900 4670
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0160
U 1 1 5C59745E
P 5900 4820
F 0 "#PWR0160" H 5900 4570 50  0001 C CNN
F 1 "GND" H 5905 4647 50  0000 C CNN
F 2 "" H 5900 4820 50  0001 C CNN
F 3 "" H 5900 4820 50  0001 C CNN
	1    5900 4820
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0161
U 1 1 5C597464
P 5900 4520
F 0 "#PWR0161" H 5900 4370 50  0001 C CNN
F 1 "VCC" H 5917 4693 50  0000 C CNN
F 2 "" H 5900 4520 50  0001 C CNN
F 3 "" H 5900 4520 50  0001 C CNN
	1    5900 4520
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5C59880E
P 8610 1520
F 0 "C6" H 8725 1566 50  0000 L CNN
F 1 "20uF" H 8725 1475 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8648 1370 50  0001 C CNN
F 3 "~" H 8610 1520 50  0001 C CNN
	1    8610 1520
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0162
U 1 1 5C598815
P 8610 1670
F 0 "#PWR0162" H 8610 1420 50  0001 C CNN
F 1 "GND" H 8615 1497 50  0000 C CNN
F 2 "" H 8610 1670 50  0001 C CNN
F 3 "" H 8610 1670 50  0001 C CNN
	1    8610 1670
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR0163
U 1 1 5C59A56D
P 8610 1370
F 0 "#PWR0163" H 8610 1220 50  0001 C CNN
F 1 "+24V" H 8625 1543 50  0000 C CNN
F 2 "" H 8610 1370 50  0001 C CNN
F 3 "" H 8610 1370 50  0001 C CNN
	1    8610 1370
	1    0    0    -1  
$EndComp
Wire Wire Line
	3460 1850 3250 1850
Wire Wire Line
	3460 1750 3250 1750
Wire Wire Line
	3250 1950 3460 1950
Text Label 3250 2350 0    50   ~ 0
LCD0
Text Label 3250 2450 0    50   ~ 0
LCD1
Text Label 3250 2550 0    50   ~ 0
LCD2
Text Label 3250 2650 0    50   ~ 0
LCD3
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 5C5C4D22
P 1160 2310
F 0 "J2" H 1210 2727 50  0000 C CNN
F 1 "ICSP" H 1210 2636 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Horizontal" H 1160 2310 50  0001 C CNN
F 3 "~" H 1160 2310 50  0001 C CNN
	1    1160 2310
	1    0    0    -1  
$EndComp
Wire Wire Line
	1460 2510 1460 2410
Connection ~ 1460 2510
Connection ~ 1460 2310
Wire Wire Line
	1460 2310 1460 2210
Connection ~ 1460 2410
Wire Wire Line
	1460 2410 1460 2310
NoConn ~ 960  2210
$Comp
L Device:C C7
U 1 1 5C5DFDB3
P 730 1120
F 0 "C7" H 845 1166 50  0000 L CNN
F 1 "0.1uF" H 845 1075 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 768 970 50  0001 C CNN
F 3 "~" H 730 1120 50  0001 C CNN
	1    730  1120
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C5DFDBA
P 730 1270
F 0 "#PWR02" H 730 1020 50  0001 C CNN
F 1 "GND" H 735 1097 50  0000 C CNN
F 2 "" H 730 1270 50  0001 C CNN
F 3 "" H 730 1270 50  0001 C CNN
	1    730  1270
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5C5DFDC0
P 730 970
F 0 "#PWR01" H 730 820 50  0001 C CNN
F 1 "VCC" H 747 1143 50  0000 C CNN
F 2 "" H 730 970 50  0001 C CNN
F 3 "" H 730 970 50  0001 C CNN
	1    730  970 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7480 3510 7480 3740
NoConn ~ 3250 1650
$EndSCHEMATC
