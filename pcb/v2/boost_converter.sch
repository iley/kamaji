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
Sheet 2 2
Title "Boost converter for Kamaji"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L L L1
U 1 1 5A30CDF1
P 5480 2990
F 0 "L1" V 5430 2990 50  0000 C CNN
F 1 "10uH" V 5555 2990 50  0000 C CNN
F 2 "kamaji:Inductor_PIS2408_SMD" H 5480 2990 50  0001 C CNN
F 3 "" H 5480 2990 50  0001 C CNN
	1    5480 2990
	0    -1   -1   0   
$EndComp
$Comp
L D_Zener D2
U 1 1 5A30CDF2
P 6250 3160
F 0 "D2" H 6250 3260 50  0000 C CNN
F 1 "MBR0540" H 6250 3060 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H 6250 3160 50  0001 C CNN
F 3 "" H 6250 3160 50  0001 C CNN
	1    6250 3160
	-1   0    0    1   
$EndComp
$Comp
L R R18
U 1 1 5A30CDF3
P 6490 3910
F 0 "R18" V 6570 3910 50  0000 C CNN
F 1 "100K" V 6490 3910 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6420 3910 50  0001 C CNN
F 3 "" H 6490 3910 50  0001 C CNN
	1    6490 3910
	0    -1   -1   0   
$EndComp
$Comp
L C C9
U 1 1 5A30CDF4
P 6240 4060
F 0 "C9" H 6130 3980 50  0000 L CNN
F 1 "220pF" H 6265 3960 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 6278 3910 50  0001 C CNN
F 3 "" H 6240 4060 50  0001 C CNN
	1    6240 4060
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 5A30CDF5
P 5990 3910
F 0 "R17" V 6070 3910 50  0000 C CNN
F 1 "13K3" V 5990 3910 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5920 3910 50  0001 C CNN
F 3 "" H 5990 3910 50  0001 C CNN
	1    5990 3910
	0    -1   -1   0   
$EndComp
$Comp
L R R16
U 1 1 5A30CDF6
P 4780 3460
F 0 "R16" V 4860 3460 50  0000 C CNN
F 1 "51K" V 4780 3460 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4710 3460 50  0001 C CNN
F 3 "" H 4780 3460 50  0001 C CNN
	1    4780 3460
	0    -1   -1   0   
$EndComp
$Comp
L LM27313 BC1
U 1 1 5A30CDF7
P 5480 3410
F 0 "BC1" H 5630 3210 60  0000 C CNN
F 1 "LM27313" H 5480 3660 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 5580 3360 60  0001 C CNN
F 3 "" H 5580 3360 60  0001 C CNN
	1    5480 3410
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5A30CDF8
P 4470 3710
F 0 "C8" H 4495 3810 50  0000 L CNN
F 1 "2.2uF" H 4495 3610 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4508 3560 50  0001 C CNN
F 3 "" H 4470 3710 50  0001 C CNN
	1    4470 3710
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 5A30CDFB
P 6830 3910
F 0 "RV1" V 6655 3910 50  0000 C CNN
F 1 "200K" V 6730 3910 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3339P_Horizontal" H 6830 3910 50  0001 C CNN
F 3 "" H 6830 3910 50  0001 C CNN
	1    6830 3910
	-1   0    0    1   
$EndComp
$Comp
L C C7
U 1 1 5A30CDFC
P 7130 3680
F 0 "C7" V 7260 3640 50  0000 L CNN
F 1 "4.7uF" V 7000 3570 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 7168 3530 50  0001 C CNN
F 3 "" H 7130 3680 50  0001 C CNN
	1    7130 3680
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 5A30CDFD
P 5720 4060
F 0 "R19" V 5800 4060 50  0000 C CNN
F 1 "680R" V 5720 4060 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5650 4060 50  0001 C CNN
F 3 "" H 5720 4060 50  0001 C CNN
	1    5720 4060
	1    0    0    -1  
$EndComp
Text HLabel 7350 3160 2    60   Output ~ 0
BOOST_VOUT
$Comp
L VCC #PWR057
U 1 1 5A30F671
P 4340 3310
F 0 "#PWR057" H 4340 3160 50  0001 C CNN
F 1 "VCC" H 4340 3460 50  0000 C CNN
F 2 "" H 4340 3310 50  0001 C CNN
F 3 "" H 4340 3310 50  0001 C CNN
	1    4340 3310
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR058
U 1 1 5A30FE4F
P 5720 4400
F 0 "#PWR058" H 5720 4150 50  0001 C CNN
F 1 "GND" H 5720 4250 50  0000 C CNN
F 2 "" H 5720 4400 50  0001 C CNN
F 3 "" H 5720 4400 50  0001 C CNN
	1    5720 4400
	1    0    0    -1  
$EndComp
Text Label 4380 3310 0    60   ~ 0
BOOST_VIN
Text Label 6460 3160 0    60   ~ 0
BOOST_VOUT
Text Label 6030 3460 0    60   ~ 0
BOOST_FB
Wire Wire Line
	5630 2990 6030 2990
Wire Wire Line
	6030 2990 6030 3310
Wire Wire Line
	6100 3160 6030 3160
Connection ~ 6030 3160
Wire Wire Line
	6140 3910 6340 3910
Connection ~ 6240 3910
Wire Wire Line
	6030 3460 6240 3460
Wire Wire Line
	6240 3460 6240 3910
Wire Wire Line
	4340 3310 4930 3310
Wire Wire Line
	6240 4400 6240 4210
Wire Wire Line
	5480 4400 5480 3760
Wire Wire Line
	4470 3860 4470 4400
Wire Wire Line
	5720 3910 5840 3910
Wire Wire Line
	4630 3460 4470 3460
Wire Wire Line
	6640 3910 6680 3910
Wire Wire Line
	4930 3310 4930 2990
Wire Wire Line
	4930 2990 5330 2990
Wire Wire Line
	4470 3310 4470 3560
Connection ~ 4470 3310
Connection ~ 4470 3460
Wire Wire Line
	5720 4400 5720 4210
Wire Wire Line
	6680 3910 6680 4060
Wire Wire Line
	6680 4060 6830 4060
Wire Wire Line
	6830 3160 6830 3760
Connection ~ 6830 3490
Wire Wire Line
	4470 4400 7130 4400
Connection ~ 5480 4400
Connection ~ 5720 4400
Connection ~ 6240 4400
Wire Wire Line
	7130 4400 7130 3830
Wire Wire Line
	6400 3160 7350 3160
Wire Wire Line
	7130 3160 7130 3530
Connection ~ 7130 3160
Connection ~ 6830 3160
$EndSCHEMATC
