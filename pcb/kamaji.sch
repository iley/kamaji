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
LIBS:graphic
LIBS:hc11
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:logo
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
Title "Quiz Game System"
Date ""
Rev "1.0"
Comp "Dead Man's Bluff Inc."
Comment1 "© Ilya Strukov <iley@iley.ru>"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328P-PU U1
U 1 1 59621EF9
P 2150 2650
F 0 "U1" H 1400 3900 50  0000 L BNN
F 1 "ATMEGA328P-PU" H 2550 1250 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm" H 2150 2650 50  0001 C CIN
F 3 "" H 2150 2650 50  0001 C CNN
	1    2150 2650
	1    0    0    -1  
$EndComp
$Comp
L USB_OTG USB_IN1
U 1 1 59621F36
P 2325 4900
F 0 "USB_IN1" H 2125 5350 50  0000 L CNN
F 1 "USB_OTG" H 2125 5250 50  0000 L CNN
F 2 "Connectors:USB_Micro-B" H 2475 4850 50  0001 C CNN
F 3 "" H 2475 4850 50  0001 C CNN
	1    2325 4900
	1    0    0    -1  
$EndComp
$Comp
L USB_A USB_OUT1
U 1 1 59621F81
P 10275 5625
F 0 "USB_OUT1" H 10075 6075 50  0000 L CNN
F 1 "USB_A" H 10075 5975 50  0000 L CNN
F 2 "Connectors:USB_A" H 10425 5575 50  0001 C CNN
F 3 "" H 10425 5575 50  0001 C CNN
	1    10275 5625
	-1   0    0    1   
$EndComp
$Comp
L RJ10 J1
U 1 1 596B2CA8
P 1975 6550
F 0 "J1" H 1975 6600 60  0000 C CNN
F 1 "RJ10" H 1975 6450 60  0000 C CNN
F 2 "kamaji:RJ10" H 1950 6525 60  0001 C CNN
F 3 "" H 1950 6525 60  0001 C CNN
	1    1975 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 596B2D5F
P 2125 6925
F 0 "#PWR01" H 2125 6675 50  0001 C CNN
F 1 "GND" H 2125 6775 50  0000 C CNN
F 2 "" H 2125 6925 50  0001 C CNN
F 3 "" H 2125 6925 50  0001 C CNN
	1    2125 6925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 596B2D7D
P 1950 6925
F 0 "#PWR02" H 1950 6675 50  0001 C CNN
F 1 "GND" H 1950 6775 50  0000 C CNN
F 2 "" H 1950 6925 50  0001 C CNN
F 3 "" H 1950 6925 50  0001 C CNN
	1    1950 6925
	1    0    0    -1  
$EndComp
Text GLabel 1975 7225 0    60   Input ~ 0
PLED1
Text GLabel 1775 7000 0    60   Input ~ 0
PBTN1
$Comp
L GND #PWR03
U 1 1 596B3698
P 1150 3925
F 0 "#PWR03" H 1150 3675 50  0001 C CNN
F 1 "GND" H 1150 3775 50  0000 C CNN
F 2 "" H 1150 3925 50  0001 C CNN
F 3 "" H 1150 3925 50  0001 C CNN
	1    1150 3925
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 596B3963
P 2625 4700
F 0 "#PWR04" H 2625 4550 50  0001 C CNN
F 1 "VCC" H 2625 4850 50  0000 C CNN
F 2 "" H 2625 4700 50  0001 C CNN
F 3 "" H 2625 4700 50  0001 C CNN
	1    2625 4700
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR05
U 1 1 596B398D
P 1175 1375
F 0 "#PWR05" H 1175 1225 50  0001 C CNN
F 1 "VCC" H 1175 1525 50  0000 C CNN
F 2 "" H 1175 1375 50  0001 C CNN
F 3 "" H 1175 1375 50  0001 C CNN
	1    1175 1375
	1    0    0    -1  
$EndComp
Text GLabel 5500 7000 0    60   Input ~ 0
PBTN5
Text GLabel 5700 7225 0    60   Input ~ 0
PLED5
$Comp
L GND #PWR06
U 1 1 596B31D9
P 5675 6925
F 0 "#PWR06" H 5675 6675 50  0001 C CNN
F 1 "GND" H 5675 6775 50  0000 C CNN
F 2 "" H 5675 6925 50  0001 C CNN
F 3 "" H 5675 6925 50  0001 C CNN
	1    5675 6925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 596B31D3
P 5850 6925
F 0 "#PWR07" H 5850 6675 50  0001 C CNN
F 1 "GND" H 5850 6775 50  0000 C CNN
F 2 "" H 5850 6925 50  0001 C CNN
F 3 "" H 5850 6925 50  0001 C CNN
	1    5850 6925
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J5
U 1 1 596B31CD
P 5700 6550
F 0 "J5" H 5700 6600 60  0000 C CNN
F 1 "RJ10" H 5700 6450 60  0000 C CNN
F 2 "kamaji:RJ10" H 5675 6525 60  0001 C CNN
F 3 "" H 5675 6525 60  0001 C CNN
	1    5700 6550
	1    0    0    -1  
$EndComp
Text GLabel 4550 7000 0    60   Input ~ 0
PBTN4
Text GLabel 4750 7225 0    60   Input ~ 0
PLED4
$Comp
L GND #PWR08
U 1 1 596B2FB5
P 4725 6925
F 0 "#PWR08" H 4725 6675 50  0001 C CNN
F 1 "GND" H 4725 6775 50  0000 C CNN
F 2 "" H 4725 6925 50  0001 C CNN
F 3 "" H 4725 6925 50  0001 C CNN
	1    4725 6925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 596B2FAF
P 4900 6925
F 0 "#PWR09" H 4900 6675 50  0001 C CNN
F 1 "GND" H 4900 6775 50  0000 C CNN
F 2 "" H 4900 6925 50  0001 C CNN
F 3 "" H 4900 6925 50  0001 C CNN
	1    4900 6925
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J4
U 1 1 596B2FA9
P 4750 6550
F 0 "J4" H 4750 6600 60  0000 C CNN
F 1 "RJ10" H 4750 6450 60  0000 C CNN
F 2 "kamaji:RJ10" H 4725 6525 60  0001 C CNN
F 3 "" H 4725 6525 60  0001 C CNN
	1    4750 6550
	1    0    0    -1  
$EndComp
Text GLabel 3625 7000 0    60   Input ~ 0
PBTN3
Text GLabel 3825 7225 0    60   Input ~ 0
PLED3
$Comp
L GND #PWR010
U 1 1 596B2F9D
P 3800 6925
F 0 "#PWR010" H 3800 6675 50  0001 C CNN
F 1 "GND" H 3800 6775 50  0000 C CNN
F 2 "" H 3800 6925 50  0001 C CNN
F 3 "" H 3800 6925 50  0001 C CNN
	1    3800 6925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 596B2F97
P 3975 6925
F 0 "#PWR011" H 3975 6675 50  0001 C CNN
F 1 "GND" H 3975 6775 50  0000 C CNN
F 2 "" H 3975 6925 50  0001 C CNN
F 3 "" H 3975 6925 50  0001 C CNN
	1    3975 6925
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J3
U 1 1 596B2F91
P 3825 6550
F 0 "J3" H 3825 6600 60  0000 C CNN
F 1 "RJ10" H 3825 6450 60  0000 C CNN
F 2 "kamaji:RJ10" H 3800 6525 60  0001 C CNN
F 3 "" H 3800 6525 60  0001 C CNN
	1    3825 6550
	1    0    0    -1  
$EndComp
Text GLabel 2700 7000 0    60   Input ~ 0
PBTN2
Text GLabel 2900 7225 0    60   Input ~ 0
PLED2
$Comp
L GND #PWR012
U 1 1 596B2ECA
P 2875 6925
F 0 "#PWR012" H 2875 6675 50  0001 C CNN
F 1 "GND" H 2875 6775 50  0000 C CNN
F 2 "" H 2875 6925 50  0001 C CNN
F 3 "" H 2875 6925 50  0001 C CNN
	1    2875 6925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 596B2EC4
P 3050 6925
F 0 "#PWR013" H 3050 6675 50  0001 C CNN
F 1 "GND" H 3050 6775 50  0000 C CNN
F 2 "" H 3050 6925 50  0001 C CNN
F 3 "" H 3050 6925 50  0001 C CNN
	1    3050 6925
	1    0    0    -1  
$EndComp
$Comp
L RJ10 J2
U 1 1 596B2EBE
P 2900 6550
F 0 "J2" H 2900 6600 60  0000 C CNN
F 1 "RJ10" H 2900 6450 60  0000 C CNN
F 2 "kamaji:RJ10" H 2875 6525 60  0001 C CNN
F 3 "" H 2875 6525 60  0001 C CNN
	1    2900 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 596B8372
P 2325 5450
F 0 "#PWR014" H 2325 5200 50  0001 C CNN
F 1 "GND" H 2325 5300 50  0000 C CNN
F 2 "" H 2325 5450 50  0001 C CNN
F 3 "" H 2325 5450 50  0001 C CNN
	1    2325 5450
	1    0    0    -1  
$EndComp
$Comp
L Speaker LS1
U 1 1 596B92FE
P 6575 1650
F 0 "LS1" H 6625 1875 50  0000 R CNN
F 1 "Speaker" H 6625 1800 50  0000 R CNN
F 2 "" H 6575 1450 50  0001 C CNN
F 3 "" H 6565 1600 50  0001 C CNN
	1    6575 1650
	1    0    0    -1  
$EndComp
$Comp
L TIP120 Q1
U 1 1 596B9886
P 6150 2150
F 0 "Q1" H 6400 2225 50  0000 L CNN
F 1 "TIP120" H 6400 2150 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 6400 2075 50  0001 L CIN
F 3 "" H 6150 2150 50  0001 L CNN
	1    6150 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 596B98F4
P 6250 2475
F 0 "#PWR015" H 6250 2225 50  0001 C CNN
F 1 "GND" H 6250 2325 50  0000 C CNN
F 2 "" H 6250 2475 50  0001 C CNN
F 3 "" H 6250 2475 50  0001 C CNN
	1    6250 2475
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 596B995B
P 5950 1650
F 0 "R3" V 6030 1650 50  0000 C CNN
F 1 "20R" V 5950 1650 50  0000 C CNN
F 2 "" V 5880 1650 50  0001 C CNN
F 3 "" H 5950 1650 50  0001 C CNN
	1    5950 1650
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 596B9A74
P 5700 2150
F 0 "R2" V 5780 2150 50  0000 C CNN
F 1 "220R" V 5700 2150 50  0000 C CNN
F 2 "" V 5630 2150 50  0001 C CNN
F 3 "" H 5700 2150 50  0001 C CNN
	1    5700 2150
	0    1    1    0   
$EndComp
Text GLabel 5425 2150 0    60   Input ~ 0
SND
$Comp
L VCC #PWR016
U 1 1 596B9FA1
P 5500 1500
F 0 "#PWR016" H 5500 1350 50  0001 C CNN
F 1 "VCC" H 5500 1650 50  0000 C CNN
F 2 "" H 5500 1500 50  0001 C CNN
F 3 "" H 5500 1500 50  0001 C CNN
	1    5500 1500
	1    0    0    -1  
$EndComp
Text GLabel 3275 1650 2    60   Input ~ 0
SND
NoConn ~ 2625 4900
NoConn ~ 2625 5000
NoConn ~ 2625 5100
$Comp
L GND #PWR017
U 1 1 596BC371
P 10475 5125
F 0 "#PWR017" H 10475 4875 50  0001 C CNN
F 1 "GND" H 10475 4975 50  0000 C CNN
F 2 "" H 10475 5125 50  0001 C CNN
F 3 "" H 10475 5125 50  0001 C CNN
	1    10475 5125
	0    -1   -1   0   
$EndComp
NoConn ~ 9975 5525
NoConn ~ 9975 5625
$Comp
L TIP120 Q2
U 1 1 596BC5E2
P 9625 5550
F 0 "Q2" H 9875 5625 50  0000 L CNN
F 1 "TIP120" H 9375 5400 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 9875 5475 50  0001 L CIN
F 3 "" H 9625 5550 50  0001 L CNN
	1    9625 5550
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 596BC6AA
P 9150 5550
F 0 "R4" V 9230 5550 50  0000 C CNN
F 1 "2.2K" V 9150 5550 50  0000 C CNN
F 2 "" V 9080 5550 50  0001 C CNN
F 3 "" H 9150 5550 50  0001 C CNN
	1    9150 5550
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR018
U 1 1 596BC751
P 9725 5200
F 0 "#PWR018" H 9725 5050 50  0001 C CNN
F 1 "VCC" H 9725 5350 50  0000 C CNN
F 2 "" H 9725 5200 50  0001 C CNN
F 3 "" H 9725 5200 50  0001 C CNN
	1    9725 5200
	1    0    0    -1  
$EndComp
Text GLabel 8750 5550 0    60   Input ~ 0
LAMP
Text GLabel 3675 1550 2    60   Input ~ 0
LAMP
Text Notes 5700 1225 0    118  ~ 0
Buzzer
Text Notes 3225 6075 0    118  ~ 0
Player sockets
$Comp
L CONN_02X03 J6
U 1 1 596BDDEF
P 7100 5600
F 0 "J6" H 7100 5800 50  0000 C CNN
F 1 "ICSP" H 7100 5400 50  0000 C CNN
F 2 "" H 7100 4400 50  0001 C CNN
F 3 "" H 7100 4400 50  0001 C CNN
	1    7100 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 596BE03C
P 7400 5775
F 0 "#PWR019" H 7400 5525 50  0001 C CNN
F 1 "GND" H 7400 5625 50  0000 C CNN
F 2 "" H 7400 5775 50  0001 C CNN
F 3 "" H 7400 5775 50  0001 C CNN
	1    7400 5775
	1    0    0    -1  
$EndComp
Text GLabel 7500 5600 2    60   Input ~ 0
MOSI
$Comp
L VCC #PWR020
U 1 1 596BDF58
P 7400 5450
F 0 "#PWR020" H 7400 5300 50  0001 C CNN
F 1 "VCC" H 7400 5600 50  0000 C CNN
F 2 "" H 7400 5450 50  0001 C CNN
F 3 "" H 7400 5450 50  0001 C CNN
	1    7400 5450
	1    0    0    -1  
$EndComp
Text GLabel 6825 5500 0    60   Input ~ 0
MISO
Text GLabel 6525 5600 0    60   Input ~ 0
SCK
Text GLabel 6800 5700 0    60   Input ~ 0
RST
Text GLabel 3275 2050 2    60   Input ~ 0
SCK
Text GLabel 3675 1950 2    60   Input ~ 0
MISO
Text GLabel 3275 1850 2    60   Input ~ 0
MOSI
$Comp
L R R1
U 1 1 596BD934
P 4225 3250
F 0 "R1" V 4305 3250 50  0000 C CNN
F 1 "10K" V 4225 3250 50  0000 C CNN
F 2 "" V 4155 3250 50  0001 C CNN
F 3 "" H 4225 3250 50  0001 C CNN
	1    4225 3250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR021
U 1 1 596BDA9E
P 4225 3400
F 0 "#PWR021" H 4225 3250 50  0001 C CNN
F 1 "VCC" H 4225 3550 50  0000 C CNN
F 2 "" H 4225 3400 50  0001 C CNN
F 3 "" H 4225 3400 50  0001 C CNN
	1    4225 3400
	-1   0    0    1   
$EndComp
Text GLabel 4325 3000 2    60   Input ~ 0
RST
Text GLabel 3275 3150 2    60   Input ~ 0
PBTN1
Text GLabel 3675 3250 2    60   Input ~ 0
PLED1
Text GLabel 3275 3350 2    60   Input ~ 0
PBTN2
Text GLabel 3675 3450 2    60   Input ~ 0
PLED2
Text GLabel 3275 3550 2    60   Input ~ 0
PBTN3
Text GLabel 3675 2150 2    60   Input ~ 0
PLED3
Text GLabel 3275 2250 2    60   Input ~ 0
PBTN4
Text GLabel 3675 3650 2    60   Input ~ 0
PLED4
Text GLabel 3275 3750 2    60   Input ~ 0
PBTN5
Text GLabel 3675 3850 2    60   Input ~ 0
PLED5
Text GLabel 3275 2600 2    60   Input ~ 0
CBTN3
NoConn ~ 3150 1750
Text GLabel 4725 4625 0    60   Input ~ 0
CBTN1
$Comp
L SW_Push SW1
U 1 1 596C2EB0
P 4925 4625
F 0 "SW1" H 4975 4725 50  0000 L CNN
F 1 "CTRL1" H 4925 4565 50  0000 C CNN
F 2 "" H 4925 4825 50  0001 C CNN
F 3 "" H 4925 4825 50  0001 C CNN
	1    4925 4625
	1    0    0    -1  
$EndComp
Text GLabel 3675 2500 2    60   Input ~ 0
CBTN2
Text GLabel 3275 2400 2    60   Input ~ 0
CBTN1
$Comp
L GND #PWR022
U 1 1 596C3F76
P 5125 4625
F 0 "#PWR022" H 5125 4375 50  0001 C CNN
F 1 "GND" H 5125 4475 50  0000 C CNN
F 2 "" H 5125 4625 50  0001 C CNN
F 3 "" H 5125 4625 50  0001 C CNN
	1    5125 4625
	0    -1   -1   0   
$EndComp
Text GLabel 4725 4925 0    60   Input ~ 0
CBTN2
$Comp
L SW_Push SW2
U 1 1 596C412B
P 4925 4925
F 0 "SW2" H 4975 5025 50  0000 L CNN
F 1 "CTRL2" H 4925 4865 50  0000 C CNN
F 2 "" H 4925 5125 50  0001 C CNN
F 3 "" H 4925 5125 50  0001 C CNN
	1    4925 4925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 596C4178
P 5125 4925
F 0 "#PWR023" H 5125 4675 50  0001 C CNN
F 1 "GND" H 5125 4775 50  0000 C CNN
F 2 "" H 5125 4925 50  0001 C CNN
F 3 "" H 5125 4925 50  0001 C CNN
	1    5125 4925
	0    -1   -1   0   
$EndComp
Text GLabel 4725 5250 0    60   Input ~ 0
CBTN3
$Comp
L SW_Push SW3
U 1 1 596C4203
P 4925 5250
F 0 "SW3" H 4975 5350 50  0000 L CNN
F 1 "CTRL3" H 4925 5190 50  0000 C CNN
F 2 "" H 4925 5450 50  0001 C CNN
F 3 "" H 4925 5450 50  0001 C CNN
	1    4925 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 596C4256
P 5125 5250
F 0 "#PWR024" H 5125 5000 50  0001 C CNN
F 1 "GND" H 5125 5100 50  0000 C CNN
F 2 "" H 5125 5250 50  0001 C CNN
F 3 "" H 5125 5250 50  0001 C CNN
	1    5125 5250
	0    -1   -1   0   
$EndComp
$Comp
L LCD-016N002L DS1
U 1 1 596C4BC3
P 9475 1425
F 0 "DS1" H 8675 1825 50  0000 C CNN
F 1 "LCD-016N002L" H 10175 1825 50  0000 C CNN
F 2 "WC1602A" H 9475 1375 50  0001 C CIN
F 3 "" H 9475 1425 50  0001 C CNN
	1    9475 1425
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR025
U 1 1 596C4E57
P 10125 1925
F 0 "#PWR025" H 10125 1775 50  0001 C CNN
F 1 "VCC" H 10125 2075 50  0000 C CNN
F 2 "" H 10125 1925 50  0001 C CNN
F 3 "" H 10125 1925 50  0001 C CNN
	1    10125 1925
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR026
U 1 1 596C4E9E
P 10225 2075
F 0 "#PWR026" H 10225 1825 50  0001 C CNN
F 1 "GND" H 10225 1925 50  0000 C CNN
F 2 "" H 10225 2075 50  0001 C CNN
F 3 "" H 10225 2075 50  0001 C CNN
	1    10225 2075
	1    0    0    -1  
$EndComp
$Comp
L POT RV2
U 1 1 596C52CC
P 8650 2550
F 0 "RV2" V 8475 2550 50  0000 C CNN
F 1 "POT" V 8550 2550 50  0000 C CNN
F 2 "" H 8650 2550 50  0001 C CNN
F 3 "" H 8650 2550 50  0001 C CNN
	1    8650 2550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR027
U 1 1 596C53E2
P 8650 2400
F 0 "#PWR027" H 8650 2250 50  0001 C CNN
F 1 "VCC" H 8650 2550 50  0000 C CNN
F 2 "" H 8650 2400 50  0001 C CNN
F 3 "" H 8650 2400 50  0001 C CNN
	1    8650 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 596C542C
P 8650 2700
F 0 "#PWR028" H 8650 2450 50  0001 C CNN
F 1 "GND" H 8650 2550 50  0000 C CNN
F 2 "" H 8650 2700 50  0001 C CNN
F 3 "" H 8650 2700 50  0001 C CNN
	1    8650 2700
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 596C577E
P 5500 1650
F 0 "RV1" V 5325 1650 50  0000 C CNN
F 1 "POT" V 5400 1650 50  0000 C CNN
F 2 "" H 5500 1650 50  0001 C CNN
F 3 "" H 5500 1650 50  0001 C CNN
	1    5500 1650
	1    0    0    -1  
$EndComp
NoConn ~ 5500 1800
$Comp
L C C1
U 1 1 596C7711
P 1000 2875
F 0 "C1" H 1025 2975 50  0000 L CNN
F 1 "0.1uF" H 1025 2775 50  0000 L CNN
F 2 "" H 1038 2725 50  0001 C CNN
F 3 "" H 1000 2875 50  0001 C CNN
	1    1000 2875
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR029
U 1 1 596C7BFC
P 1000 2725
F 0 "#PWR029" H 1000 2575 50  0001 C CNN
F 1 "VCC" H 1000 2875 50  0000 C CNN
F 2 "" H 1000 2725 50  0001 C CNN
F 3 "" H 1000 2725 50  0001 C CNN
	1    1000 2725
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 596C84CE
P 8125 1450
F 0 "C3" H 8150 1550 50  0000 L CNN
F 1 "0.1uF" H 8150 1350 50  0000 L CNN
F 2 "" H 8163 1300 50  0001 C CNN
F 3 "" H 8125 1450 50  0001 C CNN
	1    8125 1450
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR030
U 1 1 596C84D4
P 8125 1300
F 0 "#PWR030" H 8125 1150 50  0001 C CNN
F 1 "VCC" H 8125 1450 50  0000 C CNN
F 2 "" H 8125 1300 50  0001 C CNN
F 3 "" H 8125 1300 50  0001 C CNN
	1    8125 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 596C866D
P 8125 1600
F 0 "#PWR031" H 8125 1350 50  0001 C CNN
F 1 "GND" H 8125 1450 50  0000 C CNN
F 2 "" H 8125 1600 50  0001 C CNN
F 3 "" H 8125 1600 50  0001 C CNN
	1    8125 1600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR032
U 1 1 596C8F8A
P 8825 1925
F 0 "#PWR032" H 8825 1775 50  0001 C CNN
F 1 "VCC" H 8825 2075 50  0000 C CNN
F 2 "" H 8825 1925 50  0001 C CNN
F 3 "" H 8825 1925 50  0001 C CNN
	1    8825 1925
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR033
U 1 1 596CA14D
P 9125 1925
F 0 "#PWR033" H 9125 1675 50  0001 C CNN
F 1 "GND" H 9125 1775 50  0000 C CNN
F 2 "" H 9125 1925 50  0001 C CNN
F 3 "" H 9125 1925 50  0001 C CNN
	1    9125 1925
	1    0    0    -1  
$EndComp
NoConn ~ 9325 1925
NoConn ~ 9425 1925
NoConn ~ 9525 1925
NoConn ~ 9625 1925
Text GLabel 9225 2175 3    60   Input ~ 0
LCD_EN
Wire Wire Line
	1850 7000 1850 6925
Wire Wire Line
	1775 7000 1850 7000
Wire Wire Line
	1975 7225 2050 7225
Wire Wire Line
	2050 7225 2050 6925
Wire Wire Line
	5575 7000 5575 6925
Wire Wire Line
	5500 7000 5575 7000
Wire Wire Line
	5775 7225 5775 6925
Wire Wire Line
	5700 7225 5775 7225
Wire Wire Line
	4625 7000 4625 6925
Wire Wire Line
	4550 7000 4625 7000
Wire Wire Line
	4825 7225 4825 6925
Wire Wire Line
	4750 7225 4825 7225
Wire Wire Line
	3700 7000 3700 6925
Wire Wire Line
	3625 7000 3700 7000
Wire Wire Line
	3900 7225 3900 6925
Wire Wire Line
	3825 7225 3900 7225
Wire Wire Line
	2775 7000 2775 6925
Wire Wire Line
	2700 7000 2775 7000
Wire Wire Line
	2975 7225 2975 6925
Wire Wire Line
	2900 7225 2975 7225
Wire Wire Line
	2325 5300 2325 5450
Wire Wire Line
	2225 5300 2225 5375
Wire Wire Line
	2225 5375 2325 5375
Connection ~ 2325 5375
Wire Wire Line
	6250 1950 6250 1750
Wire Wire Line
	6250 1750 6375 1750
Wire Wire Line
	6250 2475 6250 2350
Wire Wire Line
	5425 2150 5550 2150
Wire Wire Line
	5850 2150 5950 2150
Wire Wire Line
	3275 1650 3150 1650
Wire Wire Line
	1175 1375 1175 2150
Wire Wire Line
	1175 1550 1250 1550
Wire Wire Line
	1175 1850 1250 1850
Connection ~ 1175 1550
Wire Wire Line
	1175 2150 1250 2150
Connection ~ 1175 1850
Wire Wire Line
	10275 5125 10475 5125
Wire Wire Line
	10375 5125 10375 5225
Wire Wire Line
	10275 5125 10275 5225
Connection ~ 10375 5125
Wire Wire Line
	9725 5750 9725 5825
Wire Wire Line
	9725 5825 9975 5825
Wire Wire Line
	9300 5550 9425 5550
Wire Wire Line
	9725 5200 9725 5350
Wire Wire Line
	8750 5550 9000 5550
Wire Wire Line
	3150 1550 3675 1550
Wire Wire Line
	7350 5600 7500 5600
Wire Wire Line
	7350 5700 7400 5700
Wire Wire Line
	7400 5700 7400 5775
Wire Wire Line
	7350 5500 7400 5500
Wire Wire Line
	7400 5500 7400 5450
Wire Wire Line
	6825 5500 6850 5500
Wire Wire Line
	6525 5600 6850 5600
Wire Wire Line
	6800 5700 6850 5700
Wire Wire Line
	3150 2050 3275 2050
Wire Wire Line
	3150 1950 3675 1950
Wire Wire Line
	3150 1850 3275 1850
Wire Wire Line
	3150 3000 4325 3000
Wire Wire Line
	3675 3250 3150 3250
Wire Wire Line
	3150 3150 3275 3150
Connection ~ 4225 3000
Wire Wire Line
	3150 3350 3275 3350
Wire Wire Line
	3150 3450 3675 3450
Wire Wire Line
	3150 3550 3275 3550
Wire Wire Line
	3150 2150 3675 2150
Wire Wire Line
	3150 2250 3275 2250
Wire Wire Line
	3150 3650 3675 3650
Wire Wire Line
	3150 3750 3275 3750
Wire Wire Line
	3150 3850 3675 3850
Wire Wire Line
	3150 2400 3275 2400
Wire Wire Line
	3150 2500 3675 2500
Wire Wire Line
	3150 2600 3275 2600
Wire Wire Line
	4225 3000 4225 3100
Wire Wire Line
	10225 2075 10225 1925
Wire Wire Line
	6375 1650 6100 1650
Wire Wire Line
	5650 1650 5800 1650
Wire Wire Line
	8800 2550 8925 2550
Wire Wire Line
	8925 2550 8925 1925
Wire Wire Line
	9225 2175 9225 1925
$Comp
L 74HC595 U2
U 1 1 596CE934
P 8200 3650
F 0 "U2" H 8350 4250 50  0000 C CNN
F 1 "74HC595" H 8200 3050 50  0000 C CNN
F 2 "" H 8200 3650 50  0001 C CNN
F 3 "" H 8200 3650 50  0001 C CNN
	1    8200 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3400 9025 3400
Wire Wire Line
	9025 3400 9025 1925
Wire Wire Line
	8900 3500 9725 3500
Wire Wire Line
	9725 3500 9725 1925
Wire Wire Line
	8900 3600 9825 3600
Wire Wire Line
	9825 3600 9825 1925
Wire Wire Line
	8900 3700 9925 3700
Wire Wire Line
	9925 3700 9925 1925
Wire Wire Line
	8900 3800 10025 3800
Wire Wire Line
	10025 3800 10025 1925
NoConn ~ 8900 3900
NoConn ~ 8900 4100
NoConn ~ 8900 3200
NoConn ~ 8900 3300
Text GLabel 7325 3700 0    60   Input ~ 0
LCD_EN
Text Notes 9150 4825 0    118  ~ 0
USB out
Text GLabel 7500 3200 0    60   Input ~ 0
LCD_DAT
Text GLabel 7500 3400 0    60   Input ~ 0
LCD_CLK
$Comp
L VCC #PWR034
U 1 1 596CFCA2
P 7500 3500
F 0 "#PWR034" H 7500 3350 50  0001 C CNN
F 1 "VCC" H 7500 3650 50  0000 C CNN
F 2 "" H 7500 3500 50  0001 C CNN
F 3 "" H 7500 3500 50  0001 C CNN
	1    7500 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	7325 3700 7500 3700
$Comp
L C C2
U 1 1 596CFDFC
P 7250 4275
F 0 "C2" H 7275 4375 50  0000 L CNN
F 1 "0.1uF" H 7275 4175 50  0000 L CNN
F 2 "" H 7288 4125 50  0001 C CNN
F 3 "" H 7250 4275 50  0001 C CNN
	1    7250 4275
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR035
U 1 1 596CFE02
P 7250 4125
F 0 "#PWR035" H 7250 3975 50  0001 C CNN
F 1 "VCC" H 7250 4275 50  0000 C CNN
F 2 "" H 7250 4125 50  0001 C CNN
F 3 "" H 7250 4125 50  0001 C CNN
	1    7250 4125
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 596CFE08
P 7250 4425
F 0 "#PWR036" H 7250 4175 50  0001 C CNN
F 1 "GND" H 7250 4275 50  0000 C CNN
F 2 "" H 7250 4425 50  0001 C CNN
F 3 "" H 7250 4425 50  0001 C CNN
	1    7250 4425
	1    0    0    -1  
$EndComp
Text GLabel 3675 2700 2    60   Input ~ 0
LCD_DAT
Wire Wire Line
	3150 2700 3675 2700
Text GLabel 3200 2800 2    60   Input ~ 0
LCD_CLK
Wire Wire Line
	3150 2800 3200 2800
Text GLabel 3675 2900 2    60   Input ~ 0
LCD_EN
Wire Wire Line
	3675 2900 3150 2900
Text Notes 4175 4400 0    118  ~ 0
Control buttons
Text Notes 6050 5125 0    118  ~ 0
Programming header
Text Notes 1325 5000 0    118  ~ 0
USB in
$Comp
L GND #PWR?
U 1 1 596D5391
P 7500 3800
F 0 "#PWR?" H 7500 3550 50  0001 C CNN
F 1 "GND" H 7500 3650 50  0000 C CNN
F 2 "" H 7500 3800 50  0001 C CNN
F 3 "" H 7500 3800 50  0001 C CNN
	1    7500 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 596D5901
P 8625 1925
F 0 "#PWR?" H 8625 1675 50  0001 C CNN
F 1 "GND" H 8625 1775 50  0000 C CNN
F 2 "" H 8625 1925 50  0001 C CNN
F 3 "" H 8625 1925 50  0001 C CNN
	1    8625 1925
	0    1    1    0   
$EndComp
Wire Wire Line
	8625 1925 8725 1925
Wire Wire Line
	1150 3925 1150 3750
Wire Wire Line
	1150 3750 1250 3750
Wire Wire Line
	1250 3850 1150 3850
Connection ~ 1150 3850
$Comp
L GND #PWR?
U 1 1 596D65A9
P 1000 3025
F 0 "#PWR?" H 1000 2775 50  0001 C CNN
F 1 "GND" H 1000 2875 50  0000 C CNN
F 2 "" H 1000 3025 50  0001 C CNN
F 3 "" H 1000 3025 50  0001 C CNN
	1    1000 3025
	1    0    0    -1  
$EndComp
$EndSCHEMATC
