EESchema Schematic File Version 5
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Connect 4 Board"
Date "2019-04-17"
Rev "V1"
Comp ""
Comment1 ""
Comment2 "Jamal Bouajjaj"
Comment3 ""
Comment4 ""
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5CBB2040
P 1000 7025
F 0 "H4" H 950 7225 50  0000 L CNN
F 1 "3.2mm Mounting Hole" V 875 6825 30  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1000 7025 50  0001 C CNN
F 3 "~" H 1000 7025 50  0001 C CNN
	1    1000 7025
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5CBB443E
P 1000 6775
F 0 "H3" H 950 6975 50  0000 L CNN
F 1 "3.2mm Mounting Hole" V 875 6575 30  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1000 6775 50  0001 C CNN
F 3 "~" H 1000 6775 50  0001 C CNN
	1    1000 6775
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5CBB4728
P 1000 6525
F 0 "H2" H 950 6725 50  0000 L CNN
F 1 "3.2mm Mounting Hole" V 875 6325 30  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1000 6525 50  0001 C CNN
F 3 "~" H 1000 6525 50  0001 C CNN
	1    1000 6525
	0    1    1    0   
$EndComp
Wire Wire Line
	750  6275 750  6525
Wire Wire Line
	750  6525 900  6525
Wire Wire Line
	900  6275 750  6275
Connection ~ 750  6525
Connection ~ 750  6775
Wire Wire Line
	750  6775 750  7025
Wire Wire Line
	750  7025 900  7025
Wire Wire Line
	750  6775 900  6775
Wire Wire Line
	750  6525 750  6775
Connection ~ 750  7025
Wire Wire Line
	750  7025 750  7075
$Comp
L power:GND #PWR014
U 1 1 5CC2DC12
P 750 7075
F 0 "#PWR014" H 750 6825 50  0001 C CNN
F 1 "GND" H 755 6902 50  0000 C CNN
F 2 "" H 750 7075 50  0001 C CNN
F 3 "" H 750 7075 50  0001 C CNN
	1    750  7075
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5CBB4896
P 1000 6275
F 0 "H1" H 950 6475 50  0000 L CNN
F 1 "3.2mm Mounting Hole" V 875 6075 30  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1000 6275 50  0001 C CNN
F 3 "~" H 1000 6275 50  0001 C CNN
	1    1000 6275
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 5200 875  5200
Wire Wire Line
	1700 5200 1450 5200
Wire Wire Line
	1050 5100 875  5100
Wire Wire Line
	1700 5100 1450 5100
Wire Wire Line
	1700 4700 1450 4700
Wire Wire Line
	1050 5000 875  5000
Wire Wire Line
	1700 5000 1450 5000
Wire Wire Line
	1050 4900 875  4900
Wire Wire Line
	1700 4900 1450 4900
Wire Wire Line
	1050 4800 875  4800
Wire Wire Line
	1700 4800 1450 4800
$Comp
L Switch:SW_Push SW3
U 1 1 5D73F793
P 1250 4700
F 0 "SW3" H 1425 4750 50  0000 C CNN
F 1 "SW_Push" H 1250 4894 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1250 4900 50  0001 C CNN
F 3 "" H 1250 4900 50  0001 C CNN
	1    1250 4700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 5D742808
P 1250 5000
F 0 "SW6" H 1425 5050 50  0000 C CNN
F 1 "SW_Push" H 1250 5194 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1250 5200 50  0001 C CNN
F 3 "" H 1250 5200 50  0001 C CNN
	1    1250 5000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5D742075
P 1250 4900
F 0 "SW5" H 1425 4950 50  0000 C CNN
F 1 "SW_Push" H 1250 5094 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1250 5100 50  0001 C CNN
F 3 "" H 1250 5100 50  0001 C CNN
	1    1250 4900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW7
U 1 1 5D742D27
P 1250 5100
F 0 "SW7" H 1425 5150 50  0000 C CNN
F 1 "SW_Push" H 1250 5294 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1250 5300 50  0001 C CNN
F 3 "" H 1250 5300 50  0001 C CNN
	1    1250 5100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5D7408A4
P 1250 4800
F 0 "SW4" H 1425 4850 50  0000 C CNN
F 1 "SW_Push" H 1250 4994 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1250 5000 50  0001 C CNN
F 3 "" H 1250 5000 50  0001 C CNN
	1    1250 4800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW8
U 1 1 5D74336F
P 1250 5200
F 0 "SW8" H 1425 5250 50  0000 C CNN
F 1 "SW_Push" H 1250 5394 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1250 5400 50  0001 C CNN
F 3 "" H 1250 5400 50  0001 C CNN
	1    1250 5200
	1    0    0    -1  
$EndComp
Entry Wire Line
	7200 1850 7300 1950
Entry Wire Line
	8850 1850 8950 1950
Entry Wire Line
	9250 1850 9350 1950
Entry Wire Line
	10075 1850 10175 1950
Entry Wire Line
	8425 1850 8525 1950
Entry Wire Line
	10500 1850 10600 1950
Entry Wire Line
	10700 1850 10800 1950
Entry Wire Line
	8225 1850 8325 1950
Entry Wire Line
	8025 1850 8125 1950
Entry Wire Line
	10900 1850 11000 1950
Entry Wire Line
	9875 1850 9975 1950
Entry Wire Line
	9050 1850 9150 1950
Entry Wire Line
	7400 1850 7500 1950
Entry Wire Line
	9675 1850 9775 1950
Entry Wire Line
	7600 1850 7700 1950
Entry Wire Line
	6775 1850 6875 1950
Wire Wire Line
	11000 2350 11000 1950
Wire Wire Line
	8325 1950 8325 2350
Wire Wire Line
	9150 1950 9150 2350
Wire Wire Line
	7300 2350 7300 1950
Wire Wire Line
	10600 2350 10600 1950
Wire Wire Line
	9975 1950 9975 2350
Wire Wire Line
	8950 2350 8950 1950
Wire Wire Line
	9350 2350 9350 1950
Wire Wire Line
	8525 2350 8525 1950
Wire Wire Line
	5850 1950 5850 2350
Wire Wire Line
	7500 1950 7500 2350
Wire Wire Line
	8125 2350 8125 1950
Wire Wire Line
	6675 1950 6675 2350
Wire Wire Line
	9775 2350 9775 1950
Wire Wire Line
	10800 1950 10800 2350
Wire Wire Line
	10175 2350 10175 1950
Wire Wire Line
	6475 2350 6475 1950
Wire Wire Line
	7700 2350 7700 1950
Wire Wire Line
	5650 2350 5650 1950
Wire Wire Line
	6875 2350 6875 1950
Wire Wire Line
	6050 2350 6050 1950
Text Label 3200 4600 0    50   ~ 0
Row6
Text Label 3950 3800 2    50   ~ 0
Row6
Text Label 3950 3300 2    50   ~ 0
Row1
Text Label 3950 3400 2    50   ~ 0
Row2
Text Label 3200 4800 0    50   ~ 0
Row4
Text Label 3950 3600 2    50   ~ 0
Row4
Text Label 3950 3700 2    50   ~ 0
Row5
Text Label 3950 3500 2    50   ~ 0
Row3
Text Label 3200 4700 0    50   ~ 0
Row5
Text Label 3200 3200 0    50   ~ 0
Col2-B
Text Label 3225 5500 0    50   ~ 0
Col5-R
Text Label 3200 5100 0    50   ~ 0
Row1
Text Label 3200 4500 0    50   ~ 0
Col4-R
Text Label 3200 3600 0    50   ~ 0
Col7-R
Text Label 3225 5400 0    50   ~ 0
Col4-B
Text Label 3200 4400 0    50   ~ 0
Col3-B
Text Label 3200 3100 0    50   ~ 0
Col2-G
Text Label 3200 3800 0    50   ~ 0
Col7-B
Text Label 3200 3000 0    50   ~ 0
Col2-R
Text Label 3200 2900 0    50   ~ 0
Col1-B
Text Label 3225 5600 0    50   ~ 0
Col5-G
Text Label 3200 3700 0    50   ~ 0
Col7-G
Text Label 3200 3300 0    50   ~ 0
Col3-R
Text Label 3200 3400 0    50   ~ 0
Col6-G
Text Label 3200 5800 0    50   ~ 0
Col6-R
Text Label 3200 4300 0    50   ~ 0
Col3-G
Text Label 3200 2800 0    50   ~ 0
Col1-G
Text Label 3200 2700 0    50   ~ 0
Col1-R
Text Label 3200 4900 0    50   ~ 0
Row3
Text Label 3200 5000 0    50   ~ 0
Row2
Wire Wire Line
	5275 3400 5275 3900
Wire Wire Line
	5425 5200 5850 5200
Wire Wire Line
	5225 3500 5225 4500
Wire Wire Line
	4850 3500 5225 3500
Wire Wire Line
	5125 3700 5125 5700
Wire Wire Line
	4850 3700 5125 3700
Wire Wire Line
	4850 3600 5175 3600
Wire Wire Line
	4850 3400 5275 3400
Wire Wire Line
	5175 3600 5175 5100
Wire Wire Line
	3700 3700 4050 3700
Wire Wire Line
	4450 4150 4450 4100
Wire Wire Line
	2500 2300 2600 2300
Wire Wire Line
	2700 2200 2700 2300
Wire Wire Line
	3500 2800 3100 2800
Wire Wire Line
	2600 2300 2700 2300
Wire Wire Line
	2400 2300 2500 2300
Wire Wire Line
	5075 6300 5075 3800
Wire Wire Line
	2600 2400 2600 2300
Wire Wire Line
	3500 3400 3100 3400
Wire Wire Line
	3500 3700 3100 3700
Wire Wire Line
	2500 2400 2500 2300
Wire Wire Line
	2300 2400 2300 2300
Wire Wire Line
	3500 4300 3100 4300
Wire Wire Line
	3700 3600 4050 3600
Wire Wire Line
	2400 2400 2400 2300
Wire Wire Line
	3500 5100 3100 5100
Wire Wire Line
	3500 4600 3100 4600
Wire Wire Line
	3500 2700 3100 2700
Wire Wire Line
	3500 4700 3100 4700
Wire Wire Line
	4950 2950 4950 3100
Wire Wire Line
	4950 3100 4850 3100
Wire Wire Line
	3500 4800 3100 4800
Wire Wire Line
	3700 3300 4050 3300
Wire Wire Line
	3700 3800 4050 3800
Wire Wire Line
	3500 4900 3100 4900
Wire Wire Line
	3500 3200 3100 3200
Wire Wire Line
	3500 3800 3100 3800
Wire Wire Line
	3500 5800 3100 5800
Wire Wire Line
	3500 4400 3100 4400
Wire Wire Line
	3500 4500 3100 4500
Wire Wire Line
	5075 3800 4850 3800
Wire Wire Line
	3500 3300 3100 3300
Wire Wire Line
	2700 2300 2700 2400
Wire Wire Line
	2300 2300 2400 2300
Wire Wire Line
	3700 3500 4050 3500
Wire Wire Line
	3500 5000 3100 5000
Wire Wire Line
	3500 3600 3100 3600
Wire Wire Line
	3500 3500 3100 3500
Wire Wire Line
	3500 5300 3100 5300
Wire Wire Line
	3500 2900 3100 2900
Wire Wire Line
	3500 3100 3100 3100
Wire Wire Line
	3700 3400 4050 3400
Wire Wire Line
	3500 3000 3100 3000
Connection ~ 2400 2300
Connection ~ 2700 2300
NoConn ~ 4050 3900
Connection ~ 2500 2300
Connection ~ 2600 2300
NoConn ~ 4850 3900
Connection ~ 5650 2750
Wire Wire Line
	5650 5750 5375 5750
Wire Wire Line
	5475 4650 6050 4650
Wire Wire Line
	5650 4100 5650 3950
Wire Wire Line
	5475 4650 5475 5250
Wire Wire Line
	5475 4050 5475 4650
Wire Wire Line
	6050 5850 6050 5900
Wire Wire Line
	5425 4600 5425 5200
Wire Wire Line
	5475 5850 6050 5850
Wire Wire Line
	5650 2750 5650 2900
Wire Wire Line
	6050 3450 6050 3500
Wire Wire Line
	5475 5250 6050 5250
Wire Wire Line
	6050 4650 6050 4700
Wire Wire Line
	5850 2900 5850 2800
Wire Wire Line
	6050 2850 5475 2850
Wire Wire Line
	5650 3500 5650 3350
Wire Wire Line
	5850 2800 5425 2800
Wire Wire Line
	5850 4000 5850 4100
Wire Wire Line
	5650 4700 5650 4550
Wire Wire Line
	5425 3400 5425 4000
Wire Wire Line
	5650 3350 5375 3350
Wire Wire Line
	5425 4000 5850 4000
Wire Wire Line
	5475 2850 5475 3450
Wire Wire Line
	5850 5200 5850 5300
Wire Wire Line
	5475 3450 6050 3450
Wire Wire Line
	5425 2800 5425 3400
Wire Wire Line
	5425 4000 5425 4600
Wire Wire Line
	5425 4600 5850 4600
Wire Wire Line
	5650 3950 5375 3950
Wire Wire Line
	5650 5300 5650 5150
Wire Wire Line
	5650 2650 5650 2750
Wire Wire Line
	5375 2750 5650 2750
Wire Wire Line
	5375 3350 5375 2750
Wire Wire Line
	6050 2650 6050 2850
Wire Wire Line
	5375 5150 5375 4550
Wire Wire Line
	5475 3450 5475 4050
Wire Wire Line
	5475 5250 5475 5850
Wire Wire Line
	6050 5250 6050 5300
Wire Wire Line
	5850 2800 5850 2650
Wire Wire Line
	5375 3950 5375 3350
Wire Wire Line
	5850 4600 5850 4700
Wire Wire Line
	5650 4550 5375 4550
Wire Wire Line
	6050 4050 6050 4100
Wire Wire Line
	5475 4050 6050 4050
Wire Wire Line
	6050 2850 6050 2900
Wire Wire Line
	5425 3400 5850 3400
Wire Wire Line
	5650 5900 5650 5750
Wire Wire Line
	5425 5200 5425 5800
Wire Wire Line
	5850 5800 5850 5900
Wire Wire Line
	5425 5800 5850 5800
Wire Wire Line
	6875 5250 6875 5300
Wire Wire Line
	6475 3950 6200 3950
Wire Wire Line
	7500 2900 7500 2800
Wire Wire Line
	6675 4000 6675 4100
Wire Wire Line
	6475 4700 6475 4550
Wire Wire Line
	6200 3350 6200 2750
Wire Wire Line
	6475 5300 6475 5150
Wire Wire Line
	6475 4550 6200 4550
Wire Wire Line
	6200 5750 6200 5150
Wire Wire Line
	6475 4100 6475 3950
Wire Wire Line
	6875 2850 6875 2900
Wire Wire Line
	6200 5150 6200 4550
Wire Wire Line
	6300 4650 6875 4650
Wire Wire Line
	6250 2800 6250 3400
Wire Wire Line
	6675 5200 6675 5300
Wire Wire Line
	6250 4600 6250 5200
Wire Wire Line
	6475 5150 6200 5150
Wire Wire Line
	7500 4000 7500 4100
Wire Wire Line
	7075 5200 7500 5200
Wire Wire Line
	6475 5900 6475 5750
Wire Wire Line
	5375 4550 5375 3950
Wire Wire Line
	6250 3400 6675 3400
Wire Wire Line
	5375 5750 5375 5150
Wire Wire Line
	5850 3400 5850 3500
Wire Wire Line
	6250 5200 6250 5800
Wire Wire Line
	6250 5800 6675 5800
Wire Wire Line
	6250 4600 6675 4600
Wire Wire Line
	5650 5150 5375 5150
Wire Wire Line
	6250 5200 6675 5200
Wire Wire Line
	6250 3400 6250 4000
Wire Wire Line
	6675 2800 6675 2650
Wire Wire Line
	6675 2900 6675 2800
Wire Wire Line
	6200 2750 6475 2750
Wire Wire Line
	6875 5850 6875 5900
Wire Wire Line
	6675 3400 6675 3500
Wire Wire Line
	7700 2850 7125 2850
Wire Wire Line
	6475 3350 6200 3350
Wire Wire Line
	6475 2750 6475 2900
Wire Wire Line
	7075 3400 7075 4000
Wire Wire Line
	6875 4050 6875 4100
Wire Wire Line
	6200 4550 6200 3950
Wire Wire Line
	6675 5800 6675 5900
Wire Wire Line
	6475 2650 6475 2750
Wire Wire Line
	6300 3450 6875 3450
Wire Wire Line
	6475 5750 6200 5750
Wire Wire Line
	6300 3450 6300 4050
Wire Wire Line
	6300 4650 6300 5250
Wire Wire Line
	6300 5250 6875 5250
Wire Wire Line
	6675 2800 6250 2800
Wire Wire Line
	6675 4600 6675 4700
Wire Wire Line
	6300 5850 6875 5850
Wire Wire Line
	7300 3500 7300 3350
Wire Wire Line
	6250 4000 6250 4600
Wire Wire Line
	6300 4050 6300 4650
Wire Wire Line
	6875 4650 6875 4700
Wire Wire Line
	6875 3450 6875 3500
Wire Wire Line
	6300 2850 6300 3450
Wire Wire Line
	6875 2850 6300 2850
Wire Wire Line
	6300 4050 6875 4050
Wire Wire Line
	6250 4000 6675 4000
Wire Wire Line
	6300 5250 6300 5850
Wire Wire Line
	6875 2650 6875 2850
Wire Wire Line
	6475 3500 6475 3350
Wire Wire Line
	6200 3950 6200 3350
Wire Wire Line
	7300 4550 7025 4550
Wire Wire Line
	8125 3500 8125 3350
Wire Wire Line
	8125 3350 7850 3350
Wire Wire Line
	7300 5900 7300 5750
Wire Wire Line
	7300 4700 7300 4550
Wire Wire Line
	7700 5250 7700 5300
Wire Wire Line
	7700 2850 7700 2900
Wire Wire Line
	7900 3400 7900 4000
Wire Wire Line
	7300 4100 7300 3950
Wire Wire Line
	7125 2850 7125 3450
Wire Wire Line
	7075 5200 7075 5800
Wire Wire Line
	8125 5300 8125 5150
Wire Wire Line
	7700 4650 7700 4700
Wire Wire Line
	7300 3350 7025 3350
Wire Wire Line
	7300 5300 7300 5150
Wire Wire Line
	7500 5800 7500 5900
Wire Wire Line
	7900 5200 8325 5200
Wire Wire Line
	7500 5200 7500 5300
Wire Wire Line
	7300 5750 7025 5750
Wire Wire Line
	7300 2650 7300 2750
Wire Wire Line
	7025 5750 7025 5150
Wire Wire Line
	7125 4650 7700 4650
Wire Wire Line
	7125 4050 7700 4050
Wire Wire Line
	7025 2750 7300 2750
Wire Wire Line
	7700 2650 7700 2850
Wire Wire Line
	7025 5150 7025 4550
Wire Wire Line
	7075 5800 7500 5800
Wire Wire Line
	7500 3400 7500 3500
Wire Wire Line
	7125 5250 7125 5850
Wire Wire Line
	7025 3350 7025 2750
Wire Wire Line
	7500 2800 7500 2650
Wire Wire Line
	7125 5250 7700 5250
Wire Wire Line
	7500 2800 7075 2800
Wire Wire Line
	7075 4600 7075 5200
Wire Wire Line
	7025 3950 7025 3350
Wire Wire Line
	7700 4050 7700 4100
Wire Wire Line
	7300 3950 7025 3950
Wire Wire Line
	8525 2850 7950 2850
Wire Wire Line
	7700 5850 7700 5900
Wire Wire Line
	7125 3450 7700 3450
Wire Wire Line
	7500 4600 7500 4700
Wire Wire Line
	7025 4550 7025 3950
Wire Wire Line
	7125 5850 7700 5850
Wire Wire Line
	7075 4000 7075 4600
Wire Wire Line
	7300 5150 7025 5150
Wire Wire Line
	7300 2750 7300 2900
Wire Wire Line
	7125 4050 7125 4650
Wire Wire Line
	8325 2900 8325 2800
Wire Wire Line
	7700 3450 7700 3500
Wire Wire Line
	7075 3400 7500 3400
Wire Wire Line
	7125 4650 7125 5250
Wire Wire Line
	7125 3450 7125 4050
Wire Wire Line
	8325 4000 8325 4100
Wire Wire Line
	7075 4000 7500 4000
Wire Wire Line
	7075 2800 7075 3400
Wire Wire Line
	7075 4600 7500 4600
Wire Wire Line
	8125 4100 8125 3950
Wire Wire Line
	7850 5750 7850 5150
Wire Wire Line
	8950 5300 8950 5150
Wire Wire Line
	8325 4600 8325 4700
Wire Wire Line
	7950 5850 8525 5850
Wire Wire Line
	8525 2850 8525 2900
Wire Wire Line
	8125 5150 7850 5150
Wire Wire Line
	8125 2750 8125 2900
Wire Wire Line
	8125 5900 8125 5750
Wire Wire Line
	7900 3400 8325 3400
Wire Wire Line
	8325 3400 8325 3500
Wire Wire Line
	7950 3450 8525 3450
Wire Wire Line
	8525 4650 8525 4700
Wire Wire Line
	9350 2850 8775 2850
Wire Wire Line
	7950 4650 7950 5250
Wire Wire Line
	7900 4000 7900 4600
Wire Wire Line
	8325 5800 8325 5900
Wire Wire Line
	9150 5800 9150 5900
Wire Wire Line
	8125 5750 7850 5750
Wire Wire Line
	7950 4050 8525 4050
Wire Wire Line
	7900 2800 7900 3400
Wire Wire Line
	7950 4050 7950 4650
Wire Wire Line
	8525 5250 8525 5300
Wire Wire Line
	8950 3500 8950 3350
Wire Wire Line
	7900 4000 8325 4000
Wire Wire Line
	8325 5200 8325 5300
Wire Wire Line
	7950 2850 7950 3450
Wire Wire Line
	7850 4550 7850 3950
Wire Wire Line
	8525 5850 8525 5900
Wire Wire Line
	7950 5250 8525 5250
Wire Wire Line
	9150 2900 9150 2800
Wire Wire Line
	8725 3400 8725 4000
Wire Wire Line
	8950 3350 8675 3350
Wire Wire Line
	8125 2650 8125 2750
Wire Wire Line
	7950 4650 8525 4650
Wire Wire Line
	7950 5250 7950 5850
Wire Wire Line
	7900 4600 7900 5200
Wire Wire Line
	8525 4050 8525 4100
Wire Wire Line
	7850 3950 7850 3350
Wire Wire Line
	8950 5750 8675 5750
Wire Wire Line
	7850 5150 7850 4550
Wire Wire Line
	8525 3450 8525 3500
Wire Wire Line
	7850 3350 7850 2750
Wire Wire Line
	9150 4000 9150 4100
Wire Wire Line
	8125 4550 7850 4550
Wire Wire Line
	7950 3450 7950 4050
Wire Wire Line
	8525 2650 8525 2850
Wire Wire Line
	8325 2800 8325 2650
Wire Wire Line
	8725 5200 9150 5200
Wire Wire Line
	7900 5800 8325 5800
Wire Wire Line
	8325 2800 7900 2800
Wire Wire Line
	7900 5200 7900 5800
Wire Wire Line
	8125 4700 8125 4550
Wire Wire Line
	8125 3950 7850 3950
Wire Wire Line
	7850 2750 8125 2750
Wire Wire Line
	7900 4600 8325 4600
Connection ~ 5375 4550
Connection ~ 5475 3450
Connection ~ 6050 2850
Connection ~ 7900 5200
Connection ~ 7075 3400
Connection ~ 6675 2800
Connection ~ 7075 4600
Connection ~ 8325 2800
Connection ~ 7950 3450
Connection ~ 8725 5200
Connection ~ 7850 4550
Connection ~ 7950 4050
Connection ~ 8675 4550
Connection ~ 5375 5150
Connection ~ 6200 3950
Connection ~ 8675 5150
Connection ~ 8725 4000
Connection ~ 6250 3400
Connection ~ 5425 4600
Connection ~ 7025 4550
Connection ~ 5475 4650
Connection ~ 5425 5200
Connection ~ 5425 4000
Connection ~ 5375 3350
Connection ~ 5850 2800
Connection ~ 6875 2850
Connection ~ 6250 5200
Connection ~ 7850 5150
Connection ~ 7300 2750
Connection ~ 7900 4600
Connection ~ 9350 2850
Connection ~ 7700 2850
Connection ~ 7900 3400
Connection ~ 7950 5250
Connection ~ 8125 2750
Connection ~ 7850 3950
Connection ~ 8775 3450
Connection ~ 7850 3350
Connection ~ 6300 3450
Connection ~ 6250 4000
Connection ~ 7500 2800
Connection ~ 5475 4050
Connection ~ 6300 5250
Connection ~ 6200 4550
Connection ~ 6200 5150
Connection ~ 7125 4650
Connection ~ 8950 2750
Connection ~ 6200 3350
Connection ~ 7025 3350
Connection ~ 7950 4650
Connection ~ 6250 4600
Connection ~ 7075 4000
Connection ~ 5375 3950
Connection ~ 5425 3400
Connection ~ 7125 4050
Connection ~ 7125 3450
Connection ~ 6300 4650
Connection ~ 7900 4000
Connection ~ 5475 5250
Connection ~ 7025 5150
Connection ~ 8775 4650
Connection ~ 6475 2750
Connection ~ 6300 4050
Connection ~ 7125 5250
Connection ~ 8525 2850
Connection ~ 7025 3950
Connection ~ 7075 5200
Wire Wire Line
	8775 4650 8775 5250
Wire Wire Line
	9975 2900 9975 2800
Wire Wire Line
	9150 2800 8725 2800
Wire Wire Line
	8725 4600 9150 4600
Wire Wire Line
	8950 4100 8950 3950
Wire Wire Line
	8950 5900 8950 5750
Wire Wire Line
	8775 2850 8775 3450
Wire Wire Line
	9350 2650 9350 2850
Wire Wire Line
	8950 5150 8675 5150
Wire Wire Line
	9775 5750 9500 5750
Wire Wire Line
	9775 3350 9500 3350
Wire Wire Line
	9350 4050 9350 4100
Wire Wire Line
	8950 2650 8950 2750
Wire Wire Line
	8775 4650 9350 4650
Wire Wire Line
	9775 3500 9775 3350
Wire Wire Line
	8775 4050 9350 4050
Wire Wire Line
	8725 4000 9150 4000
Wire Wire Line
	8775 3450 9350 3450
Wire Wire Line
	9150 4600 9150 4700
Wire Wire Line
	8675 3350 8675 2750
Wire Wire Line
	9600 4650 10175 4650
Wire Wire Line
	9550 3400 9550 4000
Wire Wire Line
	8775 5250 9350 5250
Wire Wire Line
	8725 4600 8725 5200
Wire Wire Line
	9150 5200 9150 5300
Wire Wire Line
	9150 3400 9150 3500
Wire Wire Line
	8725 5800 9150 5800
Wire Wire Line
	9550 5200 9975 5200
Wire Wire Line
	8725 2800 8725 3400
Wire Wire Line
	8675 2750 8950 2750
Wire Wire Line
	8950 4700 8950 4550
Wire Wire Line
	8675 4550 8675 3950
Wire Wire Line
	9150 2800 9150 2650
Wire Wire Line
	8950 2750 8950 2900
Wire Wire Line
	9350 5850 9350 5900
Wire Wire Line
	8675 5150 8675 4550
Wire Wire Line
	8775 5250 8775 5850
Wire Wire Line
	9350 2850 9350 2900
Wire Wire Line
	9350 4650 9350 4700
Wire Wire Line
	9775 5300 9775 5150
Wire Wire Line
	8675 5750 8675 5150
Wire Wire Line
	9975 5800 9975 5900
Wire Wire Line
	9975 4000 9975 4100
Wire Wire Line
	9350 3450 9350 3500
Wire Wire Line
	8725 4000 8725 4600
Wire Wire Line
	8775 4050 8775 4650
Wire Wire Line
	8675 3950 8675 3350
Wire Wire Line
	8950 4550 8675 4550
Wire Wire Line
	8775 3450 8775 4050
Wire Wire Line
	10175 2850 9600 2850
Wire Wire Line
	8775 5850 9350 5850
Wire Wire Line
	8725 3400 9150 3400
Wire Wire Line
	8725 5200 8725 5800
Wire Wire Line
	8950 3950 8675 3950
Wire Wire Line
	9775 2650 9775 2750
Wire Wire Line
	9350 5250 9350 5300
Wire Wire Line
	9775 5150 9500 5150
Wire Wire Line
	10175 5850 10175 5900
Wire Wire Line
	10175 3450 10175 3500
Wire Wire Line
	9775 2750 9775 2900
Wire Wire Line
	9600 2850 9600 3450
Wire Wire Line
	9550 5200 9550 5800
Wire Wire Line
	9550 4000 9550 4600
Wire Wire Line
	9600 4050 10175 4050
Wire Wire Line
	9775 4100 9775 3950
Wire Wire Line
	9550 4600 9975 4600
Wire Wire Line
	9500 5150 9500 4550
Wire Wire Line
	9775 3950 9500 3950
Wire Wire Line
	9600 4050 9600 4650
Wire Wire Line
	9550 5800 9975 5800
Wire Wire Line
	9600 5250 10175 5250
Wire Wire Line
	9550 2800 9550 3400
Wire Wire Line
	9975 2800 9550 2800
Wire Wire Line
	9975 5200 9975 5300
Wire Wire Line
	9550 4600 9550 5200
Wire Wire Line
	9975 2800 9975 2650
Wire Wire Line
	9500 3350 9500 2750
Wire Wire Line
	10175 2650 10175 2850
Wire Wire Line
	9600 3450 9600 4050
Wire Wire Line
	10175 5250 10175 5300
Wire Wire Line
	9500 4550 9500 3950
Wire Wire Line
	9975 3400 9975 3500
Wire Wire Line
	9975 4600 9975 4700
Wire Wire Line
	9600 5250 9600 5850
Wire Wire Line
	9550 3400 9975 3400
Wire Wire Line
	9775 4700 9775 4550
Wire Wire Line
	9550 4000 9975 4000
Wire Wire Line
	9600 3450 10175 3450
Wire Wire Line
	9500 2750 9775 2750
Wire Wire Line
	9775 4550 9500 4550
Wire Wire Line
	9600 5850 10175 5850
Wire Wire Line
	9775 5900 9775 5750
Wire Wire Line
	10175 4650 10175 4700
Wire Wire Line
	9500 5750 9500 5150
Wire Wire Line
	10175 4050 10175 4100
Wire Wire Line
	9600 4650 9600 5250
Wire Wire Line
	10175 2850 10175 2900
Wire Wire Line
	9500 3950 9500 3350
Wire Wire Line
	10375 4600 10375 5200
Wire Wire Line
	10375 5200 10375 5800
Wire Wire Line
	10800 5800 10800 5900
Wire Wire Line
	10425 5250 11000 5250
Wire Wire Line
	10325 5150 10325 4550
Wire Wire Line
	10375 5800 10800 5800
Wire Wire Line
	10425 5850 11000 5850
Wire Wire Line
	11000 5850 11000 5900
Wire Wire Line
	11000 5250 11000 5300
Wire Wire Line
	10425 4650 10425 5250
Wire Wire Line
	10600 5300 10600 5150
Wire Wire Line
	10375 5200 10800 5200
Wire Wire Line
	10425 5250 10425 5850
Wire Wire Line
	10600 5750 10325 5750
Wire Wire Line
	10325 5750 10325 5150
Wire Wire Line
	10600 5900 10600 5750
Wire Wire Line
	11000 4050 11000 4100
Wire Wire Line
	10600 3500 10600 3350
Wire Wire Line
	10800 4000 10800 4100
Wire Wire Line
	10325 2750 10600 2750
Wire Wire Line
	10375 4000 10375 4600
Wire Wire Line
	10600 2750 10600 2900
Wire Wire Line
	10325 3950 10325 3350
Wire Wire Line
	10800 3400 10800 3500
Wire Wire Line
	10375 3400 10800 3400
Wire Wire Line
	10600 5150 10325 5150
Wire Wire Line
	10375 4600 10800 4600
Wire Wire Line
	10425 4650 11000 4650
Wire Wire Line
	10325 4550 10325 3950
Wire Wire Line
	10600 4700 10600 4550
Wire Wire Line
	10800 2800 10800 2650
Wire Wire Line
	10425 4050 10425 4650
Wire Wire Line
	10600 4550 10325 4550
Wire Wire Line
	10325 3350 10325 2750
Wire Wire Line
	10425 3450 10425 4050
Wire Wire Line
	10375 3400 10375 4000
Wire Wire Line
	10425 4050 11000 4050
Wire Wire Line
	10600 3950 10325 3950
Wire Wire Line
	10600 4100 10600 3950
Wire Wire Line
	10375 4000 10800 4000
Wire Wire Line
	10600 3350 10325 3350
Wire Wire Line
	10800 5200 10800 5300
Wire Wire Line
	10800 4600 10800 4700
Wire Wire Line
	11000 4650 11000 4700
Text Label 6675 2250 1    50   ~ 0
Col2-G
Text Label 9775 2250 1    50   ~ 0
Col6-R
Text Label 7700 2250 1    50   ~ 0
Col3-B
Text Label 8525 2250 1    50   ~ 0
Col4-B
Text Label 6875 2250 1    50   ~ 0
Col2-B
Text Label 11000 2250 1    50   ~ 0
Col7-B
Text Label 9350 2250 1    50   ~ 0
Col5-B
Text Label 8125 2250 1    50   ~ 0
Col4-R
Text Label 10800 2250 1    50   ~ 0
Col7-G
Text Label 9150 2250 1    50   ~ 0
Col5-G
Text Label 8325 2250 1    50   ~ 0
Col4-G
Text Label 10175 2250 1    50   ~ 0
Col6-B
Text Label 6475 2250 1    50   ~ 0
Col2-R
Text Label 7500 2250 1    50   ~ 0
Col3-G
Text Label 8950 2250 1    50   ~ 0
Col5-R
Text Label 9975 2250 1    50   ~ 0
Col6-G
Text Label 3200 5300 0    50   ~ 0
Col4-G
Text Label 7300 2250 1    50   ~ 0
Col3-R
Text Label 3225 5700 0    50   ~ 0
Col5-B
Text Label 10600 2250 1    50   ~ 0
Col7-R
Text Label 3200 3500 0    50   ~ 0
Col6-B
$Comp
L power:GND #PWR09
U 1 1 5DF24AE6
P 4450 4150
F 0 "#PWR09" H 4450 3900 50  0001 C CNN
F 1 "GND" H 4455 3977 50  0000 C CNN
F 2 "" H 4450 4150 50  0001 C CNN
F 3 "" H 4450 4150 50  0001 C CNN
	1    4450 4150
	1    0    0    -1  
$EndComp
$Comp
L Transistor_Array:ULN2003 U2
U 1 1 5DD4CE0D
P 4450 3500
F 0 "U2" H 4450 4167 50  0000 C CNN
F 1 "ULN2003" H 4450 4076 50  0000 C CNN
F 2 "Package_SO:SOP-16_4.55x10.3mm_P1.27mm" H 4500 2950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 4550 3300 50  0001 C CNN
	1    4450 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5D9920AF
P 7500 2500
F 0 "R9" V 7450 2600 50  0000 L CNN
F 1 "560" V 7500 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7430 2500 50  0001 C CNN
F 3 "~" H 7500 2500 50  0001 C CNN
	1    7500 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 5E094EB2
P 2700 2200
F 0 "#PWR06" H 2700 2050 50  0001 C CNN
F 1 "+3.3V" H 2715 2373 50  0000 C CNN
F 2 "" H 2700 2200 50  0001 C CNN
F 3 "" H 2700 2200 50  0001 C CNN
	1    2700 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D983CEA
P 6475 2500
F 0 "R5" V 6425 2600 50  0000 L CNN
F 1 "560" V 6475 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6405 2500 50  0001 C CNN
F 3 "~" H 6475 2500 50  0001 C CNN
	1    6475 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5D9A0E8C
P 8325 2500
F 0 "R12" V 8275 2600 50  0000 L CNN
F 1 "560" V 8325 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8255 2500 50  0001 C CNN
F 3 "~" H 8325 2500 50  0001 C CNN
	1    8325 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 5E09999B
P 4950 2950
F 0 "#PWR07" H 4950 2800 50  0001 C CNN
F 1 "+3.3V" H 4965 3123 50  0000 C CNN
F 2 "" H 4950 2950 50  0001 C CNN
F 3 "" H 4950 2950 50  0001 C CNN
	1    4950 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5D9C03E7
P 10175 2500
F 0 "R19" V 10125 2600 50  0000 L CNN
F 1 "560" V 10175 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10105 2500 50  0001 C CNN
F 3 "~" H 10175 2500 50  0001 C CNN
	1    10175 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5D98F483
P 7300 2500
F 0 "R8" V 7250 2600 50  0000 L CNN
F 1 "560" V 7300 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7230 2500 50  0001 C CNN
F 3 "~" H 7300 2500 50  0001 C CNN
	1    7300 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5D986783
P 6675 2500
F 0 "R6" V 6625 2600 50  0000 L CNN
F 1 "560" V 6675 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6605 2500 50  0001 C CNN
F 3 "~" H 6675 2500 50  0001 C CNN
	1    6675 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5D9B18CA
P 9150 2500
F 0 "R15" V 9100 2600 50  0000 L CNN
F 1 "560" V 9150 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9080 2500 50  0001 C CNN
F 3 "~" H 9150 2500 50  0001 C CNN
	1    9150 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5D9C2D12
P 10600 2500
F 0 "R20" V 10550 2600 50  0000 L CNN
F 1 "560" V 10600 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10530 2500 50  0001 C CNN
F 3 "~" H 10600 2500 50  0001 C CNN
	1    10600 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5D9B733E
P 9775 2500
F 0 "R17" V 9725 2600 50  0000 L CNN
F 1 "560" V 9775 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9705 2500 50  0001 C CNN
F 3 "~" H 9775 2500 50  0001 C CNN
	1    9775 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5D9963E9
P 7700 2500
F 0 "R10" V 7650 2600 50  0000 L CNN
F 1 "560" V 7700 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7630 2500 50  0001 C CNN
F 3 "~" H 7700 2500 50  0001 C CNN
	1    7700 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5D9A70D0
P 8525 2500
F 0 "R13" V 8475 2600 50  0000 L CNN
F 1 "560" V 8525 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8455 2500 50  0001 C CNN
F 3 "~" H 8525 2500 50  0001 C CNN
	1    8525 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5D9C6283
P 10800 2500
F 0 "R21" V 10750 2600 50  0000 L CNN
F 1 "560" V 10800 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10730 2500 50  0001 C CNN
F 3 "~" H 10800 2500 50  0001 C CNN
	1    10800 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5D9BA13C
P 9975 2500
F 0 "R18" V 9925 2600 50  0000 L CNN
F 1 "560" V 9975 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9905 2500 50  0001 C CNN
F 3 "~" H 9975 2500 50  0001 C CNN
	1    9975 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5D9AF1FE
P 8950 2500
F 0 "R14" V 8900 2600 50  0000 L CNN
F 1 "560" V 8950 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8880 2500 50  0001 C CNN
F 3 "~" H 8950 2500 50  0001 C CNN
	1    8950 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 5D9C74A0
P 11000 2500
F 0 "R22" V 10950 2600 50  0000 L CNN
F 1 "560" V 11000 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10930 2500 50  0001 C CNN
F 3 "~" H 11000 2500 50  0001 C CNN
	1    11000 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5D99AD45
P 8125 2500
F 0 "R11" V 8075 2600 50  0000 L CNN
F 1 "560" V 8125 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8055 2500 50  0001 C CNN
F 3 "~" H 8125 2500 50  0001 C CNN
	1    8125 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5D9B402B
P 9350 2500
F 0 "R16" V 9300 2600 50  0000 L CNN
F 1 "560" V 9350 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9280 2500 50  0001 C CNN
F 3 "~" H 9350 2500 50  0001 C CNN
	1    9350 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5D98A834
P 6875 2500
F 0 "R7" V 6825 2600 50  0000 L CNN
F 1 "560" V 6875 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6805 2500 50  0001 C CNN
F 3 "~" H 6875 2500 50  0001 C CNN
	1    6875 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D97CD34
P 5850 2500
F 0 "R3" V 5800 2600 50  0000 L CNN
F 1 "560" V 5850 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5780 2500 50  0001 C CNN
F 3 "~" H 5850 2500 50  0001 C CNN
	1    5850 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D97F5AB
P 6050 2500
F 0 "R4" V 6000 2600 50  0000 L CNN
F 1 "560" V 6050 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5980 2500 50  0001 C CNN
F 3 "~" H 6050 2500 50  0001 C CNN
	1    6050 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 2850 11000 2900
Wire Wire Line
	10600 2650 10600 2750
Wire Wire Line
	10800 2800 10375 2800
Wire Wire Line
	10425 3450 11000 3450
Wire Wire Line
	11000 2850 10425 2850
Wire Wire Line
	11000 3450 11000 3500
Wire Wire Line
	11000 2650 11000 2850
Wire Wire Line
	10375 2800 10375 3400
Wire Wire Line
	10425 2850 10425 3450
Wire Wire Line
	10800 2900 10800 2800
Text Label 5850 2250 1    50   ~ 0
Col1-G
Text Label 6050 2250 1    50   ~ 0
Col1-B
Text Label 5650 2250 1    50   ~ 0
Col1-R
NoConn ~ 675  1825
Connection ~ 10425 4650
Connection ~ 8725 3400
Connection ~ 9500 4550
Connection ~ 10375 5200
Connection ~ 9975 2800
Connection ~ 10425 5250
Connection ~ 9550 3400
Connection ~ 10800 2800
Connection ~ 9600 4050
Connection ~ 10325 3950
Connection ~ 10425 4050
Connection ~ 8675 3350
Connection ~ 9150 2800
Connection ~ 8675 3950
Connection ~ 8775 5250
Connection ~ 8775 4050
Connection ~ 9600 5250
Connection ~ 8725 4600
Connection ~ 9600 4650
Connection ~ 10325 4550
Connection ~ 10375 4000
Connection ~ 11000 2850
Connection ~ 9600 3450
Connection ~ 10175 2850
Connection ~ 9550 4000
Connection ~ 10325 5150
Connection ~ 10375 3400
Connection ~ 10375 4600
Connection ~ 9500 5150
Connection ~ 9500 3350
Connection ~ 9550 4600
Connection ~ 10325 3350
Connection ~ 9775 2750
Connection ~ 9500 3950
Connection ~ 10600 2750
Connection ~ 9550 5200
Connection ~ 10425 3450
Wire Wire Line
	1700 4600 1450 4600
NoConn ~ 1075 1625
Entry Wire Line
	5950 1850 6050 1950
Entry Wire Line
	6375 1850 6475 1950
Entry Wire Line
	5750 1850 5850 1950
Entry Wire Line
	3500 5100 3600 5000
Entry Wire Line
	5550 1850 5650 1950
Entry Wire Line
	3500 5000 3600 4900
$Comp
L Switch:SW_Push SW2
U 1 1 5CC23C16
P 1250 4600
F 0 "SW2" H 1425 4650 50  0000 C CNN
F 1 "SW_Push" H 1250 4794 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1250 4800 50  0001 C CNN
F 3 "" H 1250 4800 50  0001 C CNN
	1    1250 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5CC065ED
P 775 2050
F 0 "#PWR05" H 775 1800 50  0001 C CNN
F 1 "GND" H 780 1877 50  0000 C CNN
F 2 "" H 775 2050 50  0001 C CNN
F 3 "" H 775 2050 50  0001 C CNN
	1    775  2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D97617E
P 5650 2500
F 0 "R2" V 5600 2600 50  0000 L CNN
F 1 "560" V 5650 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5580 2500 50  0001 C CNN
F 3 "~" H 5650 2500 50  0001 C CNN
	1    5650 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J2
U 1 1 5CF12A37
P 775 1425
F 0 "J2" H 832 1892 50  0000 C CNN
F 1 "USB_B_Micro" H 832 1801 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex_47346-0001" H 925 1375 50  0001 C CNN
F 3 "~" H 925 1375 50  0001 C CNN
	1    775  1425
	1    0    0    -1  
$EndComp
Entry Wire Line
	6575 1850 6675 1950
Wire Wire Line
	3500 5700 3100 5700
Wire Wire Line
	3500 5600 3100 5600
Text Label 3200 3900 0    50   ~ 0
SWDIO
Text Label 3200 4000 0    50   ~ 0
SWCLK
Wire Wire Line
	3100 3900 3500 3900
Wire Wire Line
	3500 4000 3100 4000
NoConn ~ 1700 2800
Connection ~ 2300 2300
Wire Wire Line
	1700 2600 1225 2600
$Comp
L power:GND #PWR011
U 1 1 5D70CD2F
P 875 5500
F 0 "#PWR011" H 875 5250 50  0001 C CNN
F 1 "GND" H 880 5327 50  0000 C CNN
F 2 "" H 875 5500 50  0001 C CNN
F 3 "" H 875 5500 50  0001 C CNN
	1    875  5500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW9
U 1 1 5D70D982
P 1250 5300
F 0 "SW9" H 1425 5350 50  0000 C CNN
F 1 "SW_Push" H 1250 5494 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1250 5500 50  0001 C CNN
F 3 "" H 1250 5500 50  0001 C CNN
	1    1250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5300 875  5300
Wire Wire Line
	1700 5300 1450 5300
$Comp
L Switch:SW_Push SW10
U 1 1 5D70E336
P 1250 5400
F 0 "SW10" H 1425 5450 50  0000 C CNN
F 1 "SW_Push" H 1250 5594 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1250 5600 50  0001 C CNN
F 3 "" H 1250 5600 50  0001 C CNN
	1    1250 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5400 875  5400
Wire Wire Line
	1700 5400 1450 5400
Wire Wire Line
	1050 4700 875  4700
Wire Wire Line
	1050 4600 875  4600
Wire Wire Line
	875  4600 875  4700
Connection ~ 875  4700
Wire Wire Line
	875  4700 875  4800
Connection ~ 875  4800
Wire Wire Line
	875  4800 875  4900
Connection ~ 875  4900
Wire Wire Line
	875  4900 875  5000
Connection ~ 875  5000
Wire Wire Line
	875  5000 875  5100
Connection ~ 875  5100
Wire Wire Line
	875  5100 875  5200
Connection ~ 875  5200
Wire Wire Line
	875  5200 875  5300
Connection ~ 875  5300
Wire Wire Line
	875  5300 875  5400
Connection ~ 875  5400
Wire Wire Line
	875  5400 875  5500
$Comp
L Device:LED_RCGB D1
U 1 1 5D73628A
P 5850 3100
F 0 "D1" V 5700 3425 50  0000 R CNN
F 1 "LED_RCGB" V 5805 2770 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 5850 3050 50  0001 C CNN
F 3 "~" H 5850 3050 50  0001 C CNN
	1    5850 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 3300 5850 3300
Connection ~ 5850 3300
Wire Wire Line
	5850 3300 6675 3300
Wire Wire Line
	5075 6300 5850 6300
Wire Wire Line
	5275 3900 5850 3900
Wire Wire Line
	5225 4500 5850 4500
Wire Wire Line
	5125 5700 5850 5700
Wire Wire Line
	5175 5100 5850 5100
$Comp
L Device:LED_RCGB D2
U 1 1 5D8717DD
P 6675 3100
F 0 "D2" V 6525 3425 50  0000 R CNN
F 1 "LED_RCGB" V 6630 2770 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 6675 3050 50  0001 C CNN
F 3 "~" H 6675 3050 50  0001 C CNN
	1    6675 3100
	0    -1   -1   0   
$EndComp
Connection ~ 6675 3300
Wire Wire Line
	6675 3300 7500 3300
$Comp
L Device:LED_RCGB D3
U 1 1 5D873890
P 7500 3100
F 0 "D3" V 7350 3425 50  0000 R CNN
F 1 "LED_RCGB" V 7455 2770 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 7500 3050 50  0001 C CNN
F 3 "~" H 7500 3050 50  0001 C CNN
	1    7500 3100
	0    -1   -1   0   
$EndComp
Connection ~ 7500 3300
Wire Wire Line
	7500 3300 8325 3300
$Comp
L Device:LED_RCGB D4
U 1 1 5D874BE7
P 8325 3100
F 0 "D4" V 8175 3425 50  0000 R CNN
F 1 "LED_RCGB" V 8280 2770 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 8325 3050 50  0001 C CNN
F 3 "~" H 8325 3050 50  0001 C CNN
	1    8325 3100
	0    -1   -1   0   
$EndComp
Connection ~ 8325 3300
Wire Wire Line
	8325 3300 9150 3300
$Comp
L Device:LED_RCGB D5
U 1 1 5D875656
P 9150 3100
F 0 "D5" V 9000 3425 50  0000 R CNN
F 1 "LED_RCGB" V 9105 2770 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 9150 3050 50  0001 C CNN
F 3 "~" H 9150 3050 50  0001 C CNN
	1    9150 3100
	0    -1   -1   0   
$EndComp
Connection ~ 9150 3300
Wire Wire Line
	9150 3300 9975 3300
$Comp
L Device:LED_RCGB D6
U 1 1 5D876455
P 9975 3100
F 0 "D6" V 9825 3425 50  0000 R CNN
F 1 "LED_RCGB" V 9930 2770 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 9975 3050 50  0001 C CNN
F 3 "~" H 9975 3050 50  0001 C CNN
	1    9975 3100
	0    -1   -1   0   
$EndComp
Connection ~ 9975 3300
Wire Wire Line
	9975 3300 10800 3300
$Comp
L Device:LED_RCGB D7
U 1 1 5D878178
P 10800 3100
F 0 "D7" V 10650 3425 50  0000 R CNN
F 1 "LED_RCGB" V 10755 2770 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 10800 3050 50  0001 C CNN
F 3 "~" H 10800 3050 50  0001 C CNN
	1    10800 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D12
U 1 1 5D87C64D
P 9150 3700
F 0 "D12" V 9000 4025 50  0000 R CNN
F 1 "LED_RCGB" V 9105 3370 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 9150 3650 50  0001 C CNN
F 3 "~" H 9150 3650 50  0001 C CNN
	1    9150 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D8
U 1 1 5D87C64E
P 5850 3700
F 0 "D8" V 5700 4025 50  0000 R CNN
F 1 "LED_RCGB" V 5805 3370 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 5850 3650 50  0001 C CNN
F 3 "~" H 5850 3650 50  0001 C CNN
	1    5850 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D9
U 1 1 5D87C64F
P 6675 3700
F 0 "D9" V 6525 4025 50  0000 R CNN
F 1 "LED_RCGB" V 6630 3370 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 6675 3650 50  0001 C CNN
F 3 "~" H 6675 3650 50  0001 C CNN
	1    6675 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D10
U 1 1 5D87C650
P 7500 3700
F 0 "D10" V 7350 4025 50  0000 R CNN
F 1 "LED_RCGB" V 7455 3370 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 7500 3650 50  0001 C CNN
F 3 "~" H 7500 3650 50  0001 C CNN
	1    7500 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D11
U 1 1 5D87C651
P 8325 3700
F 0 "D11" V 8175 4025 50  0000 R CNN
F 1 "LED_RCGB" V 8280 3370 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 8325 3650 50  0001 C CNN
F 3 "~" H 8325 3650 50  0001 C CNN
	1    8325 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D13
U 1 1 5D87C652
P 9975 3700
F 0 "D13" V 9825 4025 50  0000 R CNN
F 1 "LED_RCGB" V 9930 3370 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 9975 3650 50  0001 C CNN
F 3 "~" H 9975 3650 50  0001 C CNN
	1    9975 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D14
U 1 1 5D87C653
P 10800 3700
F 0 "D14" V 10650 4025 50  0000 R CNN
F 1 "LED_RCGB" V 10755 3370 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 10800 3650 50  0001 C CNN
F 3 "~" H 10800 3650 50  0001 C CNN
	1    10800 3700
	0    -1   -1   0   
$EndComp
Connection ~ 5850 3900
Wire Wire Line
	5850 3900 6675 3900
Connection ~ 6675 3900
Wire Wire Line
	6675 3900 7500 3900
Connection ~ 7500 3900
Wire Wire Line
	7500 3900 8325 3900
Connection ~ 8325 3900
Wire Wire Line
	8325 3900 9150 3900
Connection ~ 9150 3900
Wire Wire Line
	9150 3900 9975 3900
Connection ~ 9975 3900
Wire Wire Line
	9975 3900 10800 3900
$Comp
L Device:LED_RCGB D19
U 1 1 5D8875F0
P 9150 4300
F 0 "D19" V 9000 4625 50  0000 R CNN
F 1 "LED_RCGB" V 9105 3970 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 9150 4250 50  0001 C CNN
F 3 "~" H 9150 4250 50  0001 C CNN
	1    9150 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D15
U 1 1 5D8875F1
P 5850 4300
F 0 "D15" V 5700 4625 50  0000 R CNN
F 1 "LED_RCGB" V 5805 3970 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 5850 4250 50  0001 C CNN
F 3 "~" H 5850 4250 50  0001 C CNN
	1    5850 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D16
U 1 1 5D8875F2
P 6675 4300
F 0 "D16" V 6525 4625 50  0000 R CNN
F 1 "LED_RCGB" V 6630 3970 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 6675 4250 50  0001 C CNN
F 3 "~" H 6675 4250 50  0001 C CNN
	1    6675 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D17
U 1 1 5D8875F3
P 7500 4300
F 0 "D17" V 7350 4625 50  0000 R CNN
F 1 "LED_RCGB" V 7455 3970 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 7500 4250 50  0001 C CNN
F 3 "~" H 7500 4250 50  0001 C CNN
	1    7500 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D18
U 1 1 5D8875F4
P 8325 4300
F 0 "D18" V 8175 4625 50  0000 R CNN
F 1 "LED_RCGB" V 8280 3970 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 8325 4250 50  0001 C CNN
F 3 "~" H 8325 4250 50  0001 C CNN
	1    8325 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D20
U 1 1 5D8875F5
P 9975 4300
F 0 "D20" V 9825 4625 50  0000 R CNN
F 1 "LED_RCGB" V 9930 3970 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 9975 4250 50  0001 C CNN
F 3 "~" H 9975 4250 50  0001 C CNN
	1    9975 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D21
U 1 1 5D8875F6
P 10800 4300
F 0 "D21" V 10650 4625 50  0000 R CNN
F 1 "LED_RCGB" V 10755 3970 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 10800 4250 50  0001 C CNN
F 3 "~" H 10800 4250 50  0001 C CNN
	1    10800 4300
	0    -1   -1   0   
$EndComp
Connection ~ 5850 4500
Wire Wire Line
	5850 4500 6675 4500
Connection ~ 6675 4500
Wire Wire Line
	6675 4500 7500 4500
Connection ~ 7500 4500
Wire Wire Line
	7500 4500 8325 4500
Connection ~ 8325 4500
Wire Wire Line
	8325 4500 9150 4500
Connection ~ 9150 4500
Wire Wire Line
	9150 4500 9975 4500
Connection ~ 9975 4500
Wire Wire Line
	9975 4500 10800 4500
$Comp
L Device:LED_RCGB D26
U 1 1 5D890349
P 9150 4900
F 0 "D26" V 9000 5225 50  0000 R CNN
F 1 "LED_RCGB" V 9105 4570 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 9150 4850 50  0001 C CNN
F 3 "~" H 9150 4850 50  0001 C CNN
	1    9150 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D22
U 1 1 5D89034A
P 5850 4900
F 0 "D22" V 5700 5225 50  0000 R CNN
F 1 "LED_RCGB" V 5805 4570 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 5850 4850 50  0001 C CNN
F 3 "~" H 5850 4850 50  0001 C CNN
	1    5850 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D23
U 1 1 5D89034B
P 6675 4900
F 0 "D23" V 6525 5225 50  0000 R CNN
F 1 "LED_RCGB" V 6630 4570 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 6675 4850 50  0001 C CNN
F 3 "~" H 6675 4850 50  0001 C CNN
	1    6675 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D24
U 1 1 5D89034C
P 7500 4900
F 0 "D24" V 7350 5225 50  0000 R CNN
F 1 "LED_RCGB" V 7455 4570 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 7500 4850 50  0001 C CNN
F 3 "~" H 7500 4850 50  0001 C CNN
	1    7500 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D25
U 1 1 5D89034D
P 8325 4900
F 0 "D25" V 8175 5225 50  0000 R CNN
F 1 "LED_RCGB" V 8280 4570 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 8325 4850 50  0001 C CNN
F 3 "~" H 8325 4850 50  0001 C CNN
	1    8325 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D27
U 1 1 5D89034E
P 9975 4900
F 0 "D27" V 9825 5225 50  0000 R CNN
F 1 "LED_RCGB" V 9930 4570 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 9975 4850 50  0001 C CNN
F 3 "~" H 9975 4850 50  0001 C CNN
	1    9975 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D28
U 1 1 5D89034F
P 10800 4900
F 0 "D28" V 10650 5225 50  0000 R CNN
F 1 "LED_RCGB" V 10755 4570 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 10800 4850 50  0001 C CNN
F 3 "~" H 10800 4850 50  0001 C CNN
	1    10800 4900
	0    -1   -1   0   
$EndComp
Connection ~ 5850 5100
Wire Wire Line
	5850 5100 6675 5100
Connection ~ 6675 5100
Wire Wire Line
	6675 5100 7500 5100
Connection ~ 7500 5100
Wire Wire Line
	7500 5100 8325 5100
Connection ~ 8325 5100
Wire Wire Line
	8325 5100 9150 5100
Connection ~ 9150 5100
Wire Wire Line
	9150 5100 9975 5100
Connection ~ 9975 5100
Wire Wire Line
	9975 5100 10800 5100
$Comp
L Device:LED_RCGB D33
U 1 1 5D89A356
P 9150 5500
F 0 "D33" V 9000 5825 50  0000 R CNN
F 1 "LED_RCGB" V 9105 5170 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 9150 5450 50  0001 C CNN
F 3 "~" H 9150 5450 50  0001 C CNN
	1    9150 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D29
U 1 1 5D89A357
P 5850 5500
F 0 "D29" V 5700 5825 50  0000 R CNN
F 1 "LED_RCGB" V 5805 5170 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 5850 5450 50  0001 C CNN
F 3 "~" H 5850 5450 50  0001 C CNN
	1    5850 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D30
U 1 1 5D89A358
P 6675 5500
F 0 "D30" V 6525 5825 50  0000 R CNN
F 1 "LED_RCGB" V 6630 5170 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 6675 5450 50  0001 C CNN
F 3 "~" H 6675 5450 50  0001 C CNN
	1    6675 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D31
U 1 1 5D89A359
P 7500 5500
F 0 "D31" V 7350 5825 50  0000 R CNN
F 1 "LED_RCGB" V 7455 5170 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 7500 5450 50  0001 C CNN
F 3 "~" H 7500 5450 50  0001 C CNN
	1    7500 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D32
U 1 1 5D89A35A
P 8325 5500
F 0 "D32" V 8175 5825 50  0000 R CNN
F 1 "LED_RCGB" V 8280 5170 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 8325 5450 50  0001 C CNN
F 3 "~" H 8325 5450 50  0001 C CNN
	1    8325 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D34
U 1 1 5D89A35B
P 9975 5500
F 0 "D34" V 9825 5825 50  0000 R CNN
F 1 "LED_RCGB" V 9930 5170 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 9975 5450 50  0001 C CNN
F 3 "~" H 9975 5450 50  0001 C CNN
	1    9975 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D35
U 1 1 5D89A35C
P 10800 5500
F 0 "D35" V 10650 5825 50  0000 R CNN
F 1 "LED_RCGB" V 10755 5170 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 10800 5450 50  0001 C CNN
F 3 "~" H 10800 5450 50  0001 C CNN
	1    10800 5500
	0    -1   -1   0   
$EndComp
Connection ~ 5850 5700
Wire Wire Line
	5850 5700 6675 5700
Connection ~ 6675 5700
Wire Wire Line
	6675 5700 7500 5700
Connection ~ 7500 5700
Wire Wire Line
	7500 5700 8325 5700
Connection ~ 8325 5700
Wire Wire Line
	8325 5700 9150 5700
Connection ~ 9150 5700
Wire Wire Line
	9150 5700 9975 5700
Connection ~ 9975 5700
Wire Wire Line
	9975 5700 10800 5700
$Comp
L Device:LED_RCGB D40
U 1 1 5D8A2430
P 9150 6100
F 0 "D40" V 9000 6425 50  0000 R CNN
F 1 "LED_RCGB" V 9105 5770 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 9150 6050 50  0001 C CNN
F 3 "~" H 9150 6050 50  0001 C CNN
	1    9150 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D36
U 1 1 5D8A2431
P 5850 6100
F 0 "D36" V 5700 6425 50  0000 R CNN
F 1 "LED_RCGB" V 5805 5770 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 5850 6050 50  0001 C CNN
F 3 "~" H 5850 6050 50  0001 C CNN
	1    5850 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D37
U 1 1 5D8A2432
P 6675 6100
F 0 "D37" V 6525 6425 50  0000 R CNN
F 1 "LED_RCGB" V 6630 5770 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 6675 6050 50  0001 C CNN
F 3 "~" H 6675 6050 50  0001 C CNN
	1    6675 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D38
U 1 1 5D8A2433
P 7500 6100
F 0 "D38" V 7350 6425 50  0000 R CNN
F 1 "LED_RCGB" V 7455 5770 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 7500 6050 50  0001 C CNN
F 3 "~" H 7500 6050 50  0001 C CNN
	1    7500 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D39
U 1 1 5D8A2434
P 8325 6100
F 0 "D39" V 8175 6425 50  0000 R CNN
F 1 "LED_RCGB" V 8280 5770 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 8325 6050 50  0001 C CNN
F 3 "~" H 8325 6050 50  0001 C CNN
	1    8325 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D41
U 1 1 5D8A2435
P 9975 6100
F 0 "D41" V 9825 6425 50  0000 R CNN
F 1 "LED_RCGB" V 9930 5770 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 9975 6050 50  0001 C CNN
F 3 "~" H 9975 6050 50  0001 C CNN
	1    9975 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RCGB D42
U 1 1 5D8A2436
P 10800 6100
F 0 "D42" V 10650 6425 50  0000 R CNN
F 1 "LED_RCGB" V 10755 5770 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 10800 6050 50  0001 C CNN
F 3 "~" H 10800 6050 50  0001 C CNN
	1    10800 6100
	0    -1   -1   0   
$EndComp
Connection ~ 5850 6300
Wire Wire Line
	5850 6300 6675 6300
Connection ~ 6675 6300
Wire Wire Line
	6675 6300 7500 6300
Connection ~ 7500 6300
Wire Wire Line
	7500 6300 8325 6300
Connection ~ 8325 6300
Wire Wire Line
	8325 6300 9150 6300
Connection ~ 9150 6300
Wire Wire Line
	9150 6300 9975 6300
Connection ~ 9975 6300
Wire Wire Line
	9975 6300 10800 6300
$Comp
L power:GND #PWR08
U 1 1 5D728F25
P 1225 3250
F 0 "#PWR08" H 1225 3000 50  0001 C CNN
F 1 "GND" H 1230 3077 50  0000 C CNN
F 2 "" H 1225 3250 50  0001 C CNN
F 3 "" H 1225 3250 50  0001 C CNN
	1    1225 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D72F50D
P 1525 2300
F 0 "R1" V 1475 2400 50  0000 L CNN
F 1 "1k" V 1525 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1455 2300 50  0001 C CNN
F 3 "~" H 1525 2300 50  0001 C CNN
	1    1525 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	1675 2300 2300 2300
Wire Wire Line
	1375 2300 1225 2300
Wire Wire Line
	1225 2300 1225 2600
Connection ~ 1225 2600
Entry Wire Line
	4400 1850 4500 1750
Entry Wire Line
	4500 1850 4600 1750
Wire Wire Line
	4500 1750 4500 1450
Wire Wire Line
	4600 1450 4600 1750
Text Label 4500 1475 3    50   ~ 0
SWDIO
Text Label 4600 1475 3    50   ~ 0
SWCLK
$Comp
L power:+3.3V #PWR02
U 1 1 5D7BA66E
P 4175 1450
F 0 "#PWR02" H 4175 1300 50  0001 C CNN
F 1 "+3.3V" H 4190 1623 50  0000 C CNN
F 2 "" H 4175 1450 50  0001 C CNN
F 3 "" H 4175 1450 50  0001 C CNN
	1    4175 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D7D1539
P 4800 1625
F 0 "#PWR04" H 4800 1375 50  0001 C CNN
F 1 "GND" H 4805 1452 50  0000 C CNN
F 2 "" H 4800 1625 50  0001 C CNN
F 3 "" H 4800 1625 50  0001 C CNN
	1    4800 1625
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1625 4800 1450
Wire Wire Line
	4175 1450 4175 1550
Wire Wire Line
	4175 1550 4400 1550
Wire Wire Line
	4400 1550 4400 1450
NoConn ~ 3100 4100
NoConn ~ 2200 2400
$Comp
L power:GND #PWR012
U 1 1 5D8DDAAC
P 2200 6175
F 0 "#PWR012" H 2200 5925 50  0001 C CNN
F 1 "GND" H 2205 6002 50  0000 C CNN
F 2 "" H 2200 6175 50  0001 C CNN
F 3 "" H 2200 6175 50  0001 C CNN
	1    2200 6175
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6175 2200 6075
Wire Wire Line
	2200 6075 2300 6075
Wire Wire Line
	2300 6075 2300 6000
Connection ~ 2200 6075
Wire Wire Line
	2200 6075 2200 6000
Wire Wire Line
	2300 6075 2400 6075
Wire Wire Line
	2400 6075 2400 6000
Connection ~ 2300 6075
Wire Wire Line
	2400 6075 2500 6075
Wire Wire Line
	2500 6075 2500 6000
Connection ~ 2400 6075
Wire Wire Line
	2500 6075 2600 6075
Wire Wire Line
	2600 6075 2600 6000
Connection ~ 2500 6075
NoConn ~ 1700 5500
NoConn ~ 1700 5600
NoConn ~ 1700 5700
NoConn ~ 1700 5800
Entry Wire Line
	3500 5700 3600 5600
Entry Wire Line
	3500 4900 3600 4800
Entry Wire Line
	3500 4700 3600 4600
Entry Wire Line
	3500 4400 3600 4300
Entry Wire Line
	3500 3200 3600 3100
Entry Wire Line
	3500 3300 3600 3200
Entry Wire Line
	3500 5800 3600 5700
Entry Wire Line
	3500 3100 3600 3000
Entry Wire Line
	3500 2700 3600 2600
Entry Wire Line
	3500 4600 3600 4500
Entry Wire Line
	3500 3700 3600 3600
Entry Wire Line
	3500 5600 3600 5500
Entry Wire Line
	3600 3500 3700 3600
Entry Wire Line
	3500 4000 3600 3900
Entry Wire Line
	3500 5300 3600 5200
Entry Wire Line
	3600 3200 3700 3300
Entry Wire Line
	3500 3000 3600 2900
Entry Wire Line
	3500 2900 3600 2800
Entry Wire Line
	3500 4300 3600 4200
Entry Wire Line
	3500 4500 3600 4400
Entry Wire Line
	3500 3900 3600 3800
Entry Wire Line
	3500 3800 3600 3700
Entry Wire Line
	3500 4800 3600 4700
Entry Wire Line
	3500 2800 3600 2700
Entry Wire Line
	3500 3400 3600 3300
Entry Wire Line
	3600 3600 3700 3700
Entry Wire Line
	3600 3700 3700 3800
Entry Wire Line
	3600 3300 3700 3400
Entry Wire Line
	3600 3400 3700 3500
Entry Wire Line
	3500 3500 3600 3400
Entry Wire Line
	3500 3600 3600 3500
Entry Wire Line
	3500 5500 3600 5400
Wire Wire Line
	3500 5500 3100 5500
Entry Wire Line
	3500 5400 3600 5300
Wire Wire Line
	3500 5400 3100 5400
Wire Wire Line
	600  4225 650  4225
Wire Wire Line
	600  4300 600  4225
$Comp
L Device:LED_RCGB D43
U 1 1 5D762861
P 850 4225
F 0 "D43" H 850 4630 50  0000 C CNN
F 1 "LED_RCGB" V 805 3895 50  0001 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 850 4175 50  0001 C CNN
F 3 "~" H 850 4175 50  0001 C CNN
	1    850  4225
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5D662C21
P 600 4300
F 0 "#PWR010" H 600 4050 50  0001 C CNN
F 1 "GND" H 605 4127 50  0000 C CNN
F 2 "" H 600 4300 50  0001 C CNN
F 3 "" H 600 4300 50  0001 C CNN
	1    600  4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4425 1475 4425
Wire Wire Line
	1475 4425 1475 4500
Wire Wire Line
	1475 4500 1700 4500
Wire Wire Line
	1525 4225 1525 4400
Wire Wire Line
	1525 4400 1700 4400
Wire Wire Line
	1375 4225 1525 4225
Wire Wire Line
	1700 4300 1575 4300
Wire Wire Line
	1575 4300 1575 4025
Wire Wire Line
	1375 4025 1575 4025
$Comp
L Device:R R25
U 1 1 5D75D18F
P 1250 4425
F 0 "R25" V 1275 4525 50  0000 L CNN
F 1 "560" V 1250 4425 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1180 4425 50  0001 C CNN
F 3 "~" H 1250 4425 50  0001 C CNN
	1    1250 4425
	0    1    -1   0   
$EndComp
Wire Wire Line
	1050 4425 1100 4425
$Comp
L Device:R R24
U 1 1 5D75CA5D
P 1225 4225
F 0 "R24" V 1250 4325 50  0000 L CNN
F 1 "560" V 1225 4225 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1155 4225 50  0001 C CNN
F 3 "~" H 1225 4225 50  0001 C CNN
	1    1225 4225
	0    1    -1   0   
$EndComp
$Comp
L Device:R R23
U 1 1 5CC9CA34
P 1225 4025
F 0 "R23" V 1250 4125 50  0000 L CNN
F 1 "560" V 1225 4025 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1155 4025 50  0001 C CNN
F 3 "~" H 1225 4025 50  0001 C CNN
	1    1225 4025
	0    1    -1   0   
$EndComp
Wire Wire Line
	1050 4025 1075 4025
Wire Wire Line
	1050 4225 1075 4225
NoConn ~ 1700 4100
$Comp
L Switch:SW_Push SW1
U 1 1 5D7F4464
P 1225 2925
F 0 "SW1" V 1075 2950 50  0000 L CNN
F 1 "SW_Push" H 1225 2850 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS810" H 1225 3125 50  0001 C CNN
F 3 "~" H 1225 3125 50  0001 C CNN
	1    1225 2925
	0    1    1    0   
$EndComp
Wire Wire Line
	1225 2600 1225 2725
Wire Wire Line
	1225 3125 1225 3250
NoConn ~ 1075 1525
NoConn ~ 1075 1425
Wire Wire Line
	775  2050 775  1950
Wire Wire Line
	775  1950 1275 1950
Wire Wire Line
	775  1825 775  1950
Connection ~ 775  1950
$Comp
L Device:C C1
U 1 1 5CBB222E
P 1275 1575
F 0 "C1" H 1390 1621 50  0000 L CNN
F 1 "C" H 1390 1530 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1313 1425 50  0001 C CNN
F 3 "~" H 1275 1575 50  0001 C CNN
	1    1275 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	1275 1725 1275 1950
Wire Wire Line
	2250 1225 1750 1225
Wire Wire Line
	1075 1225 1275 1225
Wire Wire Line
	2950 1225 2850 1225
Wire Wire Line
	2950 1150 2950 1225
Wire Wire Line
	2550 1575 2550 1550
$Comp
L power:GND #PWR03
U 1 1 5D709831
P 2550 1575
F 0 "#PWR03" H 2550 1325 50  0001 C CNN
F 1 "GND" H 2555 1402 50  0000 C CNN
F 2 "" H 2550 1575 50  0001 C CNN
F 3 "" H 2550 1575 50  0001 C CNN
	1    2550 1575
	1    0    0    -1  
$EndComp
Connection ~ 1275 1225
$Comp
L Regulator_Linear:AMS1117-3.3 U1
U 1 1 5D706D1D
P 2550 1225
F 0 "U1" H 2550 1467 50  0000 C CNN
F 1 "AMS1117-3.3" H 2550 1376 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2550 1425 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2650 975 50  0001 C CNN
	1    2550 1225
	1    0    0    -1  
$EndComp
Wire Wire Line
	1275 1425 1275 1225
$Comp
L power:+3.3V #PWR01
U 1 1 5D70A322
P 2950 1150
F 0 "#PWR01" H 2950 1000 50  0001 C CNN
F 1 "+3.3V" H 2965 1323 50  0000 C CNN
F 2 "" H 2950 1150 50  0001 C CNN
F 3 "" H 2950 1150 50  0001 C CNN
	1    2950 1150
	1    0    0    -1  
$EndComp
NoConn ~ 3100 5200
NoConn ~ 1700 3900
NoConn ~ 1700 4000
$Comp
L MCU_ST_STM32F1:STM32F103RCTx U3
U 1 1 5D93EDB2
P 2400 4200
F 0 "U3" H 2950 2450 50  0000 C CNN
F 1 "STM32F103RCTx" H 2400 4175 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 1800 2500 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00191185.pdf" H 2400 4200 50  0001 C CNN
	1    2400 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5D7F82D3
P 1850 1800
F 0 "J3" V 1722 1880 50  0000 L CNN
F 1 "Power" V 1813 1880 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1850 1800 50  0001 C CNN
F 3 "~" H 1850 1800 50  0001 C CNN
	1    1850 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 1600 1750 1225
Connection ~ 1750 1225
Wire Wire Line
	1750 1225 1275 1225
Wire Wire Line
	2550 1550 1850 1550
Wire Wire Line
	1850 1550 1850 1600
Connection ~ 2550 1550
Wire Wire Line
	2550 1550 2550 1525
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 5D7F378F
P 4600 1250
F 0 "J1" V 4564 962 50  0000 R CNN
F 1 "Conn_01x05" V 4473 962 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4600 1250 50  0001 C CNN
F 3 "~" H 4600 1250 50  0001 C CNN
	1    4600 1250
	0    -1   -1   0   
$EndComp
Text GLabel 4700 1500 3    40   Output ~ 0
~RST
Wire Wire Line
	4700 1500 4700 1450
Text GLabel 1100 2600 0    40   Input ~ 0
~RST
Wire Wire Line
	1100 2600 1225 2600
Wire Bus Line
	3600 1850 10900 1850
Wire Bus Line
	3600 1850 3600 5700
$EndSCHEMATC
