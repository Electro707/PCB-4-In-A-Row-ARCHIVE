EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Connect 4 Driver Boarf"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 "Jamal Bouajjaj"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74HC595 U1
U 1 1 5E38459A
P 7050 1350
F 0 "U1" H 7300 700 50  0000 C CNN
F 1 "74HC595" H 6800 1900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 7050 1350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 7050 1350 50  0001 C CNN
	1    7050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5E3C0254
P 7050 2100
F 0 "#PWR05" H 7050 1850 50  0001 C CNN
F 1 "GND" H 7055 1927 50  0000 C CNN
F 2 "" H 7050 2100 50  0001 C CNN
F 3 "" H 7050 2100 50  0001 C CNN
	1    7050 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2050 7050 2100
$Comp
L power:VCC #PWR01
U 1 1 5E3C3CD0
P 7050 700
F 0 "#PWR01" H 7050 550 50  0001 C CNN
F 1 "VCC" H 7067 873 50  0000 C CNN
F 2 "" H 7050 700 50  0001 C CNN
F 3 "" H 7050 700 50  0001 C CNN
	1    7050 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 700  7050 750 
$Comp
L 74xx:74HC595 U3
U 1 1 5E3C8A5F
P 7050 3250
F 0 "U3" H 7300 2600 50  0000 C CNN
F 1 "74HC595" H 6800 3800 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 7050 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 7050 3250 50  0001 C CNN
	1    7050 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E3C8A65
P 7050 4000
F 0 "#PWR010" H 7050 3750 50  0001 C CNN
F 1 "GND" H 7055 3827 50  0000 C CNN
F 2 "" H 7050 4000 50  0001 C CNN
F 3 "" H 7050 4000 50  0001 C CNN
	1    7050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3950 7050 4000
$Comp
L power:VCC #PWR06
U 1 1 5E3C8A6C
P 7050 2600
F 0 "#PWR06" H 7050 2450 50  0001 C CNN
F 1 "VCC" H 7067 2773 50  0000 C CNN
F 2 "" H 7050 2600 50  0001 C CNN
F 3 "" H 7050 2600 50  0001 C CNN
	1    7050 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2600 7050 2650
$Comp
L 74xx:74HC595 U5
U 1 1 5E3CC6B9
P 7050 5150
F 0 "U5" H 7300 4500 50  0000 C CNN
F 1 "74HC595" H 6800 5700 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 7050 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 7050 5150 50  0001 C CNN
	1    7050 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5E3CC6BF
P 7050 5900
F 0 "#PWR015" H 7050 5650 50  0001 C CNN
F 1 "GND" H 7055 5727 50  0000 C CNN
F 2 "" H 7050 5900 50  0001 C CNN
F 3 "" H 7050 5900 50  0001 C CNN
	1    7050 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5850 7050 5900
$Comp
L power:VCC #PWR011
U 1 1 5E3CC6C6
P 7050 4500
F 0 "#PWR011" H 7050 4350 50  0001 C CNN
F 1 "VCC" H 7067 4673 50  0000 C CNN
F 2 "" H 7050 4500 50  0001 C CNN
F 3 "" H 7050 4500 50  0001 C CNN
	1    7050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4500 7050 4550
Wire Wire Line
	7450 1850 7500 1850
Wire Wire Line
	7500 1850 7500 2350
Wire Wire Line
	7500 2350 6600 2350
Wire Wire Line
	6600 2350 6600 2850
Wire Wire Line
	6600 2850 6650 2850
Wire Wire Line
	7450 3750 7500 3750
Wire Wire Line
	7500 3750 7500 4250
Wire Wire Line
	7500 4250 6600 4250
Wire Wire Line
	6600 4250 6600 4750
Wire Wire Line
	6600 4750 6650 4750
Wire Wire Line
	6650 5350 6350 5350
Wire Wire Line
	6350 5350 6350 3450
Wire Wire Line
	6350 3450 6650 3450
Wire Wire Line
	6350 3450 6350 1550
Connection ~ 6350 3450
Wire Wire Line
	6650 1450 6400 1450
Wire Wire Line
	6400 1450 6400 3350
Wire Wire Line
	6400 3350 6650 3350
Wire Wire Line
	6400 3350 6400 5250
Wire Wire Line
	6400 5250 6650 5250
Connection ~ 6400 3350
Wire Wire Line
	6650 5050 6450 5050
Wire Wire Line
	6450 5050 6450 3150
Wire Wire Line
	6450 3150 6650 3150
Wire Wire Line
	6650 3050 6500 3050
Wire Wire Line
	6500 3050 6500 4950
Wire Wire Line
	6500 4950 6650 4950
Wire Wire Line
	6450 3150 6450 1250
Wire Wire Line
	6450 1250 6650 1250
Connection ~ 6450 3150
Wire Wire Line
	6650 1150 6500 1150
Wire Wire Line
	6500 1150 6500 3050
Connection ~ 6500 3050
Wire Wire Line
	7450 2850 7600 2850
Wire Wire Line
	1950 2900 2100 2900
Wire Wire Line
	2100 3000 1950 3000
Wire Wire Line
	1950 3100 2100 3100
Wire Wire Line
	1950 3200 2100 3200
Wire Wire Line
	1950 3300 2100 3300
Wire Wire Line
	1950 3400 2100 3400
Wire Wire Line
	1950 3500 2100 3500
$Comp
L Device:Crystal Y1
U 1 1 5E4C6DE0
P 4450 2900
F 0 "Y1" V 4404 3031 50  0000 L CNN
F 1 "16 Mhz" V 4495 3031 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 4450 2900 50  0001 C CNN
F 3 "~" H 4450 2900 50  0001 C CNN
	1    4450 2900
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5E4D7286
P 4950 2750
F 0 "C1" V 5000 2850 50  0000 C CNN
F 1 "22pF" V 4900 2900 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4988 2600 50  0001 C CNN
F 3 "~" H 4950 2750 50  0001 C CNN
	1    4950 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 3050 4450 3050
Connection ~ 4450 3050
Wire Wire Line
	4450 2750 4800 2750
Connection ~ 4450 2750
Wire Wire Line
	5100 2750 5200 2750
Wire Wire Line
	5200 2750 5200 2900
Wire Wire Line
	5200 3050 5100 3050
$Comp
L power:GND #PWR07
U 1 1 5E4F7777
P 5250 2900
F 0 "#PWR07" H 5250 2650 50  0001 C CNN
F 1 "GND" H 5255 2727 50  0000 C CNN
F 2 "" H 5250 2900 50  0001 C CNN
F 3 "" H 5250 2900 50  0001 C CNN
	1    5250 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 2900 5200 2900
Connection ~ 5200 2900
Wire Wire Line
	5200 2900 5200 3050
$Comp
L power:GND #PWR09
U 1 1 5E5079C3
P 1350 3950
F 0 "#PWR09" H 1350 3700 50  0001 C CNN
F 1 "GND" H 1355 3777 50  0000 C CNN
F 2 "" H 1350 3950 50  0001 C CNN
F 3 "" H 1350 3950 50  0001 C CNN
	1    1350 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3950 1350 3900
$Comp
L power:VCC #PWR02
U 1 1 5E518623
P 1450 750
F 0 "#PWR02" H 1450 600 50  0001 C CNN
F 1 "VCC" H 1467 923 50  0000 C CNN
F 2 "" H 1450 750 50  0001 C CNN
F 3 "" H 1450 750 50  0001 C CNN
	1    1450 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 750  1450 800 
Wire Wire Line
	1450 800  1350 800 
Wire Wire Line
	1350 800  1350 900 
Connection ~ 1450 800 
Wire Wire Line
	1450 800  1450 900 
Wire Wire Line
	1350 800  650  800 
Wire Wire Line
	650  800  650  1200
Wire Wire Line
	650  1200 750  1200
Connection ~ 1350 800 
Text GLabel 6225 950  0    40   Input ~ 0
DATA
Wire Wire Line
	6225 950  6650 950 
Text GLabel 2100 2900 2    50   Input ~ 0
Button1
Text GLabel 2100 3000 2    50   Input ~ 0
Button2
Text GLabel 2100 3100 2    50   Input ~ 0
Button3
Text GLabel 2100 3200 2    50   Input ~ 0
Button4
Text GLabel 2100 3300 2    50   Input ~ 0
Button5
Text GLabel 2100 3400 2    50   Input ~ 0
Button6
Text GLabel 2100 3500 2    50   Input ~ 0
Button7
$Comp
L Device:C C2
U 1 1 5FCB22A0
P 4950 3050
F 0 "C2" V 5000 3150 50  0000 C CNN
F 1 "22pF" V 4900 3200 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4988 2900 50  0001 C CNN
F 3 "~" H 4950 3050 50  0001 C CNN
	1    4950 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 950  8400 950 
Wire Wire Line
	7450 1050 8400 1050
Wire Wire Line
	7450 1150 8400 1150
Wire Wire Line
	7450 1250 8400 1250
Wire Wire Line
	7450 1350 8400 1350
Wire Wire Line
	7450 1450 8400 1450
Wire Wire Line
	7450 1550 8400 1550
Wire Wire Line
	7450 1650 8400 1650
Wire Wire Line
	7600 2850 7600 1750
Wire Wire Line
	7600 1750 8400 1750
Wire Wire Line
	7650 2950 7650 1850
Wire Wire Line
	7650 1850 8400 1850
Wire Wire Line
	7450 2950 7650 2950
Wire Wire Line
	7700 3050 7700 1950
Wire Wire Line
	7700 1950 8400 1950
Wire Wire Line
	7450 3050 7700 3050
Wire Wire Line
	7750 3150 7750 2050
Wire Wire Line
	7750 2050 8400 2050
Wire Wire Line
	7450 3150 7750 3150
Wire Wire Line
	8400 2150 7800 2150
Wire Wire Line
	7800 2150 7800 3250
Wire Wire Line
	7450 3250 7800 3250
Wire Wire Line
	7850 3350 7850 2250
Wire Wire Line
	7850 2250 8400 2250
Wire Wire Line
	7450 3350 7850 3350
Wire Wire Line
	8400 2350 7900 2350
Wire Wire Line
	7900 2350 7900 3450
Wire Wire Line
	7450 3450 7900 3450
Wire Wire Line
	7950 3550 7950 2450
Wire Wire Line
	7950 2450 8400 2450
Wire Wire Line
	7450 3550 7950 3550
Wire Wire Line
	8400 2550 8000 2550
Wire Wire Line
	8000 2550 8000 4750
Wire Wire Line
	7450 4750 8000 4750
Wire Wire Line
	8050 4850 8050 2650
Wire Wire Line
	8050 2650 8400 2650
Wire Wire Line
	7450 4850 8050 4850
Wire Wire Line
	8400 2750 8100 2750
Wire Wire Line
	8100 2750 8100 4950
Wire Wire Line
	7450 4950 8100 4950
Wire Wire Line
	8150 5050 8150 2850
Wire Wire Line
	8150 2850 8400 2850
Wire Wire Line
	7450 5050 8150 5050
Wire Wire Line
	8400 2950 8200 2950
Wire Wire Line
	8200 2950 8200 5150
Wire Wire Line
	7450 5150 8200 5150
Text GLabel 6200 1150 0    40   Input ~ 0
SRCLK
Text GLabel 6200 1250 0    40   Input ~ 0
~SRCLR
Wire Wire Line
	6200 1550 6350 1550
Connection ~ 6350 1550
Wire Wire Line
	6350 1550 6650 1550
Wire Wire Line
	6400 1450 6200 1450
Connection ~ 6400 1450
Wire Wire Line
	6200 1250 6450 1250
Connection ~ 6450 1250
Wire Wire Line
	6500 1150 6200 1150
Connection ~ 6500 1150
Text GLabel 2100 1700 2    50   Input ~ 0
SRCLK
Wire Wire Line
	4250 2750 4450 2750
Text GLabel 2100 1500 2    50   Input ~ 0
DATA
Wire Wire Line
	2100 1700 1950 1700
Wire Wire Line
	2100 1500 1950 1500
Wire Wire Line
	2100 1600 1950 1600
Text GLabel 2100 1400 2    50   Input ~ 0
~OE
Text GLabel 2100 1600 2    50   Input ~ 0
~SRCLR
Wire Wire Line
	2100 1400 1950 1400
Wire Wire Line
	2100 1300 1950 1300
Wire Wire Line
	2700 2100 2850 2100
Wire Wire Line
	2850 2200 2700 2200
Wire Wire Line
	2700 2300 2850 2300
Wire Wire Line
	2850 2400 2700 2400
Wire Wire Line
	2700 2500 2850 2500
Wire Wire Line
	2850 2600 2700 2600
Wire Wire Line
	2400 2100 1950 2100
Wire Wire Line
	1950 2200 2400 2200
Wire Wire Line
	2400 2300 1950 2300
Wire Wire Line
	1950 2400 2400 2400
Wire Wire Line
	2400 2500 1950 2500
Wire Wire Line
	1950 2600 2400 2600
Text GLabel 2100 1800 2    50   Input ~ 0
XTAL1
Text GLabel 2100 1900 2    50   Input ~ 0
XTAL2
Wire Wire Line
	2100 1900 1950 1900
Wire Wire Line
	1950 1800 2100 1800
Text GLabel 4250 2750 0    50   Input ~ 0
XTAL1
Text GLabel 4250 3050 0    50   Input ~ 0
XTAL2
Wire Wire Line
	4250 3050 4450 3050
Text GLabel 2100 2700 2    50   Input ~ 0
~RESET
Wire Wire Line
	2100 2700 1950 2700
Text GLabel 6200 1450 0    40   Input ~ 0
RCLK
Text GLabel 6200 1550 0    40   Input ~ 0
~OE
Text GLabel 5100 1500 2    50   Input ~ 0
SRCLK
Text GLabel 5100 1600 2    50   Input ~ 0
~RESET
$Comp
L power:VCC #PWR03
U 1 1 5EACCE1B
P 4450 900
F 0 "#PWR03" H 4450 750 50  0001 C CNN
F 1 "VCC" H 4467 1073 50  0000 C CNN
F 2 "" H 4450 900 50  0001 C CNN
F 3 "" H 4450 900 50  0001 C CNN
	1    4450 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 900  4450 1000
Text GLabel 2100 1300 2    53   Input ~ 0
RCLK
Text GLabel 5100 1300 2    50   Input ~ 0
~SRCLR
Text GLabel 5100 1400 2    50   Input ~ 0
DATA
$Comp
L power:GND #PWR04
U 1 1 5EB1F9A0
P 4450 2000
F 0 "#PWR04" H 4450 1750 50  0001 C CNN
F 1 "GND" H 4455 1827 50  0000 C CNN
F 2 "" H 4450 2000 50  0001 C CNN
F 3 "" H 4450 2000 50  0001 C CNN
	1    4450 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1900 4450 2000
$Comp
L Regulator_Linear:AZ1117-5.0 U4
U 1 1 5EC0F7A0
P 1400 4850
F 0 "U4" H 1400 5092 50  0000 C CNN
F 1 "AZ1117-5.0" H 1400 5001 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 1400 5100 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 1400 4850 50  0001 C CNN
	1    1400 4850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 5EC125BF
P 1850 6050
F 0 "#PWR016" H 1850 5900 50  0001 C CNN
F 1 "VCC" H 1867 6223 50  0000 C CNN
F 2 "" H 1850 6050 50  0001 C CNN
F 3 "" H 1850 6050 50  0001 C CNN
	1    1850 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6050 1850 6150
Wire Wire Line
	1850 6150 1750 6150
$Comp
L power:GND #PWR017
U 1 1 5EC36677
P 1450 6850
F 0 "#PWR017" H 1450 6600 50  0001 C CNN
F 1 "GND" H 1455 6677 50  0000 C CNN
F 2 "" H 1450 6850 50  0001 C CNN
F 3 "" H 1450 6850 50  0001 C CNN
	1    1450 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6850 1450 6750
$Comp
L power:VCC #PWR012
U 1 1 5ECA481A
P 1800 4700
F 0 "#PWR012" H 1800 4550 50  0001 C CNN
F 1 "VCC" H 1817 4873 50  0000 C CNN
F 2 "" H 1800 4700 50  0001 C CNN
F 3 "" H 1800 4700 50  0001 C CNN
	1    1800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4700 1800 4850
Wire Wire Line
	1800 4850 1700 4850
Wire Wire Line
	950  4850 1100 4850
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5ED4E80F
P 2300 4850
F 0 "J4" H 2250 4950 50  0000 L CNN
F 1 "Conn_01x02" H 2380 4751 50  0001 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P3.81mm_Drill1mm" H 2300 4850 50  0001 C CNN
F 3 "~" H 2300 4850 50  0001 C CNN
	1    2300 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4850 1800 4850
Connection ~ 1800 4850
$Comp
L power:GND #PWR014
U 1 1 5ED76C20
P 2050 5500
F 0 "#PWR014" H 2050 5250 50  0001 C CNN
F 1 "GND" H 2055 5327 50  0000 C CNN
F 2 "" H 2050 5500 50  0001 C CNN
F 3 "" H 2050 5500 50  0001 C CNN
	1    2050 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4950 2050 5400
Wire Wire Line
	2050 4950 2100 4950
$Comp
L Device:C C3
U 1 1 5EDC3CB1
P 1800 5100
F 0 "C3" H 1915 5146 50  0000 L CNN
F 1 "C" H 1915 5055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1838 4950 50  0001 C CNN
F 3 "~" H 1800 5100 50  0001 C CNN
	1    1800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4950 1800 4850
Wire Wire Line
	1800 5250 1800 5400
Wire Wire Line
	1800 5400 2050 5400
Connection ~ 2050 5400
Wire Wire Line
	2050 5400 2050 5500
Wire Wire Line
	1800 5400 1400 5400
Wire Wire Line
	1400 5150 1400 5400
Connection ~ 1800 5400
Wire Wire Line
	1050 5400 1400 5400
Connection ~ 1400 5400
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5EE55C12
P 750 4950
F 0 "J5" H 750 4750 50  0000 C CNN
F 1 "Conn_01x02" H 830 4851 50  0001 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P3.81mm_Drill1mm" H 750 4950 50  0001 C CNN
F 3 "~" H 750 4950 50  0001 C CNN
	1    750  4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	1050 4950 1050 5400
Wire Wire Line
	1050 4950 950  4950
$Comp
L Connector:Conn_01x18_Female J2
U 1 1 5E794EE8
P 9700 1700
F 0 "J2" H 9728 1676 50  0000 L CNN
F 1 "Conn_01x18_Female" H 9728 1585 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x18_P2.54mm_Vertical" H 9700 1700 50  0001 C CNN
F 3 "~" H 9700 1700 50  0001 C CNN
	1    9700 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x18_Female J3
U 1 1 5E799E1A
P 9700 3650
F 0 "J3" H 9728 3626 50  0000 L CNN
F 1 "Conn_01x18_Female" H 9728 3535 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x18_P2.54mm_Vertical" H 9700 3650 50  0001 C CNN
F 3 "~" H 9700 3650 50  0001 C CNN
	1    9700 3650
	1    0    0    -1  
$EndComp
Text Label 9250 900  0    50   ~ 0
C1R
Text Label 9250 1000 0    50   ~ 0
C1G
Text Label 9250 1100 0    50   ~ 0
C1B
Text Label 9250 1200 0    50   ~ 0
C2R
Text Label 9250 1300 0    50   ~ 0
C2G
Text Label 9250 1400 0    50   ~ 0
C2B
Text Label 9250 1500 0    50   ~ 0
C3R
Text Label 9250 1600 0    50   ~ 0
C3G
Text Label 9250 1700 0    50   ~ 0
C3B
Text Label 9250 1800 0    50   ~ 0
C4R
Text Label 9250 2850 0    50   ~ 0
C4G
Text Label 9250 2950 0    50   ~ 0
C4B
Text Label 9250 3050 0    50   ~ 0
C5R
Text Label 9250 3150 0    50   ~ 0
C5G
Text Label 9250 3250 0    50   ~ 0
C5B
Text Label 9250 3350 0    50   ~ 0
C6R
Text Label 9250 4550 0    50   ~ 0
C6G
Text Label 9250 4450 0    50   ~ 0
C6B
Text Label 9250 4350 0    50   ~ 0
C7R
Text Label 9250 4250 0    50   ~ 0
C7G
Text Label 9250 4150 0    50   ~ 0
C7B
Text Label 9250 4050 0    50   ~ 0
R1
Text Label 9250 3950 0    50   ~ 0
R2
Text Label 9250 3850 0    50   ~ 0
R3
Text Label 9250 3650 0    50   ~ 0
R4
Text Label 9250 3550 0    50   ~ 0
R5
Text Label 9250 3450 0    50   ~ 0
R6
Text Label 9250 1900 0    50   ~ 0
SW_C
Text Label 9250 2000 0    50   ~ 0
SW_1
Text Label 9250 2100 0    50   ~ 0
SW_2
Text Label 9250 2200 0    50   ~ 0
SW_3
Text Label 9250 2300 0    50   ~ 0
SW_4
Text Label 9250 2400 0    50   ~ 0
SW_5
Text Label 9250 2500 0    50   ~ 0
SW_6
Text Label 9250 2600 0    50   ~ 0
SW_7
Text Label 8200 950  0    50   ~ 0
C1R
Text Label 8200 1050 0    50   ~ 0
C1G
Text Label 8200 1150 0    50   ~ 0
C1B
Text Label 8200 1250 0    50   ~ 0
C2R
Text Label 8200 1350 0    50   ~ 0
C2G
Text Label 8200 1450 0    50   ~ 0
C2B
Text Label 8200 1550 0    50   ~ 0
C3R
Text Label 8200 1650 0    50   ~ 0
C3G
Text Label 8200 1750 0    50   ~ 0
C3B
Text Label 8200 1850 0    50   ~ 0
C4R
Text Label 8200 1950 0    50   ~ 0
C4G
Text Label 8200 2050 0    50   ~ 0
C4B
Text Label 8200 2150 0    50   ~ 0
C5R
Text Label 8200 2250 0    50   ~ 0
C5G
Text Label 8200 2350 0    50   ~ 0
C5B
Text Label 8200 2450 0    50   ~ 0
C6R
Text Label 8200 2550 0    50   ~ 0
C6G
Text Label 8200 2650 0    50   ~ 0
C6B
Text Label 8200 2750 0    50   ~ 0
C7R
Text Label 8200 2850 0    50   ~ 0
C7G
Text Label 8200 2950 0    50   ~ 0
C7B
Entry Wire Line
	8400 950  8500 850 
Entry Wire Line
	8400 1050 8500 950 
Entry Wire Line
	8400 1150 8500 1050
Entry Wire Line
	8400 1250 8500 1150
Entry Wire Line
	8400 1350 8500 1250
Entry Wire Line
	8400 1450 8500 1350
Entry Wire Line
	8400 1550 8500 1450
Entry Wire Line
	8400 1650 8500 1550
Entry Wire Line
	8400 1750 8500 1650
Entry Wire Line
	8400 1850 8500 1750
Entry Wire Line
	8400 1950 8500 1850
Entry Wire Line
	8400 2050 8500 1950
Entry Wire Line
	8400 2150 8500 2050
Entry Wire Line
	8400 2250 8500 2150
Entry Wire Line
	8400 2350 8500 2250
Entry Wire Line
	8400 2450 8500 2350
Entry Wire Line
	8400 2550 8500 2450
Entry Wire Line
	8400 2650 8500 2550
Entry Wire Line
	8400 2750 8500 2650
Entry Wire Line
	8400 2850 8500 2750
Entry Wire Line
	8400 2950 8500 2850
Wire Wire Line
	9500 900  9200 900 
Wire Wire Line
	9500 1000 9200 1000
Wire Wire Line
	9500 1100 9200 1100
Wire Wire Line
	9500 1200 9200 1200
Wire Wire Line
	9500 1300 9200 1300
Wire Wire Line
	9500 1400 9200 1400
Wire Wire Line
	9500 1500 9200 1500
Wire Wire Line
	9500 1600 9200 1600
Wire Wire Line
	9500 1700 9200 1700
Wire Wire Line
	9500 1800 9200 1800
Wire Wire Line
	9500 1900 9200 1900
Wire Wire Line
	9500 2000 9200 2000
Wire Wire Line
	9500 2100 9200 2100
Wire Wire Line
	9500 2200 9200 2200
Wire Wire Line
	9500 2300 9200 2300
Wire Wire Line
	9500 2400 9200 2400
Wire Wire Line
	9500 3850 9200 3850
Wire Wire Line
	9500 3950 9200 3950
Wire Wire Line
	9500 4050 9200 4050
Wire Wire Line
	9500 4150 9200 4150
Wire Wire Line
	9500 4250 9200 4250
Wire Wire Line
	9500 4350 9200 4350
Wire Wire Line
	9500 4450 9200 4450
Wire Wire Line
	9500 4550 9200 4550
Wire Wire Line
	9500 3050 9200 3050
Wire Wire Line
	9500 3150 9200 3150
Wire Wire Line
	9500 3250 9200 3250
Wire Wire Line
	9500 3350 9200 3350
Wire Wire Line
	9500 3450 9200 3450
Wire Wire Line
	9500 3550 9200 3550
Wire Wire Line
	9500 3650 9200 3650
Wire Wire Line
	9500 3750 9200 3750
Wire Wire Line
	9500 2500 9200 2500
Wire Wire Line
	9500 2600 9200 2600
Wire Wire Line
	9500 2850 9200 2850
Wire Wire Line
	9500 2950 9200 2950
Entry Wire Line
	9100 800  9200 900 
Entry Wire Line
	9100 900  9200 1000
Entry Wire Line
	9100 1000 9200 1100
Entry Wire Line
	9100 1100 9200 1200
Entry Wire Line
	9100 1200 9200 1300
Entry Wire Line
	9100 1300 9200 1400
Entry Wire Line
	9100 1400 9200 1500
Entry Wire Line
	9100 1500 9200 1600
Entry Wire Line
	9100 1600 9200 1700
Entry Wire Line
	9100 1700 9200 1800
Entry Wire Line
	9100 1800 9200 1900
Entry Wire Line
	9100 1900 9200 2000
Entry Wire Line
	9100 2000 9200 2100
Entry Wire Line
	9100 2100 9200 2200
Entry Wire Line
	9100 2200 9200 2300
Entry Wire Line
	9100 2300 9200 2400
Entry Wire Line
	9100 2400 9200 2500
Entry Wire Line
	9100 2500 9200 2600
Entry Wire Line
	9100 2750 9200 2850
Entry Wire Line
	9100 2850 9200 2950
Entry Wire Line
	9100 2950 9200 3050
Entry Wire Line
	9100 3050 9200 3150
Entry Wire Line
	9100 3150 9200 3250
Entry Wire Line
	9100 3250 9200 3350
Entry Wire Line
	9100 3350 9200 3450
Entry Wire Line
	9100 3450 9200 3550
Entry Wire Line
	9100 3550 9200 3650
Entry Wire Line
	9100 3650 9200 3750
Entry Wire Line
	9100 3750 9200 3850
Entry Wire Line
	9100 3850 9200 3950
Entry Wire Line
	9100 3950 9200 4050
Entry Wire Line
	9100 4050 9200 4150
Entry Wire Line
	9100 4150 9200 4250
Entry Wire Line
	9100 4250 9200 4350
Entry Wire Line
	9100 4350 9200 4450
Entry Wire Line
	9100 4450 9200 4550
Text GLabel 9500 5100 2    50   Input ~ 0
Button1
Text GLabel 9500 5200 2    50   Input ~ 0
Button2
Text GLabel 9500 5300 2    50   Input ~ 0
Button3
Text GLabel 9500 5400 2    50   Input ~ 0
Button4
Text GLabel 9500 5500 2    50   Input ~ 0
Button5
Text GLabel 9500 5600 2    50   Input ~ 0
Button6
Text GLabel 9500 5700 2    50   Input ~ 0
Button7
Text Label 8350 6150 2    50   ~ 0
R1
Text Label 8350 6250 2    50   ~ 0
R2
Text Label 8350 6450 2    50   ~ 0
R4
Text Label 8350 6550 2    50   ~ 0
R5
Text Label 8350 6650 2    50   ~ 0
R6
Entry Wire Line
	8500 6550 8400 6650
Entry Wire Line
	8500 6450 8400 6550
Entry Wire Line
	8500 6350 8400 6450
Entry Wire Line
	8500 6250 8400 6350
Entry Wire Line
	8500 6150 8400 6250
Entry Wire Line
	8500 6050 8400 6150
Text Label 8350 6350 2    50   ~ 0
R3
Text Label 9250 5000 0    50   ~ 0
SW_C
Text Label 9250 5100 0    50   ~ 0
SW_1
Text Label 9250 5200 0    50   ~ 0
SW_2
Text Label 9250 5300 0    50   ~ 0
SW_3
Text Label 9250 5400 0    50   ~ 0
SW_4
Text Label 9250 5500 0    50   ~ 0
SW_5
Text Label 9250 5600 0    50   ~ 0
SW_6
Text Label 9250 5700 0    50   ~ 0
SW_7
Wire Wire Line
	9500 5100 9200 5100
Wire Wire Line
	9500 5200 9200 5200
Wire Wire Line
	9500 5300 9200 5300
Wire Wire Line
	9500 5400 9200 5400
Wire Wire Line
	9500 5500 9200 5500
Wire Wire Line
	9500 5600 9200 5600
Wire Wire Line
	9500 5700 9200 5700
Entry Wire Line
	9100 5100 9200 5200
Entry Wire Line
	9100 5200 9200 5300
Entry Wire Line
	9100 5300 9200 5400
Entry Wire Line
	9100 5400 9200 5500
Entry Wire Line
	9100 5500 9200 5600
Entry Wire Line
	9100 5600 9200 5700
Entry Wire Line
	9100 4900 9200 5000
Entry Wire Line
	9100 5000 9200 5100
Wire Bus Line
	9100 750  8500 750 
$Comp
L power:GND #PWR013
U 1 1 5EC85317
P 9950 5100
F 0 "#PWR013" H 9950 4850 50  0001 C CNN
F 1 "GND" H 9955 4927 50  0000 C CNN
F 2 "" H 9950 5100 50  0001 C CNN
F 3 "" H 9950 5100 50  0001 C CNN
	1    9950 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5E59BFF7
P 2550 2600
F 0 "R7" V 2500 2450 50  0000 C CNN
F 1 "1k" V 2550 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2480 2600 50  0001 C CNN
F 3 "~" H 2550 2600 50  0001 C CNN
	1    2550 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5E594C16
P 2550 2500
F 0 "R6" V 2500 2350 50  0000 C CNN
F 1 "1k" V 2550 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2480 2500 50  0001 C CNN
F 3 "~" H 2550 2500 50  0001 C CNN
	1    2550 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5E58D805
P 2550 2400
F 0 "R5" V 2500 2250 50  0000 C CNN
F 1 "1k" V 2550 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2480 2400 50  0001 C CNN
F 3 "~" H 2550 2400 50  0001 C CNN
	1    2550 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E586490
P 2550 2300
F 0 "R4" V 2500 2150 50  0000 C CNN
F 1 "1k" V 2550 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2480 2300 50  0001 C CNN
F 3 "~" H 2550 2300 50  0001 C CNN
	1    2550 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E57F03C
P 2550 2200
F 0 "R3" V 2500 2050 50  0000 C CNN
F 1 "1k" V 2550 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2480 2200 50  0001 C CNN
F 3 "~" H 2550 2200 50  0001 C CNN
	1    2550 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E57E1D7
P 2550 2100
F 0 "R2" V 2500 1950 50  0000 C CNN
F 1 "1k" V 2550 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2480 2100 50  0001 C CNN
F 3 "~" H 2550 2100 50  0001 C CNN
	1    2550 2100
	0    1    1    0   
$EndComp
Text GLabel 7750 6250 0    50   Input ~ 0
Row2_LEDs
Text GLabel 7750 6150 0    50   Input ~ 0
Row1_LEDs
Text GLabel 7750 6550 0    50   Input ~ 0
Row5_LEDs
Text GLabel 7750 6450 0    50   Input ~ 0
Row4_LEDs
Text GLabel 7750 6650 0    50   Input ~ 0
Row6_LEDs
Text GLabel 7750 6350 0    50   Input ~ 0
Row3_LEDs
NoConn ~ 7450 5650
Wire Wire Line
	8200 6350 8400 6350
Wire Wire Line
	8200 6250 8400 6250
Wire Wire Line
	8200 6150 8400 6150
Wire Wire Line
	8200 6650 8400 6650
Wire Wire Line
	8200 6550 8400 6550
Wire Wire Line
	8200 6450 8400 6450
NoConn ~ 1750 6350
NoConn ~ 1750 6450
NoConn ~ 1350 6750
$Comp
L Device:LED_RCGB D1
U 1 1 5EF55E13
P 7900 5550
F 0 "D1" H 7700 5800 50  0000 C CNN
F 1 "LED_RCGB" H 7600 5450 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB_Wide_Pins" H 7900 5500 50  0001 C CNN
F 3 "~" H 7900 5500 50  0001 C CNN
	1    7900 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7450 5250 7600 5250
Wire Wire Line
	7600 5250 7600 5350
Wire Wire Line
	7600 5350 7700 5350
Wire Wire Line
	7450 5350 7550 5350
Wire Wire Line
	7550 5350 7550 5550
Wire Wire Line
	7550 5550 7700 5550
Wire Wire Line
	7450 5450 7500 5450
Wire Wire Line
	7500 5450 7500 5750
Wire Wire Line
	7500 5750 7700 5750
Text GLabel 7900 6000 0    50   Input ~ 0
Status_LED
Wire Wire Line
	7900 6000 8250 6000
Wire Wire Line
	8250 6000 8250 5550
Wire Wire Line
	8250 5550 8100 5550
Text GLabel 2900 1200 2    50   Input ~ 0
Status_LED
$Comp
L Device:R R1
U 1 1 5EFB8ABF
P 2650 1200
F 0 "R1" V 2600 1050 50  0000 C CNN
F 1 "330" V 2650 1200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2580 1200 50  0001 C CNN
F 3 "~" H 2650 1200 50  0001 C CNN
	1    2650 1200
	0    1    1    0   
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U2
U 1 1 5E3811B2
P 1350 2400
F 0 "U2" H 1850 950 50  0000 R CNN
F 1 "ATmega328P-PU" V 775 1675 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 1350 2400 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 1350 2400 50  0001 C CNN
	1    1350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1200 2500 1200
Wire Wire Line
	2900 1200 2800 1200
Wire Wire Line
	1950 3600 2100 3600
Text GLabel 2100 3600 2    50   Input ~ 0
Button8
$Comp
L Switch:SW_SPST SW1
U 1 1 5F048B63
P 4750 3700
F 0 "SW1" H 4750 3935 50  0000 C CNN
F 1 "SW_SPST" H 4750 3844 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 4750 3700 50  0001 C CNN
F 3 "~" H 4750 3700 50  0001 C CNN
	1    4750 3700
	1    0    0    -1  
$EndComp
Text GLabel 4400 3700 0    50   Input ~ 0
Button8
Wire Wire Line
	4400 3700 4550 3700
$Comp
L power:GND #PWR08
U 1 1 5F07A581
P 5050 3800
F 0 "#PWR08" H 5050 3550 50  0001 C CNN
F 1 "GND" H 5055 3627 50  0000 C CNN
F 2 "" H 5050 3800 50  0001 C CNN
F 3 "" H 5050 3800 50  0001 C CNN
	1    5050 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3700 5050 3700
Wire Wire Line
	5050 3700 5050 3800
$Comp
L Connector:USB_B J6
U 1 1 5F0AC4C3
P 1450 6350
F 0 "J6" H 1507 6817 50  0000 C CNN
F 1 "USB_B" H 1507 6726 50  0000 C CNN
F 2 "Connector_USB:USB_B_OST_USB-B1HSxx_Horizontal" H 1600 6300 50  0001 C CNN
F 3 " ~" H 1600 6300 50  0001 C CNN
	1    1450 6350
	1    0    0    -1  
$EndComp
$Comp
L Connector:AVR-ISP-6 J1
U 1 1 5E975E55
P 4550 1500
F 0 "J1" H 4221 1596 50  0000 R CNN
F 1 "AVR-ISP-6" H 4221 1505 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Horizontal" V 4300 1550 50  0001 C CNN
F 3 " ~" H 3275 950 50  0001 C CNN
	1    4550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1300 4950 1300
Wire Wire Line
	4950 1400 5100 1400
Wire Wire Line
	5100 1500 4950 1500
Wire Wire Line
	4950 1600 5100 1600
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5E99E70A
P 5450 5650
F 0 "Q2" H 5350 5500 50  0000 L CNN
F 1 "2N3904" H 5200 5800 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 5650 5575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5450 5650 50  0001 L CNN
	1    5450 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5E9C3815
P 8050 6650
F 0 "R13" V 8000 6500 50  0000 C CNN
F 1 "100" V 8050 6650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7980 6650 50  0001 C CNN
F 3 "~" H 8050 6650 50  0001 C CNN
	1    8050 6650
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5E9C381B
P 8050 6550
F 0 "R12" V 8000 6400 50  0000 C CNN
F 1 "100" V 8050 6550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7980 6550 50  0001 C CNN
F 3 "~" H 8050 6550 50  0001 C CNN
	1    8050 6550
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5E9C3821
P 8050 6450
F 0 "R11" V 8000 6300 50  0000 C CNN
F 1 "100" V 8050 6450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7980 6450 50  0001 C CNN
F 3 "~" H 8050 6450 50  0001 C CNN
	1    8050 6450
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5E9C3827
P 8050 6350
F 0 "R10" V 8000 6200 50  0000 C CNN
F 1 "100" V 8050 6350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7980 6350 50  0001 C CNN
F 3 "~" H 8050 6350 50  0001 C CNN
	1    8050 6350
	0    1    1    0   
$EndComp
Text GLabel 4150 6050 0    50   Input ~ 0
Row3_LEDs
Text GLabel 5150 6750 0    50   Input ~ 0
Row6_LEDs
Text GLabel 5150 6050 0    50   Input ~ 0
Row4_LEDs
Text GLabel 4150 6750 0    50   Input ~ 0
Row5_LEDs
Text GLabel 5150 5350 0    50   Input ~ 0
Row2_LEDs
Text GLabel 4150 5350 0    50   Input ~ 0
Row1_LEDs
$Comp
L Device:R R9
U 1 1 5E9C382D
P 8050 6250
F 0 "R9" V 8000 6100 50  0000 C CNN
F 1 "100" V 8050 6250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7980 6250 50  0001 C CNN
F 3 "~" H 8050 6250 50  0001 C CNN
	1    8050 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5E9C3833
P 8050 6150
F 0 "R8" V 8000 6000 50  0000 C CNN
F 1 "100" V 8050 6150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7980 6150 50  0001 C CNN
F 3 "~" H 8050 6150 50  0001 C CNN
	1    8050 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 6350 7900 6350
Wire Wire Line
	7750 6250 7900 6250
Wire Wire Line
	7750 6150 7900 6150
Wire Wire Line
	7750 6650 7900 6650
Wire Wire Line
	7750 6550 7900 6550
Wire Wire Line
	7750 6450 7900 6450
Text GLabel 4150 6350 0    50   Input ~ 0
Row3_Base
Text GLabel 5150 6350 0    50   Input ~ 0
Row4_Base
Text GLabel 4150 7050 0    50   Input ~ 0
Row5_Base
Text GLabel 5150 5650 0    50   Input ~ 0
Row2_Base
Text GLabel 4150 5650 0    50   Input ~ 0
Row1_Base
Text GLabel 5150 7050 0    50   Input ~ 0
Row6_Base
Text GLabel 2850 2300 2    50   Input ~ 0
Row3_Base
Text GLabel 2850 2400 2    50   Input ~ 0
Row4_Base
Text GLabel 2850 2500 2    50   Input ~ 0
Row5_Base
Text GLabel 2850 2200 2    50   Input ~ 0
Row2_Base
Text GLabel 2850 2100 2    50   Input ~ 0
Row1_Base
Text GLabel 2850 2600 2    50   Input ~ 0
Row6_Base
$Comp
L Transistor_BJT:2N3904 Q4
U 1 1 5EBA0642
P 5450 6350
F 0 "Q4" H 5350 6200 50  0000 L CNN
F 1 "2N3904" H 5200 6500 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 5650 6275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5450 6350 50  0001 L CNN
	1    5450 6350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5EBB20D6
P 4450 5650
F 0 "Q1" H 4350 5500 50  0000 L CNN
F 1 "2N3904" H 4200 5800 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 4650 5575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4450 5650 50  0001 L CNN
	1    4450 5650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q3
U 1 1 5EBC3C7C
P 4450 6350
F 0 "Q3" H 4350 6200 50  0000 L CNN
F 1 "2N3904" H 4200 6500 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 4650 6275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4450 6350 50  0001 L CNN
	1    4450 6350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q6
U 1 1 5EBD775D
P 5450 7050
F 0 "Q6" H 5350 6900 50  0000 L CNN
F 1 "2N3904" H 5200 7200 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 5650 6975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5450 7050 50  0001 L CNN
	1    5450 7050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q5
U 1 1 5EBD7763
P 4450 7050
F 0 "Q5" H 4350 6900 50  0000 L CNN
F 1 "2N3904" H 4200 7200 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 4650 6975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4450 7050 50  0001 L CNN
	1    4450 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 7050 5250 7050
Wire Wire Line
	5150 6750 5550 6750
Wire Wire Line
	5550 6750 5550 6850
Wire Wire Line
	5150 6050 5550 6050
Wire Wire Line
	5550 6050 5550 6150
Wire Wire Line
	5150 5350 5550 5350
Wire Wire Line
	5550 5350 5550 5450
Wire Wire Line
	4150 5350 4550 5350
Wire Wire Line
	4550 5350 4550 5450
Wire Wire Line
	4150 6050 4550 6050
Wire Wire Line
	4550 6050 4550 6150
Wire Wire Line
	4150 6750 4550 6750
Wire Wire Line
	4550 6750 4550 6850
Wire Wire Line
	5150 6350 5250 6350
Wire Wire Line
	5150 5650 5250 5650
Wire Wire Line
	4150 5650 4250 5650
Wire Wire Line
	4150 6350 4250 6350
Wire Wire Line
	4150 7050 4250 7050
Wire Wire Line
	4550 5850 4550 5950
Wire Wire Line
	4550 5950 5550 5950
Wire Wire Line
	5550 5950 5550 5850
Wire Wire Line
	4550 6550 4550 6650
Wire Wire Line
	4550 6650 5550 6650
Wire Wire Line
	5550 6650 5550 6550
Wire Wire Line
	4550 7250 4550 7350
Wire Wire Line
	4550 7350 5550 7350
Wire Wire Line
	5550 7350 5550 7250
Wire Wire Line
	5550 5950 5750 5950
Wire Wire Line
	5750 5950 5750 6650
Connection ~ 5550 5950
Wire Wire Line
	5550 7350 5750 7350
Connection ~ 5550 7350
Connection ~ 5750 7350
Wire Wire Line
	5750 7350 5750 7500
Wire Wire Line
	5550 6650 5750 6650
Connection ~ 5550 6650
Connection ~ 5750 6650
Wire Wire Line
	5750 6650 5750 7350
$Comp
L power:GND #PWR018
U 1 1 5EE69291
P 5750 7500
F 0 "#PWR018" H 5750 7250 50  0001 C CNN
F 1 "GND" H 5755 7327 50  0000 C CNN
F 2 "" H 5750 7500 50  0001 C CNN
F 3 "" H 5750 7500 50  0001 C CNN
	1    5750 7500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5EF19855
P 4300 4350
F 0 "H1" H 4400 4396 50  0000 L CNN
F 1 "MountingHole" H 4400 4305 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 4300 4350 50  0001 C CNN
F 3 "~" H 4300 4350 50  0001 C CNN
	1    4300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 5100 9950 5000
Wire Wire Line
	9200 5000 9950 5000
Wire Bus Line
	8500 750  8500 6550
Wire Bus Line
	9100 750  9100 5600
$EndSCHEMATC