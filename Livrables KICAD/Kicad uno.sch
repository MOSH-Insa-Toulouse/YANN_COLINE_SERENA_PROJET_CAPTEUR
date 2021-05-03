EESchema Schematic File Version 4
LIBS:Kicad uno-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Carte démo shield uno"
Date "lun. 30 mars 2015"
Rev "1.0"
Comp "INSA"
Comment1 "Les bg sont:"
Comment2 "Mathias SOULIER"
Comment3 "Jordi ROUBICHOU"
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
NoConn ~ 9400 1600
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
NoConn ~ 8650 1800
NoConn ~ 8950 1450
NoConn ~ 8900 2600
NoConn ~ 8900 2700
NoConn ~ 8900 2800
NoConn ~ 10550 2300
NoConn ~ 10550 2400
NoConn ~ 10550 2500
NoConn ~ 10550 2900
NoConn ~ 10550 3000
NoConn ~ 10550 1400
NoConn ~ 10550 1600
NoConn ~ 10550 1700
NoConn ~ 9350 1450
NoConn ~ 9250 1300
Connection ~ 9300 2200
Wire Wire Line
	9300 2200 9300 3150
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
NoConn ~ 10200 1200
NoConn ~ 10200 1300
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9050 2000 9050 1350
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6015814F
P 750 850
F 0 "#FLG0101" H 750 925 50  0001 C CNN
F 1 "PWR_FLAG" H 750 1023 50  0000 C CNN
F 2 "" H 750 850 50  0001 C CNN
F 3 "~" H 750 850 50  0001 C CNN
	1    750  850 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60158E06
P 1300 850
F 0 "#FLG0102" H 1300 925 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 1023 50  0000 C CNN
F 2 "" H 1300 850 50  0001 C CNN
F 3 "~" H 1300 850 50  0001 C CNN
	1    1300 850 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 6015903A
P 1850 850
F 0 "#FLG0103" H 1850 925 50  0001 C CNN
F 1 "PWR_FLAG" H 1850 1023 50  0000 C CNN
F 2 "" H 1850 850 50  0001 C CNN
F 3 "~" H 1850 850 50  0001 C CNN
	1    1850 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6015916F
P 750 850
F 0 "#PWR0101" H 750 600 50  0001 C CNN
F 1 "GND" H 755 677 50  0000 C CNN
F 2 "" H 750 850 50  0001 C CNN
F 3 "" H 750 850 50  0001 C CNN
	1    750  850 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 6015A53E
P 1300 950
F 0 "#PWR0102" H 1300 800 50  0001 C CNN
F 1 "+3.3V" V 1300 1200 50  0000 C CNN
F 2 "" H 1300 950 50  0000 C CNN
F 3 "" H 1300 950 50  0000 C CNN
	1    1300 950 
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 6015ABC1
P 1850 950
F 0 "#PWR0103" H 1850 800 50  0001 C CNN
F 1 "+5V" V 1850 1150 50  0000 C CNN
F 2 "" H 1850 950 50  0000 C CNN
F 3 "" H 1850 950 50  0000 C CNN
	1    1850 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 950  1300 850 
Wire Wire Line
	1850 950  1850 850 
$Comp
L power:+5V #PWR06
U 1 1 604348ED
P 2350 1650
F 0 "#PWR06" H 2350 1500 50  0001 C CNN
F 1 "+5V" H 2365 1823 50  0000 C CNN
F 2 "" H 2350 1650 50  0001 C CNN
F 3 "" H 2350 1650 50  0001 C CNN
	1    2350 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R0
U 1 1 60434FDF
P 2350 1900
F 0 "R0" H 2280 1854 50  0000 R CNN
F 1 "Rsensor" H 2280 1945 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2280 1900 50  0001 C CNN
F 3 "~" H 2350 1900 50  0001 C CNN
	1    2350 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 604369AE
P 2600 2300
F 0 "R5" V 2393 2300 50  0000 C CNN
F 1 "10k" V 2484 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2530 2300 50  0001 C CNN
F 3 "~" H 2600 2300 50  0001 C CNN
	1    2600 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 1650 2350 1750
Wire Wire Line
	2350 2300 2450 2300
Wire Wire Line
	2750 2300 2950 2300
Wire Wire Line
	2950 2300 3500 2300
Wire Wire Line
	3500 2300 3500 2450
Connection ~ 2950 2300
$Comp
L power:GND #PWR08
U 1 1 6044D5BB
P 2950 3000
F 0 "#PWR08" H 2950 2750 50  0001 C CNN
F 1 "GND" H 2955 2827 50  0000 C CNN
F 2 "" H 2950 3000 50  0001 C CNN
F 3 "" H 2950 3000 50  0001 C CNN
	1    2950 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 6044DFED
P 3500 3000
F 0 "#PWR09" H 3500 2750 50  0001 C CNN
F 1 "GND" H 3505 2827 50  0000 C CNN
F 2 "" H 3500 3000 50  0001 C CNN
F 3 "" H 3500 3000 50  0001 C CNN
	1    3500 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2300 3800 2300
Connection ~ 3500 2300
Text GLabel 3800 2300 2    50   Input ~ 0
IN+
Wire Wire Line
	2350 2050 2350 2300
$Comp
L Device:R R1
U 1 1 60469670
P 3500 2600
F 0 "R1" H 3430 2554 50  0000 R CNN
F 1 "100k" H 3430 2645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3430 2600 50  0001 C CNN
F 3 "~" H 3500 2600 50  0001 C CNN
	1    3500 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 3000 3500 2750
$Comp
L power:GND #PWR010
U 1 1 6047F565
P 4400 2350
F 0 "#PWR010" H 4400 2100 50  0001 C CNN
F 1 "GND" H 4405 2177 50  0000 C CNN
F 2 "" H 4400 2350 50  0001 C CNN
F 3 "" H 4400 2350 50  0001 C CNN
	1    4400 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2150 4400 2150
Wire Wire Line
	4400 2150 4400 2350
Text GLabel 4450 2050 0    50   Input ~ 0
IN+
Text GLabel 4450 1950 0    50   Input ~ 0
IN-
Wire Wire Line
	4450 1950 4550 1950
Wire Wire Line
	4450 2050 4550 2050
$Comp
L Device:C C1
U 1 1 60487950
P 2950 2600
F 0 "C1" H 3065 2646 50  0000 L CNN
F 1 "100n" H 3065 2555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 2988 2450 50  0001 C CNN
F 3 "~" H 2950 2600 50  0001 C CNN
	1    2950 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2300 2950 2450
Wire Wire Line
	2950 2750 2950 3000
$Comp
L Device:C C3
U 1 1 6048B482
P 6600 1450
F 0 "C3" H 6715 1496 50  0000 L CNN
F 1 "100n" H 6715 1405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 6638 1300 50  0001 C CNN
F 3 "~" H 6600 1450 50  0001 C CNN
	1    6600 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 6048FEC4
P 6750 1200
F 0 "#PWR014" H 6750 1050 50  0001 C CNN
F 1 "+5V" H 6765 1373 50  0000 C CNN
F 2 "" H 6750 1200 50  0001 C CNN
F 3 "" H 6750 1200 50  0001 C CNN
	1    6750 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 604908D9
P 6600 1750
F 0 "#PWR013" H 6600 1500 50  0001 C CNN
F 1 "GND" H 6605 1577 50  0000 C CNN
F 2 "" H 6600 1750 50  0001 C CNN
F 3 "" H 6600 1750 50  0001 C CNN
	1    6600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1600 6600 1750
Wire Wire Line
	6600 1300 6600 1250
Wire Wire Line
	6600 1250 6750 1250
Wire Wire Line
	6750 1250 6750 1200
Wire Wire Line
	5800 1950 6450 1950
Wire Wire Line
	6450 1250 6600 1250
Connection ~ 6600 1250
Wire Wire Line
	6450 1250 6450 1950
$Comp
L Device:R R3
U 1 1 6049EE57
P 6200 2600
F 0 "R3" H 6130 2554 50  0000 R CNN
F 1 "100k" H 6130 2645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6130 2600 50  0001 C CNN
F 3 "~" H 6200 2600 50  0001 C CNN
	1    6200 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 6049F5CE
P 6650 2600
F 0 "C4" H 6765 2646 50  0000 L CNN
F 1 "1µ" H 6765 2555 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W4.5mm_P5.00mm" H 6688 2450 50  0001 C CNN
F 3 "~" H 6650 2600 50  0001 C CNN
	1    6650 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6049F83E
P 7150 2600
F 0 "C2" H 7265 2646 50  0000 L CNN
F 1 "100n" H 7265 2555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 7188 2450 50  0001 C CNN
F 3 "~" H 7150 2600 50  0001 C CNN
	1    7150 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6049FBEE
P 6950 2900
F 0 "R2" V 7157 2900 50  0000 C CNN
F 1 "1k" V 7066 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6880 2900 50  0001 C CNN
F 3 "~" H 6950 2900 50  0001 C CNN
	1    6950 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 604A01E8
P 6900 2350
F 0 "R6" V 7107 2350 50  0000 C CNN
F 1 "1k" V 7016 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6830 2350 50  0001 C CNN
F 3 "~" H 6900 2350 50  0001 C CNN
	1    6900 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 2050 6200 2050
Wire Wire Line
	6200 2050 6200 2350
Wire Wire Line
	6200 2350 6650 2350
Wire Wire Line
	7050 2350 7150 2350
Wire Wire Line
	7150 2350 7150 2450
Wire Wire Line
	6650 2450 6650 2350
Connection ~ 6650 2350
Wire Wire Line
	6650 2350 6750 2350
Wire Wire Line
	6650 2750 6650 2900
Wire Wire Line
	6650 2900 6800 2900
Wire Wire Line
	7100 2900 7150 2900
Wire Wire Line
	7150 2900 7150 2750
Wire Wire Line
	7150 2350 7500 2350
Connection ~ 7150 2350
Wire Wire Line
	6200 2350 6200 2450
Connection ~ 6200 2350
Wire Wire Line
	6200 2750 6200 2900
Wire Wire Line
	6200 2900 6650 2900
Connection ~ 6650 2900
Wire Wire Line
	6650 2900 6650 3150
Wire Wire Line
	7150 2900 7150 3150
Connection ~ 7150 2900
Text GLabel 7500 2350 2    50   Input ~ 0
ADC
Text GLabel 6650 3150 3    50   Input ~ 0
IN-
$Comp
L power:GND #PWR016
U 1 1 604BED6B
P 7150 3150
F 0 "#PWR016" H 7150 2900 50  0001 C CNN
F 1 "GND" H 7155 2977 50  0000 C CNN
F 2 "" H 7150 3150 50  0001 C CNN
F 3 "" H 7150 3150 50  0001 C CNN
	1    7150 3150
	1    0    0    -1  
$EndComp
Wire Notes Line
	2000 3550 8150 3550
Wire Notes Line
	8150 3550 8150 850 
Wire Notes Line
	8150 850  2000 850 
Wire Notes Line
	2000 850  2000 3550
Text Notes 2050 950  0    50   ~ 0
Amplificateur
Text GLabel 10900 2600 2    50   Input ~ 0
SWITCH
Wire Wire Line
	10200 2800 10900 2800
Text GLabel 10900 2700 2    50   Input ~ 0
DATA
Text GLabel 10900 2800 2    50   Input ~ 0
CLK
Wire Wire Line
	10200 2600 10900 2600
Wire Wire Line
	10200 2700 10900 2700
Text GLabel 9150 3000 0    50   Input ~ 0
SCK
Text GLabel 9150 2900 0    50   Input ~ 0
SDA
Wire Wire Line
	9150 2900 9400 2900
Text Label 8900 2500 0    60   ~ 0
A0
Wire Wire Line
	9400 2500 8900 2500
Text GLabel 8900 2500 0    50   Input ~ 0
ADC
Wire Wire Line
	9150 3000 9400 3000
Text Label 10550 1400 0    50   ~ 0
AREF
Text GLabel 10850 1800 2    50   Input ~ 0
TX
Text Label 10850 1800 2    50   ~ 0
11(MOSH)
Text Label 10850 1900 2    50   ~ 0
10(SS)
Text Label 10850 2000 2    50   ~ 0
9(**)
Text Label 10850 2100 2    50   ~ 0
8
Wire Wire Line
	10200 1800 10850 1800
Wire Wire Line
	10200 1900 10850 1900
Wire Wire Line
	10200 2000 10850 2000
Wire Wire Line
	10200 2100 10850 2100
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text GLabel 10850 1900 2    50   Input ~ 0
RX
$Comp
L Shield_Projet_Capteur:OLED_0.9L U21
U 1 1 6052A428
P 3550 4900
F 0 "U21" H 4228 4946 50  0000 L CNN
F 1 "OLED_0.9L" H 4228 4855 50  0000 L CNN
F 2 "Empreintes_Projet:OLED_0.9L" H 3550 4900 50  0001 C CNN
F 3 "" H 3550 4900 50  0001 C CNN
	1    3550 4900
	1    0    0    -1  
$EndComp
$Comp
L Shield_Projet_Capteur:LTC1050 U11
U 1 1 6053459C
P 5150 1950
F 0 "U11" H 5175 2315 50  0000 C CNN
F 1 "LTC1050" H 5175 2224 50  0000 C CNN
F 2 "Empreintes_Projet:LTC1050" H 5150 2350 50  0001 C CNN
F 3 "" H 5150 2350 50  0001 C CNN
	1    5150 1950
	1    0    0    -1  
$EndComp
Text GLabel 2550 4850 0    50   Input ~ 0
SCK
$Comp
L power:GND #PWR07
U 1 1 60535851
P 2500 5150
F 0 "#PWR07" H 2500 4900 50  0001 C CNN
F 1 "GND" H 2505 4977 50  0000 C CNN
F 2 "" H 2500 5150 50  0001 C CNN
F 3 "" H 2500 5150 50  0001 C CNN
	1    2500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5150 2500 5050
Wire Wire Line
	2500 5050 2850 5050
Wire Wire Line
	2850 4850 2550 4850
Text GLabel 2550 4750 0    50   Input ~ 0
SDA
Wire Wire Line
	2550 4750 2850 4750
$Comp
L power:+5V #PWR05
U 1 1 6054A771
P 2250 4850
F 0 "#PWR05" H 2250 4700 50  0001 C CNN
F 1 "+5V" H 2265 5023 50  0000 C CNN
F 2 "" H 2250 4850 50  0001 C CNN
F 3 "" H 2250 4850 50  0001 C CNN
	1    2250 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4850 2250 4950
Wire Wire Line
	2250 4950 2850 4950
Wire Notes Line
	2000 4000 2000 6000
$Comp
L Shield_Projet_Capteur:Bluetooth_HC05 U31
U 1 1 6056A4CB
P 5600 4950
F 0 "U31" H 6428 5013 39  0000 L CNN
F 1 "Bluetooth_HC05" H 6428 4938 39  0000 L CNN
F 2 "Empreintes_Projet:Bluetooth_HC05" H 5750 5250 50  0001 C CNN
F 3 "" H 5750 5250 50  0001 C CNN
	1    5600 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 6057100D
P 4800 4850
F 0 "#PWR011" H 4800 4600 50  0001 C CNN
F 1 "GND" H 4805 4677 50  0000 C CNN
F 2 "" H 4800 4850 50  0001 C CNN
F 3 "" H 4800 4850 50  0001 C CNN
	1    4800 4850
	1    0    0    -1  
$EndComp
Text GLabel 5100 4950 0    50   Input ~ 0
RX
$Comp
L power:+5V #PWR012
U 1 1 60571018
P 4950 4750
F 0 "#PWR012" H 4950 4600 50  0001 C CNN
F 1 "+5V" H 4965 4923 50  0000 C CNN
F 2 "" H 4950 4750 50  0001 C CNN
F 3 "" H 4950 4750 50  0001 C CNN
	1    4950 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4750 5300 4750
Wire Wire Line
	5100 4950 5300 4950
Wire Wire Line
	5100 5050 5300 5050
Wire Wire Line
	4800 4850 5300 4850
$Comp
L Shield_Projet_Capteur:KY_040 U41
U 1 1 605A6DD6
P 8150 4900
F 0 "U41" H 8678 4946 50  0000 L CNN
F 1 "KY_040" H 8678 4855 50  0000 L CNN
F 2 "Empreintes_Projet:KY_040" H 8450 5000 50  0001 C CNN
F 3 "" H 8450 5000 50  0001 C CNN
	1    8150 4900
	1    0    0    -1  
$EndComp
Text GLabel 5100 5050 0    50   Input ~ 0
TX
Text GLabel 7550 4600 0    50   Input ~ 0
CLK
Text GLabel 7550 4750 0    50   Input ~ 0
DATA
Text GLabel 7550 4900 0    50   Input ~ 0
SWITCH
$Comp
L power:GND #PWR017
U 1 1 605AB278
P 7400 5200
F 0 "#PWR017" H 7400 4950 50  0001 C CNN
F 1 "GND" H 7405 5027 50  0000 C CNN
F 2 "" H 7400 5200 50  0001 C CNN
F 3 "" H 7400 5200 50  0001 C CNN
	1    7400 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 605AB855
P 7100 5050
F 0 "#PWR015" H 7100 4900 50  0001 C CNN
F 1 "+5V" H 7115 5223 50  0000 C CNN
F 2 "" H 7100 5050 50  0001 C CNN
F 3 "" H 7100 5050 50  0001 C CNN
	1    7100 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5050 7750 5050
Wire Wire Line
	7400 5200 7750 5200
Wire Wire Line
	7550 4600 7750 4600
Wire Wire Line
	7550 4750 7750 4750
Wire Wire Line
	7550 4900 7750 4900
Wire Notes Line
	2000 4000 9700 4000
Wire Notes Line
	2000 6000 9700 6000
Wire Notes Line
	9700 4000 9700 6000
Text Notes 2050 4100 0    50   ~ 0
Modules
NoConn ~ 10850 2000
NoConn ~ 10850 2100
$EndSCHEMATC
