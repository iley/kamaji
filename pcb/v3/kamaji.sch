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
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:nxp
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:kamaji-cache
EELAYER 25 0
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
L ATMEGA644P-20PU U1
U 1 1 5AC53E70
P 2955 3620
F 0 "U1" H 2105 5500 50  0000 L BNN
F 1 "ATMEGA644P-20PU" H 3355 1670 50  0000 L BNN
F 2 "Housings_DIP:DIP-40_W15.24mm_LongPads" H 2955 3620 50  0001 C CIN
F 3 "" H 2955 3620 50  0001 C CNN
	1    2955 3620
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5AC5401B
P 2955 5620
F 0 "#PWR01" H 2955 5370 50  0001 C CNN
F 1 "GND" H 2955 5470 50  0000 C CNN
F 2 "" H 2955 5620 50  0001 C CNN
F 3 "" H 2955 5620 50  0001 C CNN
	1    2955 5620
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 5AC540DD
P 2955 1620
F 0 "#PWR02" H 2955 1470 50  0001 C CNN
F 1 "VCC" H 2955 1770 50  0000 C CNN
F 2 "" H 2955 1620 50  0001 C CNN
F 3 "" H 2955 1620 50  0001 C CNN
	1    2955 1620
	1    0    0    -1  
$EndComp
$Comp
L R_Network08 RN1
U 1 1 5ACA661C
P 4875 4495
F 0 "RN1" H 4685 4695 50  0000 C CNN
F 1 "10K" H 5025 4695 50  0000 C CNN
F 2 "Resistors_THT:R_Array_SIP9" V 5350 4495 50  0001 C CNN
F 3 "" H 4875 4495 50  0001 C CNN
	1    4875 4495
	-1   0    0    1   
$EndComp
$Comp
L Crystal Y1
U 1 1 5ACA6786
P 1825 2520
F 0 "Y1" H 1825 2670 50  0000 C CNN
F 1 "20MHz" H 1825 2370 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 1825 2520 50  0001 C CNN
F 3 "" H 1825 2520 50  0001 C CNN
	1    1825 2520
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 5ACA6821
P 1565 2320
F 0 "C3" H 1590 2420 50  0000 L CNN
F 1 "22pF" H 1590 2220 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1603 2170 50  0001 C CNN
F 3 "" H 1565 2320 50  0001 C CNN
	1    1565 2320
	0    -1   -1   0   
$EndComp
$Comp
L C C4
U 1 1 5ACA690C
P 1565 2720
F 0 "C4" H 1590 2820 50  0000 L CNN
F 1 "22pF" H 1590 2620 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1603 2570 50  0001 C CNN
F 3 "" H 1565 2720 50  0001 C CNN
	1    1565 2720
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 5ACA6A47
P 1265 2530
F 0 "#PWR03" H 1265 2280 50  0001 C CNN
F 1 "GND" H 1265 2380 50  0000 C CNN
F 2 "" H 1265 2530 50  0001 C CNN
F 3 "" H 1265 2530 50  0001 C CNN
	1    1265 2530
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5ACA6B7C
P 1955 1770
F 0 "R1" V 2035 1770 50  0000 C CNN
F 1 "10K" V 1955 1770 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1885 1770 50  0001 C CNN
F 3 "" H 1955 1770 50  0001 C CNN
	1    1955 1770
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5ACA6BDD
P 1955 1620
F 0 "#PWR04" H 1955 1470 50  0001 C CNN
F 1 "VCC" H 1955 1770 50  0000 C CNN
F 2 "" H 1955 1620 50  0001 C CNN
F 3 "" H 1955 1620 50  0001 C CNN
	1    1955 1620
	1    0    0    -1  
$EndComp
Text Label 1785 1920 2    60   ~ 0
RESET
$Comp
L GND #PWR05
U 1 1 5ACA6E3F
P 1955 3120
F 0 "#PWR05" H 1955 2870 50  0001 C CNN
F 1 "GND" H 1955 2970 50  0000 C CNN
F 2 "" H 1955 3120 50  0001 C CNN
F 3 "" H 1955 3120 50  0001 C CNN
	1    1955 3120
	1    0    0    -1  
$EndComp
Text Label 5315 3720 0    60   ~ 0
BTN1
Text Label 5315 3820 0    60   ~ 0
BTN2
Text Label 5315 3920 0    60   ~ 0
BTN3
Text Label 5315 4020 0    60   ~ 0
BTN4
Text Label 5315 4120 0    60   ~ 0
BTN5
Text Label 5315 4220 0    60   ~ 0
BTN6
NoConn ~ 4675 4295
NoConn ~ 4575 4295
$Comp
L VCC #PWR06
U 1 1 5ACBC1AF
P 5440 4695
F 0 "#PWR06" H 5440 4545 50  0001 C CNN
F 1 "VCC" H 5440 4845 50  0000 C CNN
F 2 "" H 5440 4695 50  0001 C CNN
F 3 "" H 5440 4695 50  0001 C CNN
	1    5440 4695
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5ACBC4AF
P 4105 4820
F 0 "R2" V 4140 4675 50  0000 C CNN
F 1 "220R" V 4105 4820 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4035 4820 50  0001 C CNN
F 3 "" H 4105 4820 50  0001 C CNN
	1    4105 4820
	0    1    1    0   
$EndComp
Text Label 4255 4820 0    60   ~ 0
LED1
$Comp
L R R3
U 1 1 5ACBC589
P 4105 4920
F 0 "R3" V 4140 4775 50  0000 C CNN
F 1 "220R" V 4105 4920 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4035 4920 50  0001 C CNN
F 3 "" H 4105 4920 50  0001 C CNN
	1    4105 4920
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5ACBC655
P 4105 5020
F 0 "R4" V 4140 4875 50  0000 C CNN
F 1 "220R" V 4105 5020 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4035 5020 50  0001 C CNN
F 3 "" H 4105 5020 50  0001 C CNN
	1    4105 5020
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5ACBC696
P 4105 5120
F 0 "R5" V 4140 4975 50  0000 C CNN
F 1 "220R" V 4105 5120 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4035 5120 50  0001 C CNN
F 3 "" H 4105 5120 50  0001 C CNN
	1    4105 5120
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5ACBC705
P 4105 2520
F 0 "R6" V 4140 2375 50  0000 C CNN
F 1 "220R" V 4105 2520 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4035 2520 50  0001 C CNN
F 3 "" H 4105 2520 50  0001 C CNN
	1    4105 2520
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 5ACBC74A
P 4105 2620
F 0 "R7" V 4140 2475 50  0000 C CNN
F 1 "220R" V 4105 2620 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4035 2620 50  0001 C CNN
F 3 "" H 4105 2620 50  0001 C CNN
	1    4105 2620
	0    1    1    0   
$EndComp
Text Label 4255 4920 0    60   ~ 0
LED2
Text Label 4255 5020 0    60   ~ 0
LED3
Text Label 4255 5120 0    60   ~ 0
LED4
Text Label 4255 2620 0    60   ~ 0
LED5
Text Label 4255 2520 0    60   ~ 0
LED6
NoConn ~ 3955 4420
NoConn ~ 3955 4320
$Comp
L WC1602A DS1
U 1 1 5ACBD4DB
P 5165 1825
F 0 "DS1" H 4935 2575 50  0000 C CNN
F 1 "WC1602A" H 5375 2575 50  0000 C CNN
F 2 "kamaji:LCD2004" H 5165 925 50  0001 C CIN
F 3 "" H 5865 1825 50  0001 C CNN
	1    5165 1825
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5ACBD755
P 5715 1525
F 0 "R8" V 5795 1525 50  0000 C CNN
F 1 "220R" V 5715 1525 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5645 1525 50  0001 C CNN
F 3 "" H 5715 1525 50  0001 C CNN
	1    5715 1525
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR07
U 1 1 5ACBD858
P 5865 1525
F 0 "#PWR07" H 5865 1375 50  0001 C CNN
F 1 "VCC" H 5865 1675 50  0000 C CNN
F 2 "" H 5865 1525 50  0001 C CNN
F 3 "" H 5865 1525 50  0001 C CNN
	1    5865 1525
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5ACBD8C0
P 5565 1625
F 0 "#PWR08" H 5565 1375 50  0001 C CNN
F 1 "GND" H 5565 1475 50  0000 C CNN
F 2 "" H 5565 1625 50  0001 C CNN
F 3 "" H 5565 1625 50  0001 C CNN
	1    5565 1625
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR09
U 1 1 5ACBD8FC
P 5165 1025
F 0 "#PWR09" H 5165 875 50  0001 C CNN
F 1 "VCC" H 5165 1175 50  0000 C CNN
F 2 "" H 5165 1025 50  0001 C CNN
F 3 "" H 5165 1025 50  0001 C CNN
	1    5165 1025
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5ACBD9CB
P 5165 2625
F 0 "#PWR010" H 5165 2375 50  0001 C CNN
F 1 "GND" H 5165 2475 50  0000 C CNN
F 2 "" H 5165 2625 50  0001 C CNN
F 3 "" H 5165 2625 50  0001 C CNN
	1    5165 2625
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5ACBDA10
P 5895 2155
F 0 "C5" H 5920 2255 50  0000 L CNN
F 1 "0.1uF" H 5920 2055 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 5933 2005 50  0001 C CNN
F 3 "" H 5895 2155 50  0001 C CNN
	1    5895 2155
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 5ACBDAD5
P 5895 2005
F 0 "#PWR011" H 5895 1855 50  0001 C CNN
F 1 "VCC" H 5895 2155 50  0000 C CNN
F 2 "" H 5895 2005 50  0001 C CNN
F 3 "" H 5895 2005 50  0001 C CNN
	1    5895 2005
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5ACBDB0D
P 5895 2305
F 0 "#PWR012" H 5895 2055 50  0001 C CNN
F 1 "GND" H 5895 2155 50  0000 C CNN
F 2 "" H 5895 2305 50  0001 C CNN
F 3 "" H 5895 2305 50  0001 C CNN
	1    5895 2305
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5ACBDB90
P 4605 1325
F 0 "#PWR013" H 4605 1075 50  0001 C CNN
F 1 "GND" H 4475 1265 50  0000 C CNN
F 2 "" H 4605 1325 50  0001 C CNN
F 3 "" H 4605 1325 50  0001 C CNN
	1    4605 1325
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5ACBE29E
P 4600 1825
F 0 "#PWR014" H 4600 1575 50  0001 C CNN
F 1 "GND" H 4515 1820 50  0000 C CNN
F 2 "" H 4600 1825 50  0001 C CNN
F 3 "" H 4600 1825 50  0001 C CNN
	1    4600 1825
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x05_Odd_Even J2
U 1 1 5ACBEB97
P 1295 4230
F 0 "J2" H 1345 4530 50  0000 C CNN
F 1 "ICSP" H 1345 3930 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 1295 4230 50  0001 C CNN
F 3 "" H 1295 4230 50  0001 C CNN
	1    1295 4230
	1    0    0    -1  
$EndComp
Text Label 3955 3420 0    60   ~ 0
MISO
Text Label 3955 3320 0    60   ~ 0
MOSI
Text Label 3955 3520 0    60   ~ 0
SCK
$Comp
L VCC #PWR015
U 1 1 5ACBF26A
P 1595 4030
F 0 "#PWR015" H 1595 3880 50  0001 C CNN
F 1 "VCC" H 1595 4180 50  0000 C CNN
F 2 "" H 1595 4030 50  0001 C CNN
F 3 "" H 1595 4030 50  0001 C CNN
	1    1595 4030
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5ACBF2D5
P 1595 4430
F 0 "#PWR016" H 1595 4180 50  0001 C CNN
F 1 "GND" H 1595 4280 50  0000 C CNN
F 2 "" H 1595 4430 50  0001 C CNN
F 3 "" H 1595 4430 50  0001 C CNN
	1    1595 4430
	1    0    0    -1  
$EndComp
Text Label 1095 4030 2    60   ~ 0
MOSI
Text Label 1095 4230 2    60   ~ 0
RESET
Text Label 1095 4330 2    60   ~ 0
SCK
Text Label 1095 4430 2    60   ~ 0
MISO
NoConn ~ 1095 4130
Text Label 3955 2820 0    60   ~ 0
CBTN1
Text Label 3955 2920 0    60   ~ 0
CBTN2
Text Label 3955 3020 0    60   ~ 0
CBTN3
Text Label 4365 5320 0    60   ~ 0
SOUND
Text Label 4360 5220 0    60   ~ 0
LAMP
$Comp
L RJ10 J3
U 1 1 5ACC143B
P 1910 6585
F 0 "J3" H 1910 6635 60  0000 C CNN
F 1 "RJ10" H 1910 6485 60  0000 C CNN
F 2 "kamaji:RJ10" H 1885 6560 60  0001 C CNN
F 3 "" H 1885 6560 60  0001 C CNN
	1    1910 6585
	1    0    0    -1  
$EndComp
Text Label 1670 6935 2    60   ~ 0
BTN1
$Comp
L GND #PWR017
U 1 1 5ACC1734
P 1860 6935
F 0 "#PWR017" H 1860 6685 50  0001 C CNN
F 1 "GND" H 1860 6785 50  0000 C CNN
F 2 "" H 1860 6935 50  0001 C CNN
F 3 "" H 1860 6935 50  0001 C CNN
	1    1860 6935
	1    0    0    -1  
$EndComp
Text Label 1665 7180 2    60   ~ 0
LED1
$Comp
L GND #PWR018
U 1 1 5ACC1960
P 2060 6935
F 0 "#PWR018" H 2060 6685 50  0001 C CNN
F 1 "GND" H 2060 6785 50  0000 C CNN
F 2 "" H 2060 6935 50  0001 C CNN
F 3 "" H 2060 6935 50  0001 C CNN
	1    2060 6935
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J4
U 1 1 5ACC1E30
P 2675 6585
F 0 "J4" H 2675 6635 60  0000 C CNN
F 1 "RJ10" H 2675 6485 60  0000 C CNN
F 2 "kamaji:RJ10" H 2650 6560 60  0001 C CNN
F 3 "" H 2650 6560 60  0001 C CNN
	1    2675 6585
	1    0    0    -1  
$EndComp
Text Label 2435 6935 2    60   ~ 0
BTN2
$Comp
L GND #PWR019
U 1 1 5ACC1E38
P 2625 6935
F 0 "#PWR019" H 2625 6685 50  0001 C CNN
F 1 "GND" H 2625 6785 50  0000 C CNN
F 2 "" H 2625 6935 50  0001 C CNN
F 3 "" H 2625 6935 50  0001 C CNN
	1    2625 6935
	1    0    0    -1  
$EndComp
Text Label 2430 7180 2    60   ~ 0
LED2
$Comp
L GND #PWR020
U 1 1 5ACC1E41
P 2825 6935
F 0 "#PWR020" H 2825 6685 50  0001 C CNN
F 1 "GND" H 2825 6785 50  0000 C CNN
F 2 "" H 2825 6935 50  0001 C CNN
F 3 "" H 2825 6935 50  0001 C CNN
	1    2825 6935
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J5
U 1 1 5ACC2316
P 3450 6585
F 0 "J5" H 3450 6635 60  0000 C CNN
F 1 "RJ10" H 3450 6485 60  0000 C CNN
F 2 "kamaji:RJ10" H 3425 6560 60  0001 C CNN
F 3 "" H 3425 6560 60  0001 C CNN
	1    3450 6585
	1    0    0    -1  
$EndComp
Text Label 3210 6935 2    60   ~ 0
BTN3
$Comp
L GND #PWR021
U 1 1 5ACC231E
P 3400 6935
F 0 "#PWR021" H 3400 6685 50  0001 C CNN
F 1 "GND" H 3400 6785 50  0000 C CNN
F 2 "" H 3400 6935 50  0001 C CNN
F 3 "" H 3400 6935 50  0001 C CNN
	1    3400 6935
	1    0    0    -1  
$EndComp
Text Label 3205 7180 2    60   ~ 0
LED3
$Comp
L GND #PWR022
U 1 1 5ACC2327
P 3600 6935
F 0 "#PWR022" H 3600 6685 50  0001 C CNN
F 1 "GND" H 3600 6785 50  0000 C CNN
F 2 "" H 3600 6935 50  0001 C CNN
F 3 "" H 3600 6935 50  0001 C CNN
	1    3600 6935
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J6
U 1 1 5ACC232D
P 4215 6585
F 0 "J6" H 4215 6635 60  0000 C CNN
F 1 "RJ10" H 4215 6485 60  0000 C CNN
F 2 "kamaji:RJ10" H 4190 6560 60  0001 C CNN
F 3 "" H 4190 6560 60  0001 C CNN
	1    4215 6585
	1    0    0    -1  
$EndComp
Text Label 3975 6935 2    60   ~ 0
BTN4
$Comp
L GND #PWR023
U 1 1 5ACC2335
P 4165 6935
F 0 "#PWR023" H 4165 6685 50  0001 C CNN
F 1 "GND" H 4165 6785 50  0000 C CNN
F 2 "" H 4165 6935 50  0001 C CNN
F 3 "" H 4165 6935 50  0001 C CNN
	1    4165 6935
	1    0    0    -1  
$EndComp
Text Label 3970 7180 2    60   ~ 0
LED4
$Comp
L GND #PWR024
U 1 1 5ACC233E
P 4365 6935
F 0 "#PWR024" H 4365 6685 50  0001 C CNN
F 1 "GND" H 4365 6785 50  0000 C CNN
F 2 "" H 4365 6935 50  0001 C CNN
F 3 "" H 4365 6935 50  0001 C CNN
	1    4365 6935
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J7
U 1 1 5ACC2A4E
P 4995 6585
F 0 "J7" H 4995 6635 60  0000 C CNN
F 1 "RJ10" H 4995 6485 60  0000 C CNN
F 2 "kamaji:RJ10" H 4970 6560 60  0001 C CNN
F 3 "" H 4970 6560 60  0001 C CNN
	1    4995 6585
	1    0    0    -1  
$EndComp
Text Label 4755 6935 2    60   ~ 0
BTN5
$Comp
L GND #PWR025
U 1 1 5ACC2A56
P 4945 6935
F 0 "#PWR025" H 4945 6685 50  0001 C CNN
F 1 "GND" H 4945 6785 50  0000 C CNN
F 2 "" H 4945 6935 50  0001 C CNN
F 3 "" H 4945 6935 50  0001 C CNN
	1    4945 6935
	1    0    0    -1  
$EndComp
Text Label 4750 7180 2    60   ~ 0
LED5
$Comp
L GND #PWR026
U 1 1 5ACC2A5F
P 5145 6935
F 0 "#PWR026" H 5145 6685 50  0001 C CNN
F 1 "GND" H 5145 6785 50  0000 C CNN
F 2 "" H 5145 6935 50  0001 C CNN
F 3 "" H 5145 6935 50  0001 C CNN
	1    5145 6935
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J8
U 1 1 5ACC2A65
P 5760 6585
F 0 "J8" H 5760 6635 60  0000 C CNN
F 1 "RJ10" H 5760 6485 60  0000 C CNN
F 2 "kamaji:RJ10" H 5735 6560 60  0001 C CNN
F 3 "" H 5735 6560 60  0001 C CNN
	1    5760 6585
	1    0    0    -1  
$EndComp
Text Label 5520 6935 2    60   ~ 0
BTN6
$Comp
L GND #PWR027
U 1 1 5ACC2A6D
P 5710 6935
F 0 "#PWR027" H 5710 6685 50  0001 C CNN
F 1 "GND" H 5710 6785 50  0000 C CNN
F 2 "" H 5710 6935 50  0001 C CNN
F 3 "" H 5710 6935 50  0001 C CNN
	1    5710 6935
	1    0    0    -1  
$EndComp
Text Label 5515 7180 2    60   ~ 0
LED6
$Comp
L GND #PWR028
U 1 1 5ACC2A76
P 5910 6935
F 0 "#PWR028" H 5910 6685 50  0001 C CNN
F 1 "GND" H 5910 6785 50  0000 C CNN
F 2 "" H 5910 6935 50  0001 C CNN
F 3 "" H 5910 6935 50  0001 C CNN
	1    5910 6935
	1    0    0    -1  
$EndComp
NoConn ~ 3955 3120
NoConn ~ 3955 3220
$Comp
L C C2
U 1 1 5ACC3DDE
P 1245 1435
F 0 "C2" H 1270 1535 50  0000 L CNN
F 1 "0.1uF" H 1270 1335 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 1283 1285 50  0001 C CNN
F 3 "" H 1245 1435 50  0001 C CNN
	1    1245 1435
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR029
U 1 1 5ACC3DE4
P 1245 1285
F 0 "#PWR029" H 1245 1135 50  0001 C CNN
F 1 "VCC" H 1245 1435 50  0000 C CNN
F 2 "" H 1245 1285 50  0001 C CNN
F 3 "" H 1245 1285 50  0001 C CNN
	1    1245 1285
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 5ACC3DEA
P 1245 1585
F 0 "#PWR030" H 1245 1335 50  0001 C CNN
F 1 "GND" H 1245 1435 50  0000 C CNN
F 2 "" H 1245 1585 50  0001 C CNN
F 3 "" H 1245 1585 50  0001 C CNN
	1    1245 1585
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5ACC3E41
P 905 1435
F 0 "C1" H 930 1535 50  0000 L CNN
F 1 "0.1uF" H 930 1335 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 943 1285 50  0001 C CNN
F 3 "" H 905 1435 50  0001 C CNN
	1    905  1435
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR031
U 1 1 5ACC3E47
P 905 1285
F 0 "#PWR031" H 905 1135 50  0001 C CNN
F 1 "VCC" H 905 1435 50  0000 C CNN
F 2 "" H 905 1285 50  0001 C CNN
F 3 "" H 905 1285 50  0001 C CNN
	1    905  1285
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 5ACC3E4D
P 905 1585
F 0 "#PWR032" H 905 1335 50  0001 C CNN
F 1 "GND" H 905 1435 50  0000 C CNN
F 2 "" H 905 1585 50  0001 C CNN
F 3 "" H 905 1585 50  0001 C CNN
	1    905  1585
	1    0    0    -1  
$EndComp
$Comp
L USB_A J10
U 1 1 5ACC4835
P 10035 4240
F 0 "J10" H 9835 4690 50  0000 L CNN
F 1 "USB_A" H 9835 4590 50  0000 L CNN
F 2 "kamaji:USB_A" H 10185 4190 50  0001 C CNN
F 3 "" H 10185 4190 50  0001 C CNN
	1    10035 4240
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR033
U 1 1 5ACC4AC2
P 10335 4040
F 0 "#PWR033" H 10335 3890 50  0001 C CNN
F 1 "VCC" H 10335 4190 50  0000 C CNN
F 2 "" H 10335 4040 50  0001 C CNN
F 3 "" H 10335 4040 50  0001 C CNN
	1    10335 4040
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 5ACC4BD0
P 9825 4650
F 0 "#PWR034" H 9825 4400 50  0001 C CNN
F 1 "GND" H 9825 4500 50  0000 C CNN
F 2 "" H 9825 4650 50  0001 C CNN
F 3 "" H 9825 4650 50  0001 C CNN
	1    9825 4650
	1    0    0    -1  
$EndComp
$Comp
L IRF540N Q2
U 1 1 5ACC4C48
P 9935 5000
F 0 "Q2" H 10185 5075 50  0000 L CNN
F 1 "IRL540N" H 10185 5000 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Horizontal" H 10185 4925 50  0001 L CIN
F 3 "" H 9935 5000 50  0001 L CNN
	1    9935 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 5ACC5164
P 10035 5200
F 0 "#PWR035" H 10035 4950 50  0001 C CNN
F 1 "GND" H 10035 5050 50  0000 C CNN
F 2 "" H 10035 5200 50  0001 C CNN
F 3 "" H 10035 5200 50  0001 C CNN
	1    10035 5200
	1    0    0    -1  
$EndComp
Text Label 9665 5000 2    60   ~ 0
LAMP
$Comp
L USB_B J9
U 1 1 5ACC578D
P 8400 4575
F 0 "J9" H 8200 5025 50  0000 L CNN
F 1 "USB_B" H 8200 4925 50  0000 L CNN
F 2 "kamaji:USB_B" H 8550 4525 50  0001 C CNN
F 3 "" H 8550 4525 50  0001 C CNN
	1    8400 4575
	1    0    0    -1  
$EndComp
$Comp
L Fuse F1
U 1 1 5ACC58FA
P 8700 4225
F 0 "F1" V 8780 4225 50  0000 C CNN
F 1 "1A" V 8625 4225 50  0000 C CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" V 8630 4225 50  0001 C CNN
F 3 "" H 8700 4225 50  0001 C CNN
	1    8700 4225
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR036
U 1 1 5ACC5B26
P 8700 4075
F 0 "#PWR036" H 8700 3925 50  0001 C CNN
F 1 "VCC" H 8700 4225 50  0000 C CNN
F 2 "" H 8700 4075 50  0001 C CNN
F 3 "" H 8700 4075 50  0001 C CNN
	1    8700 4075
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 5ACC5BF5
P 8400 4975
F 0 "#PWR037" H 8400 4725 50  0001 C CNN
F 1 "GND" H 8400 4825 50  0000 C CNN
F 2 "" H 8400 4975 50  0001 C CNN
F 3 "" H 8400 4975 50  0001 C CNN
	1    8400 4975
	1    0    0    -1  
$EndComp
NoConn ~ 8700 4575
NoConn ~ 8700 4675
Text Notes 8240 3635 0    79   ~ 0
POWER
Text Notes 9860 3630 0    79   ~ 0
LAMP
$Comp
L SW_Push SW1
U 1 1 5ACC8093
P 7065 4245
F 0 "SW1" H 7115 4345 50  0000 L CNN
F 1 "SW_Push" H 7065 4185 50  0001 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH-12mm_Wuerth-430476085716" H 7065 4445 50  0001 C CNN
F 3 "" H 7065 4445 50  0001 C CNN
	1    7065 4245
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 5ACC816E
P 7265 4245
F 0 "#PWR038" H 7265 3995 50  0001 C CNN
F 1 "GND" H 7265 4095 50  0000 C CNN
F 2 "" H 7265 4245 50  0001 C CNN
F 3 "" H 7265 4245 50  0001 C CNN
	1    7265 4245
	1    0    0    -1  
$EndComp
Text Label 6865 4245 2    60   ~ 0
CBTN1
$Comp
L SW_Push SW2
U 1 1 5ACC86EE
P 7065 4675
F 0 "SW2" H 7115 4775 50  0000 L CNN
F 1 "SW_Push" H 7065 4615 50  0001 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH-12mm_Wuerth-430476085716" H 7065 4875 50  0001 C CNN
F 3 "" H 7065 4875 50  0001 C CNN
	1    7065 4675
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 5ACC86F4
P 7265 4675
F 0 "#PWR039" H 7265 4425 50  0001 C CNN
F 1 "GND" H 7265 4525 50  0000 C CNN
F 2 "" H 7265 4675 50  0001 C CNN
F 3 "" H 7265 4675 50  0001 C CNN
	1    7265 4675
	1    0    0    -1  
$EndComp
Text Label 6865 4675 2    60   ~ 0
CBTN2
$Comp
L SW_Push SW3
U 1 1 5ACC87E9
P 7070 5120
F 0 "SW3" H 7120 5220 50  0000 L CNN
F 1 "SW_Push" H 7070 5060 50  0001 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH-12mm_Wuerth-430476085716" H 7070 5320 50  0001 C CNN
F 3 "" H 7070 5320 50  0001 C CNN
	1    7070 5120
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 5ACC87EF
P 7270 5120
F 0 "#PWR040" H 7270 4870 50  0001 C CNN
F 1 "GND" H 7270 4970 50  0000 C CNN
F 2 "" H 7270 5120 50  0001 C CNN
F 3 "" H 7270 5120 50  0001 C CNN
	1    7270 5120
	1    0    0    -1  
$EndComp
Text Label 6870 5120 2    60   ~ 0
CBTN3
Text Notes 6735 3790 0    79   ~ 0
CONTROL\nBUTTONS
$Comp
L Speaker_Crystal LS1
U 1 1 5ACCAA9A
P 9770 2080
F 0 "LS1" H 9795 2305 50  0000 R CNN
F 1 "98dB" H 9795 2230 50  0000 R CNN
F 2 "kamaji:Buzzer_ARIO_98dB" H 9735 2030 50  0001 C CNN
F 3 "" H 9735 2030 50  0001 C CNN
	1    9770 2080
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 5ACCB08A
P 9220 1775
F 0 "RV1" V 9045 1775 50  0000 C CNN
F 1 "POT" V 9120 1775 50  0000 C CNN
F 2 "kamaji:Potentiometer_Wheel_16mm" H 9220 1775 50  0001 C CNN
F 3 "" H 9220 1775 50  0001 C CNN
	1    9220 1775
	0    1    1    0   
$EndComp
$Comp
L GND #PWR041
U 1 1 5ACCB76E
P 9370 1775
F 0 "#PWR041" H 9370 1525 50  0001 C CNN
F 1 "GND" H 9370 1625 50  0000 C CNN
F 2 "" H 9370 1775 50  0001 C CNN
F 3 "" H 9370 1775 50  0001 C CNN
	1    9370 1775
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Small JP1
U 1 1 5ACCC0E1
P 8810 1615
F 0 "JP1" H 8810 1695 50  0000 C CNN
F 1 "5V" H 8820 1555 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 8810 1615 50  0001 C CNN
F 3 "" H 8810 1615 50  0001 C CNN
	1    8810 1615
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP2
U 1 1 5ACCC9C6
P 8810 1920
F 0 "JP2" H 8810 2000 50  0000 C CNN
F 1 "24V" H 8820 1860 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 8810 1920 50  0001 C CNN
F 3 "" H 8810 1920 50  0001 C CNN
	1    8810 1920
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5ACCD931
P 9735 5150
F 0 "R10" V 9815 5150 50  0000 C CNN
F 1 "R" V 9735 5150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9665 5150 50  0001 C CNN
F 3 "" H 9735 5150 50  0001 C CNN
	1    9735 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 5ACCD9FA
P 9735 5300
F 0 "#PWR042" H 9735 5050 50  0001 C CNN
F 1 "GND" H 9735 5150 50  0000 C CNN
F 2 "" H 9735 5300 50  0001 C CNN
F 3 "" H 9735 5300 50  0001 C CNN
	1    9735 5300
	1    0    0    -1  
$EndComp
$Comp
L 2N3904 Q1
U 1 1 5ACCE928
P 9295 2405
F 0 "Q1" H 9495 2480 50  0000 L CNN
F 1 "2N3904" H 9495 2405 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 9495 2330 50  0001 L CIN
F 3 "" H 9295 2405 50  0001 L CNN
	1    9295 2405
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 5ACCEE33
P 9395 2605
F 0 "#PWR043" H 9395 2355 50  0001 C CNN
F 1 "GND" H 9395 2455 50  0000 C CNN
F 2 "" H 9395 2605 50  0001 C CNN
F 3 "" H 9395 2605 50  0001 C CNN
	1    9395 2605
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5ACCEED4
P 8945 2405
F 0 "R9" V 9025 2405 50  0000 C CNN
F 1 "1K" V 8945 2405 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8875 2405 50  0001 C CNN
F 3 "" H 8945 2405 50  0001 C CNN
	1    8945 2405
	0    1    1    0   
$EndComp
Text Label 8795 2405 2    60   ~ 0
SOUND
Wire Wire Line
	2905 5620 3005 5620
Connection ~ 2955 5620
Wire Wire Line
	2805 1620 3105 1620
Connection ~ 2955 1620
Wire Wire Line
	1825 2320 1825 2370
Wire Wire Line
	1825 2670 1825 2720
Wire Wire Line
	1715 2720 1955 2720
Wire Wire Line
	1715 2320 1955 2320
Connection ~ 1825 2320
Connection ~ 1825 2720
Wire Wire Line
	1415 2320 1415 2720
Wire Wire Line
	1265 2530 1415 2530
Connection ~ 1415 2530
Wire Wire Line
	1785 1920 1955 1920
Wire Wire Line
	3955 3820 5315 3820
Wire Wire Line
	3955 3720 5315 3720
Wire Wire Line
	3955 3920 5315 3920
Wire Wire Line
	3955 4020 5315 4020
Wire Wire Line
	3955 4120 5315 4120
Wire Wire Line
	3955 4220 5315 4220
Wire Wire Line
	5275 4295 5275 4220
Connection ~ 5275 4220
Wire Wire Line
	5175 4295 5175 4120
Connection ~ 5175 4120
Wire Wire Line
	5075 4295 5075 4020
Connection ~ 5075 4020
Wire Wire Line
	4975 4295 4975 3920
Connection ~ 4975 3920
Wire Wire Line
	4875 4295 4870 3820
Connection ~ 4870 3820
Wire Wire Line
	4775 4295 4775 3720
Connection ~ 4775 3720
Wire Wire Line
	5275 4695 5440 4695
Wire Wire Line
	4605 1325 4765 1325
Wire Wire Line
	4765 1725 4765 2025
Wire Wire Line
	4765 1825 4600 1825
Connection ~ 4765 1925
Connection ~ 4765 1825
Wire Wire Line
	3955 2120 4765 2125
Wire Wire Line
	3955 2220 4765 2225
Wire Wire Line
	3955 2320 4765 2325
Wire Wire Line
	3955 2420 4765 2425
Wire Wire Line
	1595 4130 1595 4430
Connection ~ 1595 4330
Connection ~ 1595 4230
Wire Wire Line
	3955 5220 4360 5220
Wire Wire Line
	4365 5320 3955 5320
Wire Wire Line
	1760 6935 1670 6935
Wire Wire Line
	1665 7180 1960 7180
Wire Wire Line
	1960 7180 1960 6935
Wire Wire Line
	2525 6935 2435 6935
Wire Wire Line
	2430 7180 2725 7180
Wire Wire Line
	2725 7180 2725 6935
Wire Wire Line
	3300 6935 3210 6935
Wire Wire Line
	3205 7180 3500 7180
Wire Wire Line
	3500 7180 3500 6935
Wire Wire Line
	4065 6935 3975 6935
Wire Wire Line
	3970 7180 4265 7180
Wire Wire Line
	4265 7180 4265 6935
Wire Wire Line
	4845 6935 4755 6935
Wire Wire Line
	4750 7180 5045 7180
Wire Wire Line
	5045 7180 5045 6935
Wire Wire Line
	5610 6935 5520 6935
Wire Wire Line
	5515 7180 5810 7180
Wire Wire Line
	5810 7180 5810 6935
Wire Wire Line
	10035 4640 10035 4800
Wire Wire Line
	9825 4650 9935 4650
Wire Wire Line
	9935 4650 9935 4640
Wire Wire Line
	8300 4975 8400 4975
Wire Notes Line
	9295 3455 9295 5540
Wire Notes Line
	9295 5540 10705 5540
Wire Notes Line
	10705 5540 10705 3455
Wire Notes Line
	10705 3455 9295 3455
Wire Notes Line
	8950 3450 7855 3450
Wire Notes Line
	7855 3450 7855 5530
Wire Notes Line
	7855 5530 9020 5530
Wire Notes Line
	9020 5530 9020 3450
Wire Notes Line
	9020 3450 8945 3450
Wire Notes Line
	7555 3445 6395 3445
Wire Notes Line
	6395 3445 6395 5540
Wire Notes Line
	6395 5540 7555 5540
Wire Notes Line
	7555 5540 7555 3445
Wire Wire Line
	9220 1925 9220 2080
Wire Wire Line
	9220 2080 9570 2080
Wire Wire Line
	9070 1615 9070 1920
Wire Wire Line
	9070 1615 8910 1615
Wire Wire Line
	9070 1920 8910 1920
Connection ~ 9070 1775
Wire Wire Line
	9665 5000 9735 5000
Wire Wire Line
	9570 2180 9395 2180
Wire Wire Line
	9395 2180 9395 2205
Wire Notes Line
	10705 2865 10705 1070
Text Notes 8395 1265 0    79   ~ 0
SOUND
$Comp
L BOOST_24V U2
U 1 1 5ACE5BE2
P 7600 1770
F 0 "U2" H 7600 1770 60  0000 C CNN
F 1 "BOOST_24V" H 7600 2070 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 7600 1770 60  0001 C CNN
F 3 "" H 7600 1770 60  0001 C CNN
	1    7600 1770
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 1920 8710 1920
$Comp
L VCC #PWR044
U 1 1 5ACE6DF6
P 8640 1615
F 0 "#PWR044" H 8640 1465 50  0001 C CNN
F 1 "VCC" H 8640 1765 50  0000 C CNN
F 2 "" H 8640 1615 50  0001 C CNN
F 3 "" H 8640 1615 50  0001 C CNN
	1    8640 1615
	1    0    0    -1  
$EndComp
Wire Wire Line
	8640 1615 8710 1615
NoConn ~ 8150 1620
Wire Notes Line
	10705 2865 6395 2865
Wire Notes Line
	6395 2865 6395 1075
Wire Notes Line
	6395 1075 10705 1075
$Comp
L VCC #PWR045
U 1 1 5ACE851D
P 7050 1770
F 0 "#PWR045" H 7050 1620 50  0001 C CNN
F 1 "VCC" H 7050 1920 50  0000 C CNN
F 2 "" H 7050 1770 50  0001 C CNN
F 3 "" H 7050 1770 50  0001 C CNN
	1    7050 1770
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 5ACE861C
P 7700 2320
F 0 "#PWR046" H 7700 2070 50  0001 C CNN
F 1 "GND" H 7700 2170 50  0000 C CNN
F 2 "" H 7700 2320 50  0001 C CNN
F 3 "" H 7700 2320 50  0001 C CNN
	1    7700 2320
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR047
U 1 1 5ACE869C
P 7500 2320
F 0 "#PWR047" H 7500 2070 50  0001 C CNN
F 1 "GND" H 7500 2170 50  0000 C CNN
F 2 "" H 7500 2320 50  0001 C CNN
F 3 "" H 7500 2320 50  0001 C CNN
	1    7500 2320
	1    0    0    -1  
$EndComp
$Comp
L UART_6pin J1
U 1 1 5ACEA338
P 1130 5310
F 0 "J1" H 1180 4960 60  0000 C CNN
F 1 "UART" H 1120 5675 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 1180 5310 60  0001 C CNN
F 3 "" H 1180 5310 60  0001 C CNN
	1    1130 5310
	-1   0    0    1   
$EndComp
Text Label 3955 4720 0    60   ~ 0
MC_TX
Text Label 3955 4620 0    60   ~ 0
MC_RX
Text Label 1430 5160 0    60   ~ 0
MC_TX
Text Label 1430 5260 0    60   ~ 0
MC_RX
$Comp
L GND #PWR048
U 1 1 5ACEB489
P 1430 5560
F 0 "#PWR048" H 1430 5310 50  0001 C CNN
F 1 "GND" H 1430 5410 50  0000 C CNN
F 2 "" H 1430 5560 50  0001 C CNN
F 3 "" H 1430 5560 50  0001 C CNN
	1    1430 5560
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR049
U 1 1 5ACEB743
P 1430 5360
F 0 "#PWR049" H 1430 5210 50  0001 C CNN
F 1 "VCC" H 1430 5510 50  0000 C CNN
F 2 "" H 1430 5360 50  0001 C CNN
F 3 "" H 1430 5360 50  0001 C CNN
	1    1430 5360
	0    1    1    0   
$EndComp
NoConn ~ 1430 5060
NoConn ~ 1430 5460
NoConn ~ 10335 4240
NoConn ~ 10335 4340
Wire Wire Line
	3955 1920 4130 1920
Wire Wire Line
	4130 1920 4130 1225
Wire Wire Line
	4130 1225 4765 1225
Wire Wire Line
	3955 2020 4350 2020
Wire Wire Line
	4350 2020 4350 1535
Wire Wire Line
	4350 1535 4765 1535
Wire Wire Line
	4765 1535 4765 1425
$Comp
L POT RV2
U 1 1 5ACEFAC5
P 6025 1225
F 0 "RV2" V 5850 1225 50  0000 C CNN
F 1 "POT" V 5925 1225 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Triwood_RM-065" H 6025 1225 50  0001 C CNN
F 3 "" H 6025 1225 50  0001 C CNN
	1    6025 1225
	-1   0    0    1   
$EndComp
Wire Wire Line
	5565 1225 5875 1225
$Comp
L VCC #PWR050
U 1 1 5ACEFDB1
P 6025 1075
F 0 "#PWR050" H 6025 925 50  0001 C CNN
F 1 "VCC" H 6025 1225 50  0000 C CNN
F 2 "" H 6025 1075 50  0001 C CNN
F 3 "" H 6025 1075 50  0001 C CNN
	1    6025 1075
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR051
U 1 1 5ACEFEB2
P 6025 1375
F 0 "#PWR051" H 6025 1125 50  0001 C CNN
F 1 "GND" H 6025 1225 50  0000 C CNN
F 2 "" H 6025 1375 50  0001 C CNN
F 3 "" H 6025 1375 50  0001 C CNN
	1    6025 1375
	1    0    0    -1  
$EndComp
Text Notes 7295 6830 0    79   Italic 0
TODO: Replace boost converter footprint
$EndSCHEMATC
