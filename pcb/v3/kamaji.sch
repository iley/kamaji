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
L GND #PWR01
U 1 1 5AC5401B
P 2270 5600
F 0 "#PWR01" H 2270 5350 50  0001 C CNN
F 1 "GND" H 2270 5450 50  0000 C CNN
F 2 "" H 2270 5600 50  0001 C CNN
F 3 "" H 2270 5600 50  0001 C CNN
	1    2270 5600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 5AC540DD
P 2270 1600
F 0 "#PWR02" H 2270 1450 50  0001 C CNN
F 1 "VCC" H 2270 1750 50  0000 C CNN
F 2 "" H 2270 1600 50  0001 C CNN
F 3 "" H 2270 1600 50  0001 C CNN
	1    2270 1600
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 5ACA6786
P 1140 2500
F 0 "Y1" H 1140 2650 50  0000 C CNN
F 1 "20MHz" H 1140 2350 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 1140 2500 50  0001 C CNN
F 3 "" H 1140 2500 50  0001 C CNN
	1    1140 2500
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 5ACA6821
P 880 2300
F 0 "C3" H 905 2400 50  0000 L CNN
F 1 "22pF" H 905 2200 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 918 2150 50  0001 C CNN
F 3 "" H 880 2300 50  0001 C CNN
	1    880  2300
	0    -1   -1   0   
$EndComp
$Comp
L C C4
U 1 1 5ACA690C
P 880 2700
F 0 "C4" H 905 2800 50  0000 L CNN
F 1 "22pF" H 905 2600 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 918 2550 50  0001 C CNN
F 3 "" H 880 2700 50  0001 C CNN
	1    880  2700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 5ACA6A47
P 580 2510
F 0 "#PWR03" H 580 2260 50  0001 C CNN
F 1 "GND" H 580 2360 50  0000 C CNN
F 2 "" H 580 2510 50  0001 C CNN
F 3 "" H 580 2510 50  0001 C CNN
	1    580  2510
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5ACA6B7C
P 1270 1750
F 0 "R1" V 1350 1750 50  0000 C CNN
F 1 "10K" V 1270 1750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1200 1750 50  0001 C CNN
F 3 "" H 1270 1750 50  0001 C CNN
	1    1270 1750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5ACA6BDD
P 1270 1600
F 0 "#PWR04" H 1270 1450 50  0001 C CNN
F 1 "VCC" H 1270 1750 50  0000 C CNN
F 2 "" H 1270 1600 50  0001 C CNN
F 3 "" H 1270 1600 50  0001 C CNN
	1    1270 1600
	1    0    0    -1  
$EndComp
Text Label 1100 1900 2    60   ~ 0
RESET
$Comp
L GND #PWR05
U 1 1 5ACA6E3F
P 1270 3100
F 0 "#PWR05" H 1270 2850 50  0001 C CNN
F 1 "GND" H 1270 2950 50  0000 C CNN
F 2 "" H 1270 3100 50  0001 C CNN
F 3 "" H 1270 3100 50  0001 C CNN
	1    1270 3100
	1    0    0    -1  
$EndComp
Text Label 3270 5100 0    60   ~ 0
BTN1
Text Label 3270 3700 0    60   ~ 0
BTN2
Text Label 3270 4100 0    60   ~ 0
BTN3
Text Label 3270 2400 0    60   ~ 0
BTN4
Text Label 3270 2200 0    60   ~ 0
BTN5
Text Label 3270 2000 0    60   ~ 0
BTN6
$Comp
L R R2
U 1 1 5ACBC4AF
P 1810 7180
F 0 "R2" V 1895 7180 50  0000 C CNN
F 1 "220R" V 1810 7180 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1740 7180 50  0001 C CNN
F 3 "" H 1810 7180 50  0001 C CNN
	1    1810 7180
	0    1    1    0   
$EndComp
Text Label 3270 5200 0    60   ~ 0
LED1
$Comp
L R R3
U 1 1 5ACBC589
P 3350 7180
F 0 "R3" V 3430 7180 50  0000 C CNN
F 1 "220R" V 3350 7180 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3280 7180 50  0001 C CNN
F 3 "" H 3350 7180 50  0001 C CNN
	1    3350 7180
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5ACBC655
P 4115 7180
F 0 "R4" V 4195 7180 50  0000 C CNN
F 1 "220R" V 4115 7180 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4045 7180 50  0001 C CNN
F 3 "" H 4115 7180 50  0001 C CNN
	1    4115 7180
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5ACBC696
P 2575 7180
F 0 "R5" V 2660 7180 50  0000 C CNN
F 1 "220R" V 2575 7180 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2505 7180 50  0001 C CNN
F 3 "" H 2575 7180 50  0001 C CNN
	1    2575 7180
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5ACBC705
P 4895 7180
F 0 "R6" V 4980 7180 50  0000 C CNN
F 1 "220R" V 4895 7180 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4825 7180 50  0001 C CNN
F 3 "" H 4895 7180 50  0001 C CNN
	1    4895 7180
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 5ACBC74A
P 5660 7180
F 0 "R7" V 5745 7180 50  0000 C CNN
F 1 "220R" V 5660 7180 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5590 7180 50  0001 C CNN
F 3 "" H 5660 7180 50  0001 C CNN
	1    5660 7180
	0    1    1    0   
$EndComp
Text Label 3270 5300 0    60   ~ 0
LED2
Text Label 3270 4000 0    60   ~ 0
LED3
Text Label 3270 2500 0    60   ~ 0
LED4
Text Label 3270 2300 0    60   ~ 0
LED5
Text Label 3270 2100 0    60   ~ 0
LED6
$Comp
L WC1602A DS1
U 1 1 5ACBD4DB
P 5245 2170
F 0 "DS1" H 5015 2920 50  0000 C CNN
F 1 "WC1602A" H 5455 2920 50  0000 C CNN
F 2 "kamaji:LCD2004" H 5245 1270 50  0001 C CIN
F 3 "" H 5945 2170 50  0001 C CNN
	1    5245 2170
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5ACBD755
P 5795 1870
F 0 "R8" V 5875 1870 50  0000 C CNN
F 1 "220R" V 5795 1870 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5725 1870 50  0001 C CNN
F 3 "" H 5795 1870 50  0001 C CNN
	1    5795 1870
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR06
U 1 1 5ACBD858
P 5945 1870
F 0 "#PWR06" H 5945 1720 50  0001 C CNN
F 1 "VCC" H 5945 2020 50  0000 C CNN
F 2 "" H 5945 1870 50  0001 C CNN
F 3 "" H 5945 1870 50  0001 C CNN
	1    5945 1870
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5ACBD8C0
P 5645 1970
F 0 "#PWR07" H 5645 1720 50  0001 C CNN
F 1 "GND" H 5645 1820 50  0000 C CNN
F 2 "" H 5645 1970 50  0001 C CNN
F 3 "" H 5645 1970 50  0001 C CNN
	1    5645 1970
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR08
U 1 1 5ACBD8FC
P 5245 1370
F 0 "#PWR08" H 5245 1220 50  0001 C CNN
F 1 "VCC" H 5245 1520 50  0000 C CNN
F 2 "" H 5245 1370 50  0001 C CNN
F 3 "" H 5245 1370 50  0001 C CNN
	1    5245 1370
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5ACBD9CB
P 5245 2970
F 0 "#PWR09" H 5245 2720 50  0001 C CNN
F 1 "GND" H 5245 2820 50  0000 C CNN
F 2 "" H 5245 2970 50  0001 C CNN
F 3 "" H 5245 2970 50  0001 C CNN
	1    5245 2970
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5ACBDA10
P 5975 2500
F 0 "C5" H 6000 2600 50  0000 L CNN
F 1 "0.1uF" H 6000 2400 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 6013 2350 50  0001 C CNN
F 3 "" H 5975 2500 50  0001 C CNN
	1    5975 2500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 5ACBDAD5
P 5975 2350
F 0 "#PWR010" H 5975 2200 50  0001 C CNN
F 1 "VCC" H 5975 2500 50  0000 C CNN
F 2 "" H 5975 2350 50  0001 C CNN
F 3 "" H 5975 2350 50  0001 C CNN
	1    5975 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5ACBDB0D
P 5975 2650
F 0 "#PWR011" H 5975 2400 50  0001 C CNN
F 1 "GND" H 5975 2500 50  0000 C CNN
F 2 "" H 5975 2650 50  0001 C CNN
F 3 "" H 5975 2650 50  0001 C CNN
	1    5975 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5ACBE29E
P 4680 2170
F 0 "#PWR012" H 4680 1920 50  0001 C CNN
F 1 "GND" H 4595 2165 50  0000 C CNN
F 2 "" H 4680 2170 50  0001 C CNN
F 3 "" H 4680 2170 50  0001 C CNN
	1    4680 2170
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x05_Odd_Even J2
U 1 1 5ACBEB97
P 3375 1080
F 0 "J2" H 3425 1380 50  0000 C CNN
F 1 "ICSP" H 3425 780 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 3375 1080 50  0001 C CNN
F 3 "" H 3375 1080 50  0001 C CNN
	1    3375 1080
	1    0    0    -1  
$EndComp
Text Label 3270 3400 0    60   ~ 0
MISO
Text Label 3270 3300 0    60   ~ 0
MOSI
Text Label 3270 3500 0    60   ~ 0
SCK
$Comp
L VCC #PWR013
U 1 1 5ACBF26A
P 3675 880
F 0 "#PWR013" H 3675 730 50  0001 C CNN
F 1 "VCC" H 3675 1030 50  0000 C CNN
F 2 "" H 3675 880 50  0001 C CNN
F 3 "" H 3675 880 50  0001 C CNN
	1    3675 880 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5ACBF2D5
P 3675 1280
F 0 "#PWR014" H 3675 1030 50  0001 C CNN
F 1 "GND" H 3675 1130 50  0000 C CNN
F 2 "" H 3675 1280 50  0001 C CNN
F 3 "" H 3675 1280 50  0001 C CNN
	1    3675 1280
	1    0    0    -1  
$EndComp
Text Label 3175 880  2    60   ~ 0
MOSI
Text Label 3175 1080 2    60   ~ 0
RESET
Text Label 3175 1180 2    60   ~ 0
SCK
Text Label 3175 1280 2    60   ~ 0
MISO
NoConn ~ 3175 980 
Text Label 3270 3000 0    60   ~ 0
CBTN1
Text Label 3270 2900 0    60   ~ 0
CBTN2
Text Label 3270 2800 0    60   ~ 0
CBTN3
Text Label 3270 3100 0    60   ~ 0
SOUND
Text Label 3270 1900 0    60   ~ 0
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
L GND #PWR015
U 1 1 5ACC1734
P 1860 6935
F 0 "#PWR015" H 1860 6685 50  0001 C CNN
F 1 "GND" H 1860 6785 50  0000 C CNN
F 2 "" H 1860 6935 50  0001 C CNN
F 3 "" H 1860 6935 50  0001 C CNN
	1    1860 6935
	1    0    0    -1  
$EndComp
Text Label 1660 7180 2    60   ~ 0
LED1
$Comp
L GND #PWR016
U 1 1 5ACC1960
P 2060 6935
F 0 "#PWR016" H 2060 6685 50  0001 C CNN
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
L GND #PWR017
U 1 1 5ACC1E38
P 2625 6935
F 0 "#PWR017" H 2625 6685 50  0001 C CNN
F 1 "GND" H 2625 6785 50  0000 C CNN
F 2 "" H 2625 6935 50  0001 C CNN
F 3 "" H 2625 6935 50  0001 C CNN
	1    2625 6935
	1    0    0    -1  
$EndComp
Text Label 2425 7180 2    60   ~ 0
LED2
$Comp
L GND #PWR018
U 1 1 5ACC1E41
P 2825 6935
F 0 "#PWR018" H 2825 6685 50  0001 C CNN
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
L GND #PWR019
U 1 1 5ACC231E
P 3400 6935
F 0 "#PWR019" H 3400 6685 50  0001 C CNN
F 1 "GND" H 3400 6785 50  0000 C CNN
F 2 "" H 3400 6935 50  0001 C CNN
F 3 "" H 3400 6935 50  0001 C CNN
	1    3400 6935
	1    0    0    -1  
$EndComp
Text Label 3200 7180 2    60   ~ 0
LED3
$Comp
L GND #PWR020
U 1 1 5ACC2327
P 3600 6935
F 0 "#PWR020" H 3600 6685 50  0001 C CNN
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
L GND #PWR021
U 1 1 5ACC2335
P 4165 6935
F 0 "#PWR021" H 4165 6685 50  0001 C CNN
F 1 "GND" H 4165 6785 50  0000 C CNN
F 2 "" H 4165 6935 50  0001 C CNN
F 3 "" H 4165 6935 50  0001 C CNN
	1    4165 6935
	1    0    0    -1  
$EndComp
Text Label 3965 7180 2    60   ~ 0
LED4
$Comp
L GND #PWR022
U 1 1 5ACC233E
P 4365 6935
F 0 "#PWR022" H 4365 6685 50  0001 C CNN
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
L GND #PWR023
U 1 1 5ACC2A56
P 4945 6935
F 0 "#PWR023" H 4945 6685 50  0001 C CNN
F 1 "GND" H 4945 6785 50  0000 C CNN
F 2 "" H 4945 6935 50  0001 C CNN
F 3 "" H 4945 6935 50  0001 C CNN
	1    4945 6935
	1    0    0    -1  
$EndComp
Text Label 4745 7180 2    60   ~ 0
LED5
$Comp
L GND #PWR024
U 1 1 5ACC2A5F
P 5145 6935
F 0 "#PWR024" H 5145 6685 50  0001 C CNN
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
L GND #PWR025
U 1 1 5ACC2A6D
P 5710 6935
F 0 "#PWR025" H 5710 6685 50  0001 C CNN
F 1 "GND" H 5710 6785 50  0000 C CNN
F 2 "" H 5710 6935 50  0001 C CNN
F 3 "" H 5710 6935 50  0001 C CNN
	1    5710 6935
	1    0    0    -1  
$EndComp
Text Label 5510 7180 2    60   ~ 0
LED6
$Comp
L GND #PWR026
U 1 1 5ACC2A76
P 5910 6935
F 0 "#PWR026" H 5910 6685 50  0001 C CNN
F 1 "GND" H 5910 6785 50  0000 C CNN
F 2 "" H 5910 6935 50  0001 C CNN
F 3 "" H 5910 6935 50  0001 C CNN
	1    5910 6935
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5ACC3DDE
P 2160 1010
F 0 "C2" H 2185 1110 50  0000 L CNN
F 1 "0.1uF" H 2185 910 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2198 860 50  0001 C CNN
F 3 "" H 2160 1010 50  0001 C CNN
	1    2160 1010
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR027
U 1 1 5ACC3DE4
P 2160 860
F 0 "#PWR027" H 2160 710 50  0001 C CNN
F 1 "VCC" H 2160 1010 50  0000 C CNN
F 2 "" H 2160 860 50  0001 C CNN
F 3 "" H 2160 860 50  0001 C CNN
	1    2160 860 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5ACC3DEA
P 2160 1160
F 0 "#PWR028" H 2160 910 50  0001 C CNN
F 1 "GND" H 2160 1010 50  0000 C CNN
F 2 "" H 2160 1160 50  0001 C CNN
F 3 "" H 2160 1160 50  0001 C CNN
	1    2160 1160
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5ACC3E41
P 1820 1010
F 0 "C1" H 1845 1110 50  0000 L CNN
F 1 "0.1uF" H 1845 910 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 1858 860 50  0001 C CNN
F 3 "" H 1820 1010 50  0001 C CNN
	1    1820 1010
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR029
U 1 1 5ACC3E47
P 1820 860
F 0 "#PWR029" H 1820 710 50  0001 C CNN
F 1 "VCC" H 1820 1010 50  0000 C CNN
F 2 "" H 1820 860 50  0001 C CNN
F 3 "" H 1820 860 50  0001 C CNN
	1    1820 860 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 5ACC3E4D
P 1820 1160
F 0 "#PWR030" H 1820 910 50  0001 C CNN
F 1 "GND" H 1820 1010 50  0000 C CNN
F 2 "" H 1820 1160 50  0001 C CNN
F 3 "" H 1820 1160 50  0001 C CNN
	1    1820 1160
	1    0    0    -1  
$EndComp
$Comp
L USB_A J10
U 1 1 5ACC4835
P 10300 4390
F 0 "J10" H 10100 4840 50  0000 L CNN
F 1 "USB_A" H 10100 4740 50  0000 L CNN
F 2 "kamaji:USB_A" H 10450 4340 50  0001 C CNN
F 3 "" H 10450 4340 50  0001 C CNN
	1    10300 4390
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR031
U 1 1 5ACC4AC2
P 10600 4190
F 0 "#PWR031" H 10600 4040 50  0001 C CNN
F 1 "VCC" H 10600 4340 50  0000 C CNN
F 2 "" H 10600 4190 50  0001 C CNN
F 3 "" H 10600 4190 50  0001 C CNN
	1    10600 4190
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 5ACC4BD0
P 10090 4800
F 0 "#PWR032" H 10090 4550 50  0001 C CNN
F 1 "GND" H 10090 4650 50  0000 C CNN
F 2 "" H 10090 4800 50  0001 C CNN
F 3 "" H 10090 4800 50  0001 C CNN
	1    10090 4800
	1    0    0    -1  
$EndComp
$Comp
L IRF540N Q2
U 1 1 5ACC4C48
P 10200 5150
F 0 "Q2" H 10450 5225 50  0000 L CNN
F 1 "IRL540N" H 10450 5150 50  0000 L CNN
F 2 "kamaji:TO-220-3_Horizontal" H 10450 5075 50  0001 L CIN
F 3 "" H 10200 5150 50  0001 L CNN
	1    10200 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 5ACC5164
P 10300 5350
F 0 "#PWR033" H 10300 5100 50  0001 C CNN
F 1 "GND" H 10300 5200 50  0000 C CNN
F 2 "" H 10300 5350 50  0001 C CNN
F 3 "" H 10300 5350 50  0001 C CNN
	1    10300 5350
	1    0    0    -1  
$EndComp
Text Label 9930 5150 2    60   ~ 0
LAMP
$Comp
L USB_B J9
U 1 1 5ACC578D
P 8665 4725
F 0 "J9" H 8465 5175 50  0000 L CNN
F 1 "USB_B" H 8465 5075 50  0000 L CNN
F 2 "kamaji:USB_B" H 8815 4675 50  0001 C CNN
F 3 "" H 8815 4675 50  0001 C CNN
	1    8665 4725
	1    0    0    -1  
$EndComp
$Comp
L Fuse F1
U 1 1 5ACC58FA
P 8965 4375
F 0 "F1" V 9045 4375 50  0000 C CNN
F 1 "1A" V 8890 4375 50  0000 C CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" V 8895 4375 50  0001 C CNN
F 3 "" H 8965 4375 50  0001 C CNN
	1    8965 4375
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR034
U 1 1 5ACC5B26
P 8965 4225
F 0 "#PWR034" H 8965 4075 50  0001 C CNN
F 1 "VCC" H 8965 4375 50  0000 C CNN
F 2 "" H 8965 4225 50  0001 C CNN
F 3 "" H 8965 4225 50  0001 C CNN
	1    8965 4225
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 5ACC5BF5
P 8665 5125
F 0 "#PWR035" H 8665 4875 50  0001 C CNN
F 1 "GND" H 8665 4975 50  0000 C CNN
F 2 "" H 8665 5125 50  0001 C CNN
F 3 "" H 8665 5125 50  0001 C CNN
	1    8665 5125
	1    0    0    -1  
$EndComp
NoConn ~ 8965 4725
NoConn ~ 8965 4825
Text Notes 8505 3785 0    79   ~ 0
POWER
Text Notes 10125 3780 0    79   ~ 0
LAMP
$Comp
L SW_Push SW1
U 1 1 5ACC8093
P 7330 4395
F 0 "SW1" H 7380 4495 50  0000 L CNN
F 1 "SW_Push" H 7330 4335 50  0001 C CNN
F 2 "kamaji:Pushbutton_12mm" H 7330 4595 50  0001 C CNN
F 3 "" H 7330 4595 50  0001 C CNN
	1    7330 4395
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 5ACC816E
P 7530 4395
F 0 "#PWR036" H 7530 4145 50  0001 C CNN
F 1 "GND" H 7530 4245 50  0000 C CNN
F 2 "" H 7530 4395 50  0001 C CNN
F 3 "" H 7530 4395 50  0001 C CNN
	1    7530 4395
	1    0    0    -1  
$EndComp
Text Label 7130 4395 2    60   ~ 0
CBTN1
$Comp
L SW_Push SW2
U 1 1 5ACC86EE
P 7330 4825
F 0 "SW2" H 7380 4925 50  0000 L CNN
F 1 "SW_Push" H 7330 4765 50  0001 C CNN
F 2 "kamaji:Pushbutton_12mm" H 7330 5025 50  0001 C CNN
F 3 "" H 7330 5025 50  0001 C CNN
	1    7330 4825
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 5ACC86F4
P 7530 4825
F 0 "#PWR037" H 7530 4575 50  0001 C CNN
F 1 "GND" H 7530 4675 50  0000 C CNN
F 2 "" H 7530 4825 50  0001 C CNN
F 3 "" H 7530 4825 50  0001 C CNN
	1    7530 4825
	1    0    0    -1  
$EndComp
Text Label 7130 4825 2    60   ~ 0
CBTN2
$Comp
L SW_Push SW3
U 1 1 5ACC87E9
P 7335 5270
F 0 "SW3" H 7385 5370 50  0000 L CNN
F 1 "SW_Push" H 7335 5210 50  0001 C CNN
F 2 "kamaji:Pushbutton_12mm" H 7335 5470 50  0001 C CNN
F 3 "" H 7335 5470 50  0001 C CNN
	1    7335 5270
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 5ACC87EF
P 7535 5270
F 0 "#PWR038" H 7535 5020 50  0001 C CNN
F 1 "GND" H 7535 5120 50  0000 C CNN
F 2 "" H 7535 5270 50  0001 C CNN
F 3 "" H 7535 5270 50  0001 C CNN
	1    7535 5270
	1    0    0    -1  
$EndComp
Text Label 7135 5270 2    60   ~ 0
CBTN3
Text Notes 7000 3940 0    79   ~ 0
CONTROL\nBUTTONS
$Comp
L Speaker_Crystal LS1
U 1 1 5ACCAA9A
P 10035 2230
F 0 "LS1" H 10060 2455 50  0000 R CNN
F 1 "98dB" H 10060 2380 50  0000 R CNN
F 2 "kamaji:Buzzer_ARIO_98dB" H 10000 2180 50  0001 C CNN
F 3 "" H 10000 2180 50  0001 C CNN
	1    10035 2230
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 5ACCB08A
P 9485 1925
F 0 "RV1" V 9310 1925 50  0000 C CNN
F 1 "POT" V 9385 1925 50  0000 C CNN
F 2 "kamaji:Potentiometer_Wheel_16mm" H 9485 1925 50  0001 C CNN
F 3 "" H 9485 1925 50  0001 C CNN
	1    9485 1925
	0    1    1    0   
$EndComp
$Comp
L GND #PWR039
U 1 1 5ACCB76E
P 9635 1925
F 0 "#PWR039" H 9635 1675 50  0001 C CNN
F 1 "GND" H 9635 1775 50  0000 C CNN
F 2 "" H 9635 1925 50  0001 C CNN
F 3 "" H 9635 1925 50  0001 C CNN
	1    9635 1925
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Small JP1
U 1 1 5ACCC0E1
P 9075 1765
F 0 "JP1" H 9075 1845 50  0000 C CNN
F 1 "5V" H 9085 1705 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 9075 1765 50  0001 C CNN
F 3 "" H 9075 1765 50  0001 C CNN
	1    9075 1765
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP2
U 1 1 5ACCC9C6
P 9075 2070
F 0 "JP2" H 9075 2150 50  0000 C CNN
F 1 "24V" H 9085 2010 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 9075 2070 50  0001 C CNN
F 3 "" H 9075 2070 50  0001 C CNN
	1    9075 2070
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5ACCD931
P 10000 5300
F 0 "R10" V 10080 5300 50  0000 C CNN
F 1 "R" V 10000 5300 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9930 5300 50  0001 C CNN
F 3 "" H 10000 5300 50  0001 C CNN
	1    10000 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 5ACCD9FA
P 10000 5450
F 0 "#PWR040" H 10000 5200 50  0001 C CNN
F 1 "GND" H 10000 5300 50  0000 C CNN
F 2 "" H 10000 5450 50  0001 C CNN
F 3 "" H 10000 5450 50  0001 C CNN
	1    10000 5450
	1    0    0    -1  
$EndComp
$Comp
L 2N3904 Q1
U 1 1 5ACCE928
P 9560 2555
F 0 "Q1" H 9760 2630 50  0000 L CNN
F 1 "2N3904" H 9760 2555 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 9760 2480 50  0001 L CIN
F 3 "" H 9560 2555 50  0001 L CNN
	1    9560 2555
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 5ACCEE33
P 9660 2755
F 0 "#PWR041" H 9660 2505 50  0001 C CNN
F 1 "GND" H 9660 2605 50  0000 C CNN
F 2 "" H 9660 2755 50  0001 C CNN
F 3 "" H 9660 2755 50  0001 C CNN
	1    9660 2755
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5ACCEED4
P 9210 2555
F 0 "R9" V 9290 2555 50  0000 C CNN
F 1 "1K" V 9210 2555 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9140 2555 50  0001 C CNN
F 3 "" H 9210 2555 50  0001 C CNN
	1    9210 2555
	0    1    1    0   
$EndComp
Text Label 9060 2555 2    60   ~ 0
SOUND
Wire Wire Line
	2220 5600 2320 5600
Connection ~ 2270 5600
Wire Wire Line
	2120 1600 2420 1600
Connection ~ 2270 1600
Wire Wire Line
	1140 2300 1140 2350
Wire Wire Line
	1140 2650 1140 2700
Wire Wire Line
	1030 2700 1270 2700
Wire Wire Line
	1030 2300 1270 2300
Connection ~ 1140 2300
Connection ~ 1140 2700
Wire Wire Line
	730  2300 730  2700
Wire Wire Line
	580  2510 730  2510
Connection ~ 730  2510
Wire Wire Line
	1100 1900 1270 1900
Wire Wire Line
	4845 2070 4845 2370
Wire Wire Line
	4845 2170 4680 2170
Connection ~ 4845 2270
Connection ~ 4845 2170
Wire Wire Line
	3675 980  3675 1280
Connection ~ 3675 1180
Connection ~ 3675 1080
Wire Wire Line
	1760 6935 1670 6935
Wire Wire Line
	1960 7180 1960 6935
Wire Wire Line
	2525 6935 2435 6935
Wire Wire Line
	2725 7180 2725 6935
Wire Wire Line
	3300 6935 3210 6935
Wire Wire Line
	3500 7180 3500 6935
Wire Wire Line
	4065 6935 3975 6935
Wire Wire Line
	4265 7180 4265 6935
Wire Wire Line
	4845 6935 4755 6935
Wire Wire Line
	5045 7180 5045 6935
Wire Wire Line
	5610 6935 5520 6935
Wire Wire Line
	5810 7180 5810 6935
Wire Wire Line
	10300 4790 10300 4950
Wire Wire Line
	10090 4800 10200 4800
Wire Wire Line
	10200 4800 10200 4790
Wire Wire Line
	8565 5125 8665 5125
Wire Notes Line
	9560 3605 9560 5690
Wire Notes Line
	9560 5690 10970 5690
Wire Notes Line
	10970 5690 10970 3605
Wire Notes Line
	10970 3605 9560 3605
Wire Notes Line
	9215 3600 8120 3600
Wire Notes Line
	8120 3600 8120 5680
Wire Notes Line
	8120 5680 9285 5680
Wire Notes Line
	9285 5680 9285 3600
Wire Notes Line
	9285 3600 9210 3600
Wire Notes Line
	7820 3595 6660 3595
Wire Notes Line
	6660 3595 6660 5690
Wire Notes Line
	6660 5690 7820 5690
Wire Notes Line
	7820 5690 7820 3595
Wire Wire Line
	9485 2075 9485 2230
Wire Wire Line
	9485 2230 9835 2230
Wire Wire Line
	9335 1765 9335 2070
Wire Wire Line
	9335 1765 9175 1765
Wire Wire Line
	9335 2070 9175 2070
Connection ~ 9335 1925
Wire Wire Line
	9930 5150 10000 5150
Wire Wire Line
	9835 2330 9660 2330
Wire Wire Line
	9660 2330 9660 2355
Text Notes 8720 990  0    79   ~ 0
SOUND
$Comp
L BOOST_24V U2
U 1 1 5ACE5BE2
P 7865 1920
F 0 "U2" H 7865 1920 60  0000 C CNN
F 1 "BOOST_24V" H 7865 2220 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 7865 1920 60  0001 C CNN
F 3 "" H 7865 1920 60  0001 C CNN
	1    7865 1920
	1    0    0    -1  
$EndComp
Wire Wire Line
	8415 2070 8975 2070
$Comp
L VCC #PWR042
U 1 1 5ACE6DF6
P 8905 1765
F 0 "#PWR042" H 8905 1615 50  0001 C CNN
F 1 "VCC" H 8905 1915 50  0000 C CNN
F 2 "" H 8905 1765 50  0001 C CNN
F 3 "" H 8905 1765 50  0001 C CNN
	1    8905 1765
	1    0    0    -1  
$EndComp
Wire Wire Line
	8905 1765 8975 1765
NoConn ~ 8415 1770
$Comp
L VCC #PWR043
U 1 1 5ACE851D
P 7315 1920
F 0 "#PWR043" H 7315 1770 50  0001 C CNN
F 1 "VCC" H 7315 2070 50  0000 C CNN
F 2 "" H 7315 1920 50  0001 C CNN
F 3 "" H 7315 1920 50  0001 C CNN
	1    7315 1920
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 5ACE861C
P 7965 2470
F 0 "#PWR044" H 7965 2220 50  0001 C CNN
F 1 "GND" H 7965 2320 50  0000 C CNN
F 2 "" H 7965 2470 50  0001 C CNN
F 3 "" H 7965 2470 50  0001 C CNN
	1    7965 2470
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR045
U 1 1 5ACE869C
P 7765 2470
F 0 "#PWR045" H 7765 2220 50  0001 C CNN
F 1 "GND" H 7765 2320 50  0000 C CNN
F 2 "" H 7765 2470 50  0001 C CNN
F 3 "" H 7765 2470 50  0001 C CNN
	1    7765 2470
	1    0    0    -1  
$EndComp
NoConn ~ 10600 4390
NoConn ~ 10600 4490
$Comp
L POT RV2
U 1 1 5ACEFAC5
P 6105 1570
F 0 "RV2" V 5930 1570 50  0000 C CNN
F 1 "POT" V 6005 1570 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Triwood_RM-065" H 6105 1570 50  0001 C CNN
F 3 "" H 6105 1570 50  0001 C CNN
	1    6105 1570
	-1   0    0    1   
$EndComp
Wire Wire Line
	5645 1570 5955 1570
$Comp
L VCC #PWR046
U 1 1 5ACEFDB1
P 6105 1420
F 0 "#PWR046" H 6105 1270 50  0001 C CNN
F 1 "VCC" H 6105 1570 50  0000 C CNN
F 2 "" H 6105 1420 50  0001 C CNN
F 3 "" H 6105 1420 50  0001 C CNN
	1    6105 1420
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR047
U 1 1 5ACEFEB2
P 6105 1720
F 0 "#PWR047" H 6105 1470 50  0001 C CNN
F 1 "GND" H 6105 1570 50  0000 C CNN
F 2 "" H 6105 1720 50  0001 C CNN
F 3 "" H 6105 1720 50  0001 C CNN
	1    6105 1720
	1    0    0    -1  
$EndComp
Text Notes 7295 6830 0    79   Italic 0
TODO: Replace boost converter footprint
Text Label 4845 1570 2    60   ~ 0
LCD_EN
Text Label 4845 1770 2    60   ~ 0
LCD_RS
$Comp
L GND #PWR048
U 1 1 5AD21AD9
P 4380 1670
F 0 "#PWR048" H 4380 1420 50  0001 C CNN
F 1 "GND" H 4380 1520 50  0000 C CNN
F 2 "" H 4380 1670 50  0001 C CNN
F 3 "" H 4380 1670 50  0001 C CNN
	1    4380 1670
	1    0    0    -1  
$EndComp
Wire Wire Line
	4845 1670 4380 1670
Text Label 4845 2470 2    60   ~ 0
LCD_D4
Text Label 4845 2570 2    60   ~ 0
LCD_D5
Text Label 4845 2670 2    60   ~ 0
LCD_D6
Text Label 4845 2770 2    60   ~ 0
LCD_D7
Text Label 3270 3900 0    60   ~ 0
LCD_EN
Text Label 3270 4200 0    60   ~ 0
LCD_D4
Text Label 3270 4300 0    60   ~ 0
LCD_D5
Text Label 3270 4400 0    60   ~ 0
LCD_D6
Text Label 3270 2600 0    60   ~ 0
LCD_D7
NoConn ~ 3270 4800
NoConn ~ 3270 4900
NoConn ~ 3270 5000
NoConn ~ 3270 3200
Text Label 3270 3800 0    60   ~ 0
LCD_RS
$Comp
L ATMEGA644P-20PU U1
U 1 1 5AC53E70
P 2270 3600
F 0 "U1" H 1420 5480 50  0000 L BNN
F 1 "ATMEGA644P-20PU" H 2670 1650 50  0000 L BNN
F 2 "Housings_DIP:DIP-40_W15.24mm_LongPads" H 2270 3600 50  0001 C CIN
F 3 "" H 2270 3600 50  0001 C CNN
	1    2270 3600
	1    0    0    -1  
$EndComp
$Comp
L UART_6pin J1
U 1 1 5AD317B4
P 5895 4715
F 0 "J1" H 5945 4365 60  0000 C CNN
F 1 "UART_6pin" H 5945 5065 60  0000 C CNN
F 2 "kamaji:Pin_Header_Angled_1x06_Pitch2.54mm" H 5945 4715 60  0001 C CNN
F 3 "" H 5945 4715 60  0001 C CNN
	1    5895 4715
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR049
U 1 1 5AD319DF
P 5595 4465
F 0 "#PWR049" H 5595 4215 50  0001 C CNN
F 1 "GND" H 5595 4315 50  0000 C CNN
F 2 "" H 5595 4465 50  0001 C CNN
F 3 "" H 5595 4465 50  0001 C CNN
	1    5595 4465
	0    1    1    0   
$EndComp
NoConn ~ 5595 4565
$Comp
L VCC #PWR050
U 1 1 5AD31BA8
P 5205 4390
F 0 "#PWR050" H 5205 4240 50  0001 C CNN
F 1 "VCC" H 5205 4540 50  0000 C CNN
F 2 "" H 5205 4390 50  0001 C CNN
F 3 "" H 5205 4390 50  0001 C CNN
	1    5205 4390
	1    0    0    -1  
$EndComp
NoConn ~ 5595 4965
$Comp
L Jumper_NC_Small JP3
U 1 1 5AD35404
P 5205 4490
F 0 "JP3" V 5200 4400 50  0000 C CNN
F 1 "UART_PWR" V 5200 4735 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5205 4490 50  0001 C CNN
F 3 "" H 5205 4490 50  0001 C CNN
	1    5205 4490
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5205 4665 5595 4665
Text Label 3270 4600 0    60   ~ 0
AVR_RX
Text Label 3270 4700 0    60   ~ 0
AVR_TX
Text Label 5595 4765 2    60   ~ 0
AVR_RX
Wire Wire Line
	5205 4590 5205 4665
Text Label 5595 4865 2    60   ~ 0
AVR_TX
Wire Notes Line
	6250 3600 6250 5680
Wire Notes Line
	6250 5680 4740 5680
Wire Notes Line
	4740 5680 4740 3590
Wire Notes Line
	4740 3590 6240 3590
Text Notes 5150 3925 0    79   ~ 0
   UART\nCONNECTOR
Text Notes 4915 970  0    79   ~ 0
LCD SCREEN
Wire Notes Line
	4160 685  4160 3335
Wire Notes Line
	4160 3335 6445 3335
Wire Notes Line
	6445 3335 6445 685 
Wire Notes Line
	6445 685  4160 685 
Wire Notes Line
	6725 700  6725 3325
Wire Notes Line
	6725 3325 10965 3325
Wire Notes Line
	10965 3325 10965 705 
Wire Notes Line
	10965 705  6725 705 
$EndSCHEMATC
