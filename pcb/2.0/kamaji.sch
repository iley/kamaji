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
Title "Kamaji Quiz Game System"
Date ""
Rev "2.0"
Comp ""
Comment1 "© Ilya Strukov <iley@iley.ru>"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L USB_A USB_OUT1
U 1 1 59621F81
P 9750 4625
F 0 "USB_OUT1" H 9550 5075 50  0000 L CNN
F 1 "USB_A" H 9550 4975 50  0000 L CNN
F 2 "Connectors:USB_A" H 9900 4575 50  0001 C CNN
F 3 "" H 9900 4575 50  0001 C CNN
	1    9750 4625
	1    0    0    -1  
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
Text GLabel 1675 7225 0    60   Input ~ 0
PLED1
Text GLabel 1675 7000 0    60   Output ~ 0
PBTN1
$Comp
L VCC #PWR04
U 1 1 596B3963
P 7950 4850
F 0 "#PWR04" H 7950 4700 50  0001 C CNN
F 1 "VCC" H 7950 5000 50  0000 C CNN
F 2 "" H 7950 4850 50  0001 C CNN
F 3 "" H 7950 4850 50  0001 C CNN
	1    7950 4850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 596B8372
P 7550 5450
F 0 "#PWR06" H 7550 5200 50  0001 C CNN
F 1 "GND" H 7550 5300 50  0000 C CNN
F 2 "" H 7550 5450 50  0001 C CNN
F 3 "" H 7550 5450 50  0001 C CNN
	1    7550 5450
	1    0    0    -1  
$EndComp
$Comp
L Speaker LS1
U 1 1 596B92FE
P 10000 2250
F 0 "LS1" H 10050 2475 50  0000 R CNN
F 1 "Speaker" H 10050 2400 50  0000 R CNN
F 2 "kamaji:AL-30P" H 10000 2050 50  0001 C CNN
F 3 "" H 9990 2200 50  0001 C CNN
	1    10000 2250
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 596B995B
P 9675 2700
F 0 "R3" V 9755 2700 50  0000 C CNN
F 1 "100R" V 9675 2700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9605 2700 50  0001 C CNN
F 3 "" H 9675 2700 50  0001 C CNN
	1    9675 2700
	1    0    0    -1  
$EndComp
Text GLabel 9225 2250 0    60   Input ~ 0
SND
$Comp
L GND #PWR07
U 1 1 596BC371
P 9650 5025
F 0 "#PWR07" H 9650 4775 50  0001 C CNN
F 1 "GND" H 9650 4875 50  0000 C CNN
F 2 "" H 9650 5025 50  0001 C CNN
F 3 "" H 9650 5025 50  0001 C CNN
	1    9650 5025
	1    0    0    -1  
$EndComp
NoConn ~ 10050 4725
NoConn ~ 10050 4625
$Comp
L VCC #PWR08
U 1 1 596BC751
P 10050 4425
F 0 "#PWR08" H 10050 4275 50  0001 C CNN
F 1 "VCC" H 10050 4575 50  0000 C CNN
F 2 "" H 10050 4425 50  0001 C CNN
F 3 "" H 10050 4425 50  0001 C CNN
	1    10050 4425
	0    1    1    0   
$EndComp
Text GLabel 9200 5500 0    60   Input ~ 0
LAMP
Text Notes 9125 1825 0    118  ~ 0
Buzzer
Text Notes 3225 6075 0    118  ~ 0
Player sockets
$Comp
L GND #PWR09
U 1 1 596BE03C
P 2750 5225
F 0 "#PWR09" H 2750 4975 50  0001 C CNN
F 1 "GND" H 2750 5075 50  0000 C CNN
F 2 "" H 2750 5225 50  0001 C CNN
F 3 "" H 2750 5225 50  0001 C CNN
	1    2750 5225
	1    0    0    -1  
$EndComp
Text GLabel 2250 4825 0    60   Output ~ 0
MOSI
Text GLabel 2250 5225 0    60   Output ~ 0
MISO
Text GLabel 1950 5125 0    60   Output ~ 0
SCK
Text GLabel 2250 5025 0    60   Output ~ 0
RST
Text GLabel 4275 4650 0    60   Output ~ 0
CBTN1
$Comp
L SW_Push SW1
U 1 1 596C2EB0
P 4475 4650
F 0 "SW1" H 4525 4750 50  0000 L CNN
F 1 "CTRL1" H 4475 4590 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h8.5mm" H 4475 4850 50  0001 C CNN
F 3 "" H 4475 4850 50  0001 C CNN
	1    4475 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 596C3F76
P 4675 4650
F 0 "#PWR011" H 4675 4400 50  0001 C CNN
F 1 "GND" H 4675 4500 50  0000 C CNN
F 2 "" H 4675 4650 50  0001 C CNN
F 3 "" H 4675 4650 50  0001 C CNN
	1    4675 4650
	0    -1   -1   0   
$EndComp
Text GLabel 4275 4950 0    60   Output ~ 0
CBTN2
$Comp
L SW_Push SW2
U 1 1 596C412B
P 4475 4950
F 0 "SW2" H 4525 5050 50  0000 L CNN
F 1 "CTRL2" H 4475 4890 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h8.5mm" H 4475 5150 50  0001 C CNN
F 3 "" H 4475 5150 50  0001 C CNN
	1    4475 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 596C4178
P 4675 4950
F 0 "#PWR012" H 4675 4700 50  0001 C CNN
F 1 "GND" H 4675 4800 50  0000 C CNN
F 2 "" H 4675 4950 50  0001 C CNN
F 3 "" H 4675 4950 50  0001 C CNN
	1    4675 4950
	0    -1   -1   0   
$EndComp
Text GLabel 4275 5275 0    60   Output ~ 0
CBTN3
$Comp
L SW_Push SW3
U 1 1 596C4203
P 4475 5275
F 0 "SW3" H 4525 5375 50  0000 L CNN
F 1 "CTRL3" H 4475 5215 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h8.5mm" H 4475 5475 50  0001 C CNN
F 3 "" H 4475 5475 50  0001 C CNN
	1    4475 5275
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 596C4256
P 4675 5275
F 0 "#PWR013" H 4675 5025 50  0001 C CNN
F 1 "GND" H 4675 5125 50  0000 C CNN
F 2 "" H 4675 5275 50  0001 C CNN
F 3 "" H 4675 5275 50  0001 C CNN
	1    4675 5275
	0    -1   -1   0   
$EndComp
$Comp
L LCD-016N002L DS1
U 1 1 596C4BC3
P 7550 1975
F 0 "DS1" H 6750 2375 50  0000 C CNN
F 1 "LCD-016N002L" H 8250 2375 50  0000 C CNN
F 2 "Displays:WC1602A" H 7550 1925 50  0001 C CIN
F 3 "" H 7550 1975 50  0001 C CNN
	1    7550 1975
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 596C4E9E
P 8300 2475
F 0 "#PWR014" H 8300 2225 50  0001 C CNN
F 1 "GND" H 8300 2325 50  0000 C CNN
F 2 "" H 8300 2475 50  0001 C CNN
F 3 "" H 8300 2475 50  0001 C CNN
	1    8300 2475
	1    0    0    -1  
$EndComp
$Comp
L POT RV2
U 1 1 596C52CC
P 6725 3100
F 0 "RV2" V 6550 3100 50  0000 C CNN
F 1 "POT" V 6625 3100 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Triwood_RM-065" H 6725 3100 50  0001 C CNN
F 3 "" H 6725 3100 50  0001 C CNN
	1    6725 3100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR015
U 1 1 596C53E2
P 6725 2950
F 0 "#PWR015" H 6725 2800 50  0001 C CNN
F 1 "VCC" H 6725 3100 50  0000 C CNN
F 2 "" H 6725 2950 50  0001 C CNN
F 3 "" H 6725 2950 50  0001 C CNN
	1    6725 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 596C542C
P 6725 3250
F 0 "#PWR016" H 6725 3000 50  0001 C CNN
F 1 "GND" H 6725 3100 50  0000 C CNN
F 2 "" H 6725 3250 50  0001 C CNN
F 3 "" H 6725 3250 50  0001 C CNN
	1    6725 3250
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 596C577E
P 9675 3000
F 0 "RV1" V 9500 3000 50  0000 C CNN
F 1 "POT" V 9575 3000 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Triwood_RM-065" H 9675 3000 50  0001 C CNN
F 3 "" H 9675 3000 50  0001 C CNN
	1    9675 3000
	0    -1   -1   0   
$EndComp
NoConn ~ 9525 3000
$Comp
L C C3
U 1 1 596C84CE
P 6450 1925
F 0 "C3" H 6475 2025 50  0000 L CNN
F 1 "0.1uF" H 6475 1825 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 6488 1775 50  0001 C CNN
F 3 "" H 6450 1925 50  0001 C CNN
	1    6450 1925
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR018
U 1 1 596C84D4
P 6450 1775
F 0 "#PWR018" H 6450 1625 50  0001 C CNN
F 1 "VCC" H 6450 1925 50  0000 C CNN
F 2 "" H 6450 1775 50  0001 C CNN
F 3 "" H 6450 1775 50  0001 C CNN
	1    6450 1775
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 596C866D
P 6450 2075
F 0 "#PWR019" H 6450 1825 50  0001 C CNN
F 1 "GND" H 6450 1925 50  0000 C CNN
F 2 "" H 6450 2075 50  0001 C CNN
F 3 "" H 6450 2075 50  0001 C CNN
	1    6450 2075
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR020
U 1 1 596C8F8A
P 6900 2475
F 0 "#PWR020" H 6900 2325 50  0001 C CNN
F 1 "VCC" H 6900 2625 50  0000 C CNN
F 2 "" H 6900 2475 50  0001 C CNN
F 3 "" H 6900 2475 50  0001 C CNN
	1    6900 2475
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR021
U 1 1 596CA14D
P 7200 2475
F 0 "#PWR021" H 7200 2225 50  0001 C CNN
F 1 "GND" H 7200 2325 50  0000 C CNN
F 2 "" H 7200 2475 50  0001 C CNN
F 3 "" H 7200 2475 50  0001 C CNN
	1    7200 2475
	1    0    0    -1  
$EndComp
NoConn ~ 7400 2475
NoConn ~ 7500 2475
NoConn ~ 7600 2475
NoConn ~ 7700 2475
Text Notes 9425 4050 0    118  ~ 0
USB out
Text Notes 3725 4425 0    118  ~ 0
Control buttons
Text Notes 1525 4525 0    118  ~ 0
Programming header
Text Notes 7450 4425 0    118  ~ 0
USB in
$Comp
L GND #PWR022
U 1 1 596D5901
P 6700 2475
F 0 "#PWR022" H 6700 2225 50  0001 C CNN
F 1 "GND" H 6700 2325 50  0000 C CNN
F 2 "" H 6700 2475 50  0001 C CNN
F 3 "" H 6700 2475 50  0001 C CNN
	1    6700 2475
	0    1    1    0   
$EndComp
Text Notes 7150 1350 0    118  ~ 0
Screen
$Comp
L R R5
U 1 1 596CDC4E
P 8425 2725
F 0 "R5" V 8505 2725 50  0000 C CNN
F 1 "220R" V 8425 2725 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8355 2725 50  0001 C CNN
F 3 "" H 8425 2725 50  0001 C CNN
	1    8425 2725
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR024
U 1 1 596CDFF3
P 8575 2725
F 0 "#PWR024" H 8575 2575 50  0001 C CNN
F 1 "VCC" H 8575 2875 50  0000 C CNN
F 2 "" H 8575 2725 50  0001 C CNN
F 3 "" H 8575 2725 50  0001 C CNN
	1    8575 2725
	0    1    1    0   
$EndComp
Text GLabel 7300 2675 3    60   Input ~ 0
LCD_EN
Text GLabel 7100 2675 3    60   Input ~ 0
LCD_RS
Text GLabel 8100 2675 3    60   Input ~ 0
LCD_D7
Text GLabel 8000 3075 3    60   Input ~ 0
LCD_D6
Text GLabel 7900 2675 3    60   Input ~ 0
LCD_D5
Text GLabel 7800 3075 3    60   Input ~ 0
LCD_D4
$Comp
L R R6
U 1 1 596F685F
P 1825 7225
F 0 "R6" V 1905 7225 50  0000 C CNN
F 1 "220R" V 1825 7225 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1755 7225 50  0001 C CNN
F 3 "" H 1825 7225 50  0001 C CNN
	1    1825 7225
	0    1    1    0   
$EndComp
$Comp
L RJ10 J2
U 1 1 596F6E39
P 3025 6550
F 0 "J2" H 3025 6600 60  0000 C CNN
F 1 "RJ10" H 3025 6450 60  0000 C CNN
F 2 "kamaji:RJ10" H 3000 6525 60  0001 C CNN
F 3 "" H 3000 6525 60  0001 C CNN
	1    3025 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 596F6E3F
P 3175 6925
F 0 "#PWR025" H 3175 6675 50  0001 C CNN
F 1 "GND" H 3175 6775 50  0000 C CNN
F 2 "" H 3175 6925 50  0001 C CNN
F 3 "" H 3175 6925 50  0001 C CNN
	1    3175 6925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 596F6E45
P 3000 6925
F 0 "#PWR026" H 3000 6675 50  0001 C CNN
F 1 "GND" H 3000 6775 50  0000 C CNN
F 2 "" H 3000 6925 50  0001 C CNN
F 3 "" H 3000 6925 50  0001 C CNN
	1    3000 6925
	1    0    0    -1  
$EndComp
Text GLabel 2725 7225 0    60   Input ~ 0
PLED2
Text GLabel 2725 7000 0    60   Output ~ 0
PBTN2
$Comp
L R R7
U 1 1 596F6E4F
P 2875 7225
F 0 "R7" V 2955 7225 50  0000 C CNN
F 1 "220R" V 2875 7225 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2805 7225 50  0001 C CNN
F 3 "" H 2875 7225 50  0001 C CNN
	1    2875 7225
	0    1    1    0   
$EndComp
$Comp
L RJ10 J3
U 1 1 596F75A2
P 4125 6550
F 0 "J3" H 4125 6600 60  0000 C CNN
F 1 "RJ10" H 4125 6450 60  0000 C CNN
F 2 "kamaji:RJ10" H 4100 6525 60  0001 C CNN
F 3 "" H 4100 6525 60  0001 C CNN
	1    4125 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 596F75A8
P 4275 6925
F 0 "#PWR027" H 4275 6675 50  0001 C CNN
F 1 "GND" H 4275 6775 50  0000 C CNN
F 2 "" H 4275 6925 50  0001 C CNN
F 3 "" H 4275 6925 50  0001 C CNN
	1    4275 6925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 596F75AE
P 4100 6925
F 0 "#PWR028" H 4100 6675 50  0001 C CNN
F 1 "GND" H 4100 6775 50  0000 C CNN
F 2 "" H 4100 6925 50  0001 C CNN
F 3 "" H 4100 6925 50  0001 C CNN
	1    4100 6925
	1    0    0    -1  
$EndComp
Text GLabel 3825 7225 0    60   Input ~ 0
PLED3
Text GLabel 3825 7000 0    60   Output ~ 0
PBTN3
$Comp
L R R8
U 1 1 596F75B8
P 3975 7225
F 0 "R8" V 4055 7225 50  0000 C CNN
F 1 "220R" V 3975 7225 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3905 7225 50  0001 C CNN
F 3 "" H 3975 7225 50  0001 C CNN
	1    3975 7225
	0    1    1    0   
$EndComp
$Comp
L RJ10 J4
U 1 1 596F75C0
P 5175 6550
F 0 "J4" H 5175 6600 60  0000 C CNN
F 1 "RJ10" H 5175 6450 60  0000 C CNN
F 2 "kamaji:RJ10" H 5150 6525 60  0001 C CNN
F 3 "" H 5150 6525 60  0001 C CNN
	1    5175 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 596F75C6
P 5325 6925
F 0 "#PWR029" H 5325 6675 50  0001 C CNN
F 1 "GND" H 5325 6775 50  0000 C CNN
F 2 "" H 5325 6925 50  0001 C CNN
F 3 "" H 5325 6925 50  0001 C CNN
	1    5325 6925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 596F75CC
P 5150 6925
F 0 "#PWR030" H 5150 6675 50  0001 C CNN
F 1 "GND" H 5150 6775 50  0000 C CNN
F 2 "" H 5150 6925 50  0001 C CNN
F 3 "" H 5150 6925 50  0001 C CNN
	1    5150 6925
	1    0    0    -1  
$EndComp
Text GLabel 4875 7225 0    60   Input ~ 0
PLED4
Text GLabel 4875 7000 0    60   Output ~ 0
PBTN4
$Comp
L R R9
U 1 1 596F75D6
P 5025 7225
F 0 "R9" V 5105 7225 50  0000 C CNN
F 1 "220R" V 5025 7225 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4955 7225 50  0001 C CNN
F 3 "" H 5025 7225 50  0001 C CNN
	1    5025 7225
	0    1    1    0   
$EndComp
$Comp
L GND #PWR031
U 1 1 596FB4DD
P 9750 5650
F 0 "#PWR031" H 9750 5400 50  0001 C CNN
F 1 "GND" H 9750 5500 50  0000 C CNN
F 2 "" H 9750 5650 50  0001 C CNN
F 3 "" H 9750 5650 50  0001 C CNN
	1    9750 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 5973B33C
P 9825 3000
F 0 "#PWR034" H 9825 2750 50  0001 C CNN
F 1 "GND" H 9825 2850 50  0000 C CNN
F 2 "" H 9825 3000 50  0001 C CNN
F 3 "" H 9825 3000 50  0001 C CNN
	1    9825 3000
	0    -1   -1   0   
$EndComp
$Comp
L IRF540N Q1
U 1 1 5973C5BD
P 9650 5450
F 0 "Q1" H 9900 5525 50  0000 L CNN
F 1 "IRF540N" H 9900 5450 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Horizontal" H 9900 5375 50  0001 L CIN
F 3 "" H 9650 5450 50  0001 L CNN
	1    9650 5450
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5973CF06
P 9325 5700
F 0 "R2" V 9405 5700 50  0000 C CNN
F 1 "10K" V 9325 5700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9255 5700 50  0001 C CNN
F 3 "" H 9325 5700 50  0001 C CNN
	1    9325 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 5973D38C
P 9325 5850
F 0 "#PWR035" H 9325 5600 50  0001 C CNN
F 1 "GND" H 9325 5700 50  0000 C CNN
F 2 "" H 9325 5850 50  0001 C CNN
F 3 "" H 9325 5850 50  0001 C CNN
	1    9325 5850
	1    0    0    -1  
$EndComp
$Comp
L CP CP1
U 1 1 5973C6F5
P 9375 2250
F 0 "CP1" H 9400 2350 50  0000 L CNN
F 1 "1uF" H 9400 2150 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D4.0mm_P1.50mm" H 9413 2100 50  0001 C CNN
F 3 "" H 9375 2250 50  0001 C CNN
	1    9375 2250
	0    -1   -1   0   
$EndComp
$Comp
L CONN_02X05 JP1
U 1 1 5973CB72
P 2500 5025
F 0 "JP1" H 2500 5325 50  0000 C CNN
F 1 "ICSP" H 2350 4700 50  0000 C CNN
F 2 "Connectors:IDC_Header_Straight_10pins" H 2500 3825 50  0001 C CNN
F 3 "" H 2500 3825 50  0001 C CNN
	1    2500 5025
	1    0    0    -1  
$EndComp
NoConn ~ 2250 4925
$Comp
L VCC #PWR036
U 1 1 596BDF58
P 2750 4825
F 0 "#PWR036" H 2750 4675 50  0001 C CNN
F 1 "VCC" H 2750 4975 50  0000 C CNN
F 2 "" H 2750 4825 50  0001 C CNN
F 3 "" H 2750 4825 50  0001 C CNN
	1    2750 4825
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 597CF491
P 6200 5100
F 0 "Y1" H 6200 5250 50  0000 C CNN
F 1 "Crystal" H 6200 4950 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 6200 5100 50  0001 C CNN
F 3 "" H 6200 5100 50  0001 C CNN
	1    6200 5100
	1    0    0    -1  
$EndComp
Text GLabel 5900 4900 1    60   Output ~ 0
XTAL1
Text GLabel 6475 4900 1    60   Input ~ 0
XTAL2
$Comp
L C C4
U 1 1 597CF8CA
P 5900 5475
F 0 "C4" H 5925 5575 50  0000 L CNN
F 1 "C" H 5925 5375 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 5938 5325 50  0001 C CNN
F 3 "" H 5900 5475 50  0001 C CNN
	1    5900 5475
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 597CF9BB
P 6475 5475
F 0 "C5" H 6500 5575 50  0000 L CNN
F 1 "C" H 6500 5375 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 6513 5325 50  0001 C CNN
F 3 "" H 6475 5475 50  0001 C CNN
	1    6475 5475
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 597CFB3C
P 5900 5625
F 0 "#PWR037" H 5900 5375 50  0001 C CNN
F 1 "GND" H 5900 5475 50  0000 C CNN
F 2 "" H 5900 5625 50  0001 C CNN
F 3 "" H 5900 5625 50  0001 C CNN
	1    5900 5625
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 597CFBA4
P 6475 5625
F 0 "#PWR038" H 6475 5375 50  0001 C CNN
F 1 "GND" H 6475 5475 50  0000 C CNN
F 2 "" H 6475 5625 50  0001 C CNN
F 3 "" H 6475 5625 50  0001 C CNN
	1    6475 5625
	1    0    0    -1  
$EndComp
Text Notes 5400 4450 0    118  ~ 0
Crystal oscillator
$Comp
L ATmega32U4 U?
U 1 1 599936BC
P 3325 2450
F 0 "U?" H 2425 4150 50  0000 C CNN
F 1 "ATmega32U4" H 2675 900 50  0000 C CNN
F 2 "" H 4525 3550 50  0001 C CNN
F 3 "" H 4525 3550 50  0001 C CNN
	1    3325 2450
	1    0    0    -1  
$EndComp
Text GLabel 1975 2900 0    60   Input ~ 0
XTAL1
Text GLabel 1950 3025 0    60   Output ~ 0
XTAL2
$Comp
L GND #PWR?
U 1 1 59994752
P 2075 3875
F 0 "#PWR?" H 2075 3625 50  0001 C CNN
F 1 "GND" H 2075 3725 50  0000 C CNN
F 2 "" H 2075 3875 50  0001 C CNN
F 3 "" H 2075 3875 50  0001 C CNN
	1    2075 3875
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59994EA2
P 1975 2450
F 0 "R?" V 2055 2450 50  0000 C CNN
F 1 "10K" V 1975 2450 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1905 2450 50  0001 C CNN
F 3 "" H 1975 2450 50  0001 C CNN
	1    1975 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5999504B
P 1975 2600
F 0 "#PWR?" H 1975 2350 50  0001 C CNN
F 1 "GND" H 1975 2450 50  0000 C CNN
F 2 "" H 1975 2600 50  0001 C CNN
F 3 "" H 1975 2600 50  0001 C CNN
	1    1975 2600
	1    0    0    -1  
$EndComp
Text GLabel 1850 2300 0    60   Input ~ 0
RST
Wire Wire Line
	1975 7225 2050 7225
Wire Wire Line
	2050 7225 2050 6925
Wire Wire Line
	9675 2550 9675 2350
Wire Wire Line
	9675 2350 9800 2350
Wire Wire Line
	9200 5500 9450 5500
Wire Wire Line
	9800 2250 9525 2250
Wire Wire Line
	6875 3100 7000 3100
Wire Wire Line
	7000 3100 7000 2475
Wire Wire Line
	6700 2475 6800 2475
Wire Wire Line
	7300 2675 7300 2475
Wire Wire Line
	7100 2675 7100 2475
Wire Wire Line
	8200 2475 8200 2725
Wire Wire Line
	8200 2725 8275 2725
Wire Wire Line
	8100 2675 8100 2475
Wire Wire Line
	8000 3075 8000 2475
Wire Wire Line
	7900 2675 7900 2475
Wire Wire Line
	7800 3075 7800 2475
Wire Wire Line
	1675 7000 1850 7000
Wire Wire Line
	1850 7000 1850 6925
Wire Wire Line
	3025 7225 3100 7225
Wire Wire Line
	3100 7225 3100 6925
Wire Wire Line
	2725 7000 2900 7000
Wire Wire Line
	2900 7000 2900 6925
Wire Wire Line
	4125 7225 4200 7225
Wire Wire Line
	4200 7225 4200 6925
Wire Wire Line
	3825 7000 4000 7000
Wire Wire Line
	4000 7000 4000 6925
Wire Wire Line
	5175 7225 5250 7225
Wire Wire Line
	5250 7225 5250 6925
Wire Wire Line
	4875 7000 5050 7000
Wire Wire Line
	5050 7000 5050 6925
Wire Wire Line
	9750 5250 9750 5025
Wire Wire Line
	9325 5550 9325 5500
Connection ~ 9325 5500
Wire Wire Line
	1950 5125 2250 5125
Wire Wire Line
	2750 4925 2750 5225
Connection ~ 2750 5025
Connection ~ 2750 5125
Wire Wire Line
	5900 4900 5900 5325
Wire Wire Line
	5900 5100 6050 5100
Wire Wire Line
	6350 5100 6475 5100
Wire Wire Line
	6475 4900 6475 5325
Connection ~ 6475 5100
Connection ~ 5900 5100
Wire Wire Line
	1975 2900 2075 2900
Wire Wire Line
	2075 3500 2075 3875
Connection ~ 2075 3800
Connection ~ 2075 3700
Connection ~ 2075 3600
Wire Wire Line
	1850 2300 2075 2300
Connection ~ 1975 2300
$Comp
L USB_B USB_IN1
U 1 1 596F83C8
P 7650 5050
F 0 "USB_IN1" H 7450 5500 50  0000 L CNN
F 1 "USB_B" H 7450 5400 50  0000 L CNN
F 2 "Connectors:USB_B" H 7800 5000 50  0001 C CNN
F 3 "" H 7800 5000 50  0001 C CNN
	1    7650 5050
	1    0    0    -1  
$EndComp
Text GLabel 8050 5025 2    60   BiDi ~ 0
USB_D+
Text GLabel 8050 5175 2    60   BiDi ~ 0
USB_D-
Wire Wire Line
	7950 5050 8050 5025
Wire Wire Line
	7950 5150 8050 5175
Text GLabel 1750 1650 0    60   BiDi ~ 0
USB_D+
Text GLabel 1750 1800 0    60   BiDi ~ 0
USB_D-
$Comp
L R R?
U 1 1 5999CD95
P 1925 1700
F 0 "R?" V 1950 1850 50  0000 C CNN
F 1 "22R" V 1925 1700 50  0000 C CNN
F 2 "" V 1855 1700 50  0001 C CNN
F 3 "" H 1925 1700 50  0001 C CNN
	1    1925 1700
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5999CE77
P 1925 1800
F 0 "R?" V 1950 1950 50  0000 C CNN
F 1 "22R" V 1925 1800 50  0000 C CNN
F 2 "" V 1855 1800 50  0001 C CNN
F 3 "" H 1925 1800 50  0001 C CNN
	1    1925 1800
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5999D4A4
P 1375 2050
F 0 "C?" H 1400 2150 50  0000 L CNN
F 1 "1uF" H 1400 1950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 1413 1900 50  0001 C CNN
F 3 "" H 1375 2050 50  0001 C CNN
	1    1375 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1375 1900 2075 1900
Wire Wire Line
	1775 1650 1775 1700
$Comp
L GND #PWR?
U 1 1 5999DAFE
P 1375 2200
F 0 "#PWR?" H 1375 1950 50  0001 C CNN
F 1 "GND" H 1375 2050 50  0000 C CNN
F 2 "" H 1375 2200 50  0001 C CNN
F 3 "" H 1375 2200 50  0001 C CNN
	1    1375 2200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5999E1E7
P 2075 900
F 0 "#PWR?" H 2075 750 50  0001 C CNN
F 1 "VCC" H 2075 1050 50  0000 C CNN
F 2 "" H 2075 900 50  0001 C CNN
F 3 "" H 2075 900 50  0001 C CNN
	1    2075 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2075 900  2075 1600
Connection ~ 2075 1400
Connection ~ 2075 1300
Connection ~ 2075 1200
Connection ~ 2075 1100
Connection ~ 2075 1000
Wire Wire Line
	1750 1800 1775 1800
Wire Wire Line
	1750 1650 1775 1650
Wire Wire Line
	1950 3025 2075 3025
Wire Wire Line
	2075 3025 2075 3000
Text Notes 7825 4725 0    60   Italic 0
TODO: Find out whether\nan inductor is needed on VBUS
$Comp
L GND #PWR?
U 1 1 599A2CA4
P 2075 2000
F 0 "#PWR?" H 2075 1750 50  0001 C CNN
F 1 "GND" H 2075 1850 50  0000 C CNN
F 2 "" H 2075 2000 50  0001 C CNN
F 3 "" H 2075 2000 50  0001 C CNN
	1    2075 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5450 7650 5450
$EndSCHEMATC