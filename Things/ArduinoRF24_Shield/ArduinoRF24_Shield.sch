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
LIBS:special
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
LIBS:dev_boards
LIBS:modules
LIBS:arduino_shieldsNCL
LIBS:ArduinoRF24_Shield-cache
EELAYER 24 0
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
L NRF24 U1
U 1 1 53724665
P 8100 3150
F 0 "U1" H 8250 2700 60  0000 C CNN
F 1 "NRF24" H 8150 3600 60  0000 C CNN
F 2 "" H 8100 3150 60  0000 C CNN
F 3 "" H 8100 3150 60  0000 C CNN
	1    8100 3150
	1    0    0    -1  
$EndComp
Text Label 2800 2700 2    60   ~ 0
GND
Text Label 7400 2800 2    60   ~ 0
GND
Text Label 7400 2900 2    60   ~ 0
3v3
Text Label 2800 2500 2    60   ~ 0
3v3
$Comp
L SWITCH_INV SW1
U 1 1 537249B6
P 5700 3300
F 0 "SW1" H 5500 3450 50  0000 C CNN
F 1 "SWITCH_INV" H 5550 3150 50  0000 C CNN
F 2 "" H 5700 3300 60  0000 C CNN
F 3 "" H 5700 3300 60  0000 C CNN
	1    5700 3300
	-1   0    0    1   
$EndComp
$Comp
L NRF24 U2
U 1 1 53724AE1
P 8100 1850
F 0 "U2" H 8250 1400 60  0000 C CNN
F 1 "NRF24" H 8150 2300 60  0000 C CNN
F 2 "" H 8100 1850 60  0000 C CNN
F 3 "" H 8100 1850 60  0000 C CNN
	1    8100 1850
	1    0    0    -1  
$EndComp
Text Label 7400 1500 2    60   ~ 0
GND
Text Label 7400 1600 2    60   ~ 0
3v3
Text Label 7400 1700 2    60   ~ 0
CE
Text Label 7400 1800 2    60   ~ 0
CSN
Text Label 7400 1900 2    60   ~ 0
SCK
Text Label 7400 2000 2    60   ~ 0
MOSI
Text Label 7400 2100 2    60   ~ 0
MISO
Text Label 7400 2200 2    60   ~ 0
IRQ
Text Label 7400 3500 2    60   ~ 0
IRQ
Text Label 7400 3400 2    60   ~ 0
MISO
Text Label 7400 3300 2    60   ~ 0
MOSI
Text Label 7400 3200 2    60   ~ 0
SCK
Text Label 7400 3100 2    60   ~ 0
CSN
Text Label 7400 3000 2    60   ~ 0
CE
Wire Wire Line
	2800 2700 3000 2700
Wire Wire Line
	3000 2500 2800 2500
Wire Wire Line
	6200 3300 6500 3300
Wire Wire Line
	4900 3400 5200 3400
Wire Wire Line
	4900 3300 5100 3300
Wire Wire Line
	5100 3300 5100 3200
Wire Wire Line
	5100 3200 5200 3200
Wire Wire Line
	5100 3400 5100 3500
Wire Wire Line
	5100 3500 6300 3500
Connection ~ 5100 3400
Wire Wire Line
	7400 2800 7600 2800
Wire Wire Line
	7600 2900 7400 2900
Wire Wire Line
	7400 1600 7600 1600
Wire Wire Line
	7400 1500 7600 1500
Wire Wire Line
	7400 1700 7600 1700
Wire Wire Line
	7600 1800 7400 1800
Wire Wire Line
	7400 1900 7600 1900
Wire Wire Line
	7600 2000 7400 2000
Wire Wire Line
	7400 2100 7600 2100
Wire Wire Line
	7400 2200 7600 2200
Wire Wire Line
	7400 3500 7600 3500
Wire Wire Line
	7600 3400 7400 3400
Wire Wire Line
	7400 3300 7600 3300
Wire Wire Line
	7600 3200 7400 3200
Wire Wire Line
	7400 3100 7600 3100
Wire Wire Line
	7600 3000 7400 3000
Wire Wire Line
	6300 3500 6300 3300
Text Label 6500 3300 0    60   ~ 0
IRQ
Text Label 5100 2200 0    60   ~ 0
SCK
Text Label 5100 2600 0    60   ~ 0
CE
Text Label 5100 2500 0    60   ~ 0
CSN
Wire Wire Line
	4900 2200 5100 2200
Wire Wire Line
	5100 2500 4900 2500
Wire Wire Line
	4900 2600 5100 2600
Connection ~ 6300 3300
Text Label 5100 2300 0    60   ~ 0
MISO
Text Label 5100 2400 0    60   ~ 0
MOSI
Wire Wire Line
	4900 2400 5100 2400
Wire Wire Line
	5100 2300 4900 2300
$Comp
L ARDUINO_SHIELD SHIELD1
U 1 1 537263BD
P 3950 2800
F 0 "SHIELD1" H 3600 3750 60  0000 C CNN
F 1 "ARDUINO_SHIELD" H 4000 1850 60  0000 C CNN
F 2 "" H 3950 2800 60  0000 C CNN
F 3 "" H 3950 2800 60  0000 C CNN
	1    3950 2800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
