EESchema Schematic File Version 2
LIBS:Antennas_kl
LIBS:Connectors_kl
LIBS:pcb_details
LIBS:power
LIBS:Power_kl
LIBS:st_kl
LIBS:Tittar_kl
LIBS:Transistors_kl
LIBS:RF ICs
LIBS:memory
LIBS:ChibiArmlet-cache
EELAYER 27 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date "29 oct 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1350 6700 0    60   Italic 12
Debug port
Text Notes 1250 5400 0    60   Italic 12
Programming
Text Notes 5050 700  0    60   Italic 12
CPU
Text Notes 1800 9900 0    60   Italic 12
Indication
Text Notes 7700 9800 0    60   Italic 12
Power
Text Notes 12200 10950 0    60   Italic 12
WWPASS Reader G.II
Text Label 3650 1300 2    60   ~ 0
BLUE_LED
Text Label 3650 1400 2    60   ~ 0
RED_LED
$Comp
L GND #PWR01
U 1 1 5149BCE1
P 3700 4200
F 0 "#PWR01" H 3790 4180 30  0001 C CNN
F 1 "GND" H 3700 4120 30  0001 C CNN
F 2 "" H 3700 4200 60  0001 C CNN
F 3 "" H 3700 4200 60  0001 C CNN
	1    3700 4200
	1    0    0    -1  
$EndComp
Text Label 1150 10500 0    60   ~ 0
GREEN_LED
Text Label 1150 10700 0    60   ~ 0
BLUE_LED
Text Label 1150 10300 0    60   ~ 0
RED_LED
$Comp
L REFPOINT RP4
U 1 1 5149B6EF
P 14050 10250
F 0 "RP4" H 14750 10250 60  0000 C CNN
F 1 "REFPOINT" H 14400 10250 60  0000 C CNN
F 2 "" H 14050 10250 60  0001 C CNN
F 3 "" H 14050 10250 60  0001 C CNN
	1    14050 10250
	1    0    0    -1  
$EndComp
$Comp
L REFPOINT RP3
U 1 1 5149B6ED
P 14050 10000
F 0 "RP3" H 14750 10000 60  0000 C CNN
F 1 "REFPOINT" H 14400 10000 60  0000 C CNN
F 2 "" H 14050 10000 60  0001 C CNN
F 3 "" H 14050 10000 60  0001 C CNN
	1    14050 10000
	1    0    0    -1  
$EndComp
$Comp
L REFPOINT RP2
U 1 1 5149B6EB
P 14050 9750
F 0 "RP2" H 14750 9750 60  0000 C CNN
F 1 "REFPOINT" H 14400 9750 60  0000 C CNN
F 2 "" H 14050 9750 60  0001 C CNN
F 3 "" H 14050 9750 60  0001 C CNN
	1    14050 9750
	1    0    0    -1  
$EndComp
$Comp
L REFPOINT RP1
U 1 1 5149B6E8
P 14050 9500
F 0 "RP1" H 14750 9500 60  0000 C CNN
F 1 "REFPOINT" H 14400 9500 60  0000 C CNN
F 2 "" H 14050 9500 60  0001 C CNN
F 3 "" H 14050 9500 60  0001 C CNN
	1    14050 9500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5149A586
P 1950 6150
F 0 "#PWR02" H 2040 6130 30  0001 C CNN
F 1 "GND" H 1950 6070 30  0001 C CNN
F 2 "" H 1950 6150 60  0001 C CNN
F 3 "" H 1950 6150 60  0001 C CNN
	1    1950 6150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR03
U 1 1 5149A57E
P 1950 5950
F 0 "#PWR03" H 1950 5910 30  0001 C CNN
F 1 "+3.3V" H 2030 5980 30  0000 C CNN
F 2 "" H 1950 5950 60  0001 C CNN
F 3 "" H 1950 5950 60  0001 C CNN
	1    1950 5950
	1    0    0    -1  
$EndComp
Text Label 1950 5750 0    60   ~ 0
SWCLK
Text Label 1950 5850 0    60   ~ 0
SWDIO
NoConn ~ 6450 2800
Text Label 6650 2700 0    60   ~ 0
SWCLK
Text Label 6650 2600 0    60   ~ 0
SWDIO
$Comp
L GND #PWR04
U 1 1 5149A472
P 4900 4200
F 0 "#PWR04" H 4990 4180 30  0001 C CNN
F 1 "GND" H 4900 4120 30  0001 C CNN
F 2 "" H 4900 4200 60  0001 C CNN
F 3 "" H 4900 4200 60  0001 C CNN
	1    4900 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5149A46C
P 3450 4200
F 0 "#PWR05" H 3540 4180 30  0001 C CNN
F 1 "GND" H 3450 4120 30  0001 C CNN
F 2 "" H 3450 4200 60  0001 C CNN
F 3 "" H 3450 4200 60  0001 C CNN
	1    3450 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5149A469
P 3150 4200
F 0 "#PWR06" H 3240 4180 30  0001 C CNN
F 1 "GND" H 3150 4120 30  0001 C CNN
F 2 "" H 3150 4200 60  0001 C CNN
F 3 "" H 3150 4200 60  0001 C CNN
	1    3150 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5149A467
P 2650 4200
F 0 "#PWR07" H 2740 4180 30  0001 C CNN
F 1 "GND" H 2650 4120 30  0001 C CNN
F 2 "" H 2650 4200 60  0001 C CNN
F 3 "" H 2650 4200 60  0001 C CNN
	1    2650 4200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR08
U 1 1 5149A44F
P 3100 3350
F 0 "#PWR08" H 3100 3310 30  0001 C CNN
F 1 "+3.3V" H 3180 3380 30  0000 C CNN
F 2 "" H 3100 3350 60  0001 C CNN
F 3 "" H 3100 3350 60  0001 C CNN
	1    3100 3350
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 5149A448
P 2350 3150
F 0 "#PWR09" H 2350 3110 30  0001 C CNN
F 1 "+3.3V" H 2430 3180 30  0000 C CNN
F 2 "" H 2350 3150 60  0001 C CNN
F 3 "" H 2350 3150 60  0001 C CNN
	1    2350 3150
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR010
U 1 1 5149A441
P 3400 3650
F 0 "#PWR010" H 3400 3610 30  0001 C CNN
F 1 "+3.3V" H 3480 3680 30  0000 C CNN
F 2 "" H 3400 3650 60  0001 C CNN
F 3 "" H 3400 3650 60  0001 C CNN
	1    3400 3650
	-1   0    0    1   
$EndComp
$Comp
L C C13
U 1 1 5149A42D
P 2650 3900
F 0 "C13" H 2550 3800 50  0000 L CNN
F 1 "0.1u" H 2550 4000 50  0000 L CNN
F 2 "CAP_0402" V 2750 3750 28  0000 C BNN
F 3 "" H 2650 3900 60  0001 C CNN
	1    2650 3900
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 5149A385
P 3150 3900
F 0 "C14" H 3050 3800 50  0000 L CNN
F 1 "0.1u" H 3050 4000 50  0000 L CNN
F 2 "CAP_0402" V 3250 3750 28  0000 C BNN
F 3 "" H 3150 3900 60  0001 C CNN
	1    3150 3900
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 5149A370
P 3700 3900
F 0 "C16" H 3600 3800 50  0000 L CNN
F 1 "1u" H 3600 4000 50  0000 L CNN
F 2 "CAP_0402" V 3800 3750 28  0000 C BNN
F 3 "" H 3700 3900 60  0001 C CNN
	1    3700 3900
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 5149A36D
P 3450 3900
F 0 "C15" H 3350 3800 50  0000 L CNN
F 1 "10n" H 3350 4000 50  0000 L CNN
F 2 "CAP_0402" V 3550 3750 28  0000 C BNN
F 3 "" H 3450 3900 60  0001 C CNN
	1    3450 3900
	1    0    0    -1  
$EndComp
NoConn ~ 3800 3000
Text Label 6650 2200 0    60   ~ 0
UART_TX
$Comp
L GND #PWR011
U 1 1 5149A28E
P 1600 7300
F 0 "#PWR011" H 1690 7280 30  0001 C CNN
F 1 "GND" H 1600 7220 30  0001 C CNN
F 2 "" H 1600 7300 60  0001 C CNN
F 3 "" H 1600 7300 60  0001 C CNN
	1    1600 7300
	-1   0    0    -1  
$EndComp
$Comp
L ST_SWD XL1
U 1 1 51499E97
P 1500 5900
F 0 "XL1" H 1350 6200 60  0000 C CNN
F 1 "ST_SWD" H 1700 6200 60  0000 C CNN
F 2 "" H 1500 5900 60  0001 C CNN
F 3 "" H 1500 5900 60  0001 C CNN
	1    1500 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 525CF187
P 2400 4200
F 0 "#PWR012" H 2490 4180 30  0001 C CNN
F 1 "GND" H 2400 4120 30  0001 C CNN
F 2 "" H 2400 4200 60  0001 C CNN
F 3 "" H 2400 4200 60  0001 C CNN
	1    2400 4200
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 525CF18D
P 2400 3900
F 0 "C12" H 2300 3800 50  0000 L CNN
F 1 "10u" H 2300 4000 50  0000 L CNN
F 2 "CAP_0805" V 2500 3750 28  0000 C BNN
F 3 "" H 2400 3900 60  0001 C CNN
	1    2400 3900
	1    0    0    -1  
$EndComp
Text Label 3650 1800 2    60   ~ 0
GREEN_LED
Text Notes 11150 1400 0    60   ~ 0
Radio
$Comp
L CRYSTAL_H XTAL1
U 1 1 5265B349
P 9300 3150
F 0 "XTAL1" H 9250 3450 60  0000 C CNN
F 1 "27MHz" H 9300 3350 60  0000 C CNN
F 2 "03225" H 9325 3275 39  0000 C CNN
F 3 "" H 9300 3150 60  0001 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 5265B34F
P 9550 3400
F 0 "C10" H 9450 3300 50  0000 L CNN
F 1 "10pF" H 9450 3500 50  0000 L CNN
F 2 "CAP_0402" V 9650 3250 28  0000 C BNN
F 3 "" H 9550 3400 60  0001 C CNN
	1    9550 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5265B355
P 9550 3700
F 0 "#PWR013" H 9640 3680 30  0001 C CNN
F 1 "GND" H 9550 3620 30  0001 C CNN
F 2 "" H 9550 3700 60  0001 C CNN
F 3 "" H 9550 3700 60  0001 C CNN
	1    9550 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5265B35B
P 9050 3700
F 0 "#PWR014" H 9140 3680 30  0001 C CNN
F 1 "GND" H 9050 3620 30  0001 C CNN
F 2 "" H 9050 3700 60  0001 C CNN
F 3 "" H 9050 3700 60  0001 C CNN
	1    9050 3700
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5265B361
P 9050 3400
F 0 "C9" H 8950 3300 50  0000 L CNN
F 1 "10pF" H 8950 3500 50  0000 L CNN
F 2 "CAP_0402" V 9150 3250 28  0000 C BNN
F 3 "" H 9050 3400 60  0001 C CNN
	1    9050 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5265B367
P 9300 3700
F 0 "#PWR015" H 9390 3680 30  0001 C CNN
F 1 "GND" H 9300 3620 30  0001 C CNN
F 2 "" H 9300 3700 60  0001 C CNN
F 3 "" H 9300 3700 60  0001 C CNN
	1    9300 3700
	1    0    0    -1  
$EndComp
Text Label 9650 2500 0    60   ~ 0
CC_GDO2
$Comp
L +3.3V #PWR016
U 1 1 5265B39E
P 11750 2800
F 0 "#PWR016" H 11750 2760 30  0001 C CNN
F 1 "+3.3V" H 11830 2830 30  0000 C CNN
F 2 "" H 11750 2800 60  0001 C CNN
F 3 "" H 11750 2800 60  0001 C CNN
	1    11750 2800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR017
U 1 1 5265B3A4
P 12000 2700
F 0 "#PWR017" H 12000 2660 30  0001 C CNN
F 1 "+3.3V" H 12080 2730 30  0000 C CNN
F 2 "" H 12000 2700 60  0001 C CNN
F 3 "" H 12000 2700 60  0001 C CNN
	1    12000 2700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR018
U 1 1 5265B3AA
P 12250 2600
F 0 "#PWR018" H 12250 2560 30  0001 C CNN
F 1 "+3.3V" H 12330 2630 30  0000 C CNN
F 2 "" H 12250 2600 60  0001 C CNN
F 3 "" H 12250 2600 60  0001 C CNN
	1    12250 2600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR019
U 1 1 5265B3B0
P 12500 2500
F 0 "#PWR019" H 12500 2460 30  0001 C CNN
F 1 "+3.3V" H 12580 2530 30  0000 C CNN
F 2 "" H 12500 2500 60  0001 C CNN
F 3 "" H 12500 2500 60  0001 C CNN
	1    12500 2500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR020
U 1 1 5265B3B6
P 12750 2400
F 0 "#PWR020" H 12750 2360 30  0001 C CNN
F 1 "+3.3V" H 12830 2430 30  0000 C CNN
F 2 "" H 12750 2400 60  0001 C CNN
F 3 "" H 12750 2400 60  0001 C CNN
	1    12750 2400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR021
U 1 1 5265B3BC
P 13000 2300
F 0 "#PWR021" H 13000 2260 30  0001 C CNN
F 1 "+3.3V" H 13080 2330 30  0000 C CNN
F 2 "" H 13000 2300 60  0001 C CNN
F 3 "" H 13000 2300 60  0001 C CNN
	1    13000 2300
	1    0    0    -1  
$EndComp
Text Label 9650 2400 0    60   ~ 0
CC_GDO0
Text Label 9650 2200 0    60   ~ 0
CC_CS
Text Label 9650 1900 0    60   ~ 0
CC_SCK
Text Label 9650 2100 0    60   ~ 0
CC_MISO
Text Label 9650 2000 0    60   ~ 0
CC_MOSI
$Comp
L CC1101 DD2
U 1 1 5265B3C7
P 10900 2550
F 0 "DD2" H 10450 3350 60  0000 C CNN
F 1 "CC1101" H 11200 3350 60  0000 C CNN
F 2 "" H 10900 2550 60  0001 C CNN
F 3 "" H 10900 2550 60  0001 C CNN
	1    10900 2550
	1    0    0    -1  
$EndComp
Text Label 12400 2100 0    60   ~ 0
RF2
Text Label 12400 1900 0    60   ~ 0
RF1
$Comp
L GND #PWR022
U 1 1 5265B3CF
P 12950 3300
F 0 "#PWR022" H 13040 3280 30  0001 C CNN
F 1 "GND" H 12950 3220 30  0001 C CNN
F 2 "" H 12950 3300 60  0001 C CNN
F 3 "" H 12950 3300 60  0001 C CNN
	1    12950 3300
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5265B3D5
P 12950 3050
F 0 "C8" H 12850 3150 50  0000 L CNN
F 1 "220pF" H 12850 2950 50  0000 L CNN
F 2 "" H 12950 3050 60  0001 C CNN
F 3 "" H 12950 3050 60  0001 C CNN
	1    12950 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 5265B3DB
P 12450 3300
F 0 "#PWR023" H 12540 3280 30  0001 C CNN
F 1 "GND" H 12450 3220 30  0001 C CNN
F 2 "" H 12450 3300 60  0001 C CNN
F 3 "" H 12450 3300 60  0001 C CNN
	1    12450 3300
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5265B3E1
P 12450 3050
F 0 "C6" H 12350 3150 50  0000 L CNN
F 1 "10n" H 12350 2900 50  0000 L CNN
F 2 "" H 12450 3050 60  0001 C CNN
F 3 "" H 12450 3050 60  0001 C CNN
	1    12450 3050
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5265B3E7
P 12700 3050
F 0 "C7" H 12600 3150 50  0000 L CNN
F 1 "0.1u" H 12600 2950 50  0000 L CNN
F 2 "" H 12700 3050 60  0001 C CNN
F 3 "" H 12700 3050 60  0001 C CNN
	1    12700 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 5265B3ED
P 12700 3300
F 0 "#PWR024" H 12790 3280 30  0001 C CNN
F 1 "GND" H 12700 3220 30  0001 C CNN
F 2 "" H 12700 3300 60  0001 C CNN
F 3 "" H 12700 3300 60  0001 C CNN
	1    12700 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 5265B3F3
P 12200 3300
F 0 "#PWR025" H 12290 3280 30  0001 C CNN
F 1 "GND" H 12200 3220 30  0001 C CNN
F 2 "" H 12200 3300 60  0001 C CNN
F 3 "" H 12200 3300 60  0001 C CNN
	1    12200 3300
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5265B3F9
P 12200 3050
F 0 "C5" H 12100 3150 50  0000 L CNN
F 1 "3.3pF" H 12100 2950 50  0000 L CNN
F 2 "" H 12200 3050 60  0001 C CNN
F 3 "" H 12200 3050 60  0001 C CNN
	1    12200 3050
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5265B3FF
P 11950 3050
F 0 "C4" H 11850 3150 50  0000 L CNN
F 1 "10n" H 11850 2900 50  0000 L CNN
F 2 "" H 11950 3050 60  0001 C CNN
F 3 "" H 11950 3050 60  0001 C CNN
	1    11950 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 5265B405
P 11950 3300
F 0 "#PWR026" H 12040 3280 30  0001 C CNN
F 1 "GND" H 11950 3220 30  0001 C CNN
F 2 "" H 11950 3300 60  0001 C CNN
F 3 "" H 11950 3300 60  0001 C CNN
	1    11950 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 5265B40B
P 11700 3300
F 0 "#PWR027" H 11790 3280 30  0001 C CNN
F 1 "GND" H 11700 3220 30  0001 C CNN
F 2 "" H 11700 3300 60  0001 C CNN
F 3 "" H 11700 3300 60  0001 C CNN
	1    11700 3300
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5265B411
P 11700 3050
F 0 "C3" H 11600 3150 50  0000 L CNN
F 1 "220pF" H 11600 2950 50  0000 L CNN
F 2 "" H 11700 3050 60  0001 C CNN
F 3 "" H 11700 3050 60  0001 C CNN
	1    11700 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5265B417
P 11550 3300
F 0 "#PWR028" H 11640 3280 30  0001 C CNN
F 1 "GND" H 11550 3220 30  0001 C CNN
F 2 "" H 11550 3300 60  0001 C CNN
F 3 "" H 11550 3300 60  0001 C CNN
	1    11550 3300
	1    0    0    -1  
$EndComp
$Comp
L TESTPOINT TP1
U 1 1 5265B41D
P 9500 2400
F 0 "TP1" V 9500 2600 60  0000 C CNN
F 1 "TESTPOINT" H 9475 2625 60  0001 C CNN
F 2 "" H 9500 2400 60  0001 C CNN
F 3 "" H 9500 2400 60  0001 C CNN
	1    9500 2400
	0    -1   -1   0   
$EndComp
$Comp
L TESTPOINT TP2
U 1 1 5265B423
P 9500 2500
F 0 "TP2" V 9500 2700 60  0000 C CNN
F 1 "TESTPOINT" H 9475 2725 60  0001 C CNN
F 2 "" H 9500 2500 60  0001 C CNN
F 3 "" H 9500 2500 60  0001 C CNN
	1    9500 2500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR029
U 1 1 5265B429
P 10850 3700
F 0 "#PWR029" H 10940 3680 30  0001 C CNN
F 1 "GND" H 10850 3620 30  0001 C CNN
F 2 "" H 10850 3700 60  0001 C CNN
F 3 "" H 10850 3700 60  0001 C CNN
	1    10850 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 5265B42F
P 9850 3700
F 0 "#PWR030" H 9940 3680 30  0001 C CNN
F 1 "GND" H 9850 3620 30  0001 C CNN
F 2 "" H 9850 3700 60  0001 C CNN
F 3 "" H 9850 3700 60  0001 C CNN
	1    9850 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 5265B435
P 10100 3700
F 0 "#PWR031" H 10190 3680 30  0001 C CNN
F 1 "GND" H 10100 3620 30  0001 C CNN
F 2 "" H 10100 3700 60  0001 C CNN
F 3 "" H 10100 3700 60  0001 C CNN
	1    10100 3700
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 5265B43B
P 9850 3400
F 0 "C11" H 9850 3500 50  0000 L CNN
F 1 "0.1u" H 9850 3300 50  0000 L CNN
F 2 "" H 9850 3400 60  0001 C CNN
F 3 "" H 9850 3400 60  0001 C CNN
	1    9850 3400
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5265B441
P 10100 3400
F 0 "R2" V 10180 3400 50  0000 C CNN
F 1 "56k" V 10100 3400 50  0000 C CNN
F 2 "" H 10100 3400 60  0001 C CNN
F 3 "" H 10100 3400 60  0001 C CNN
	1    10100 3400
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5265B45F
P 14450 2400
F 0 "C2" H 14500 2500 50  0000 L CNN
F 1 "1.8pF" H 14500 2300 50  0000 L CNN
F 2 "" H 14450 2400 60  0001 C CNN
F 3 "" H 14450 2400 60  0001 C CNN
	1    14450 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 5265B465
P 14450 2650
F 0 "#PWR032" H 14540 2630 30  0001 C CNN
F 1 "GND" H 14450 2570 30  0001 C CNN
F 2 "" H 14450 2650 60  0001 C CNN
F 3 "" H 14450 2650 60  0001 C CNN
	1    14450 2650
	1    0    0    -1  
$EndComp
Text Notes 13150 1400 0    60   ~ 0
Matching circuit
Text Label 6550 1500 0    60   ~ 0
CC_GDO2
Text Label 6550 1600 0    60   ~ 0
CC_GDO0
Text Label 6550 1700 0    60   ~ 0
CC_CS
Text Label 6550 1800 0    60   ~ 0
CC_SCK
Text Label 6550 1900 0    60   ~ 0
CC_MISO
Text Label 6550 2000 0    60   ~ 0
CC_MOSI
$Comp
L R R1
U 1 1 5265B644
P 7350 1300
F 0 "R1" V 7430 1150 50  0000 C CNN
F 1 "1k" V 7350 1300 50  0000 C CNN
F 2 "RES_0402" V 7430 1400 28  0000 C CNN
F 3 "" H 7350 1300 60  0001 C CNN
	1    7350 1300
	0    -1   -1   0   
$EndComp
$Comp
L +BATT #PWR033
U 1 1 5265B651
P 7700 1300
F 0 "#PWR033" H 7700 1260 30  0001 C CNN
F 1 "+BATT" H 7780 1330 30  0000 C CNN
F 2 "" H 7700 1300 60  0000 C CNN
F 3 "" H 7700 1300 60  0000 C CNN
	1    7700 1300
	1    0    0    -1  
$EndComp
$Comp
L BAT B3
U 1 1 52664780
P 6250 10550
F 0 "B3" H 5950 10650 60  0000 C CNN
F 1 "BAT" H 5950 10750 60  0000 C CNN
F 2 "" H 6250 10550 60  0001 C CNN
F 3 "" H 6250 10550 60  0001 C CNN
	1    6250 10550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR034
U 1 1 52664786
P 9600 10300
F 0 "#PWR034" H 9600 10260 30  0001 C CNN
F 1 "+3.3V" H 9680 10330 30  0000 C CNN
F 2 "" H 9600 10300 60  0001 C CNN
F 3 "" H 9600 10300 60  0001 C CNN
	1    9600 10300
	1    0    0    -1  
$EndComp
Text Label 8100 10300 0    60   ~ 0
Lout
$Comp
L +BATT #PWR035
U 1 1 5266478D
P 7200 10150
F 0 "#PWR035" H 7200 10110 30  0001 C CNN
F 1 "+BATT" H 7280 10180 30  0000 C CNN
F 2 "" H 7200 10150 60  0001 C CNN
F 3 "" H 7200 10150 60  0001 C CNN
	1    7200 10150
	0    -1   -1   0   
$EndComp
$Comp
L C C23
U 1 1 52664793
P 9250 10550
F 0 "C23" H 9300 10650 50  0000 L CNN
F 1 "0.1u" H 9200 10450 50  0000 L CNN
F 2 "" H 9250 10550 60  0001 C CNN
F 3 "" H 9250 10550 60  0001 C CNN
	1    9250 10550
	1    0    0    -1  
$EndComp
$Comp
L C C24
U 1 1 52664799
P 9500 10550
F 0 "C24" H 9550 10650 50  0000 L CNN
F 1 "10u" H 9500 10450 50  0000 L CNN
F 2 "" H 9500 10550 60  0001 C CNN
F 3 "" H 9500 10550 60  0001 C CNN
	1    9500 10550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 5266479F
P 9250 10850
F 0 "#PWR036" H 9340 10830 30  0001 C CNN
F 1 "GND" H 9250 10770 30  0001 C CNN
F 2 "" H 9250 10850 60  0001 C CNN
F 3 "" H 9250 10850 60  0001 C CNN
	1    9250 10850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 526647A5
P 9500 10850
F 0 "#PWR037" H 9590 10830 30  0001 C CNN
F 1 "GND" H 9500 10770 30  0001 C CNN
F 2 "" H 9500 10850 60  0001 C CNN
F 3 "" H 9500 10850 60  0001 C CNN
	1    9500 10850
	1    0    0    -1  
$EndComp
$Comp
L D_SHOTTKY D2
U 1 1 526647AB
P 8550 10300
F 0 "D2" H 8400 10400 40  0000 C CNN
F 1 "BAT54WS" H 8650 10400 40  0000 C CNN
F 2 "" H 8550 10300 60  0001 C CNN
F 3 "" H 8550 10300 60  0001 C CNN
	1    8550 10300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 526647B1
P 8150 10850
F 0 "#PWR038" H 8240 10830 30  0001 C CNN
F 1 "GND" H 8150 10770 30  0001 C CNN
F 2 "" H 8150 10850 60  0001 C CNN
F 3 "" H 8150 10850 60  0001 C CNN
	1    8150 10850
	1    0    0    -1  
$EndComp
$Comp
L L L2
U 1 1 526647B7
P 7850 10300
F 0 "L2" V 7760 10210 40  0000 C CNN
F 1 "22uH" V 7750 10400 40  0000 C CNN
F 2 "" H 7850 10300 60  0001 C CNN
F 3 "" H 7850 10300 60  0001 C CNN
	1    7850 10300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR039
U 1 1 526647BD
P 7450 10850
F 0 "#PWR039" H 7540 10830 30  0001 C CNN
F 1 "GND" H 7450 10770 30  0001 C CNN
F 2 "" H 7450 10850 60  0001 C CNN
F 3 "" H 7450 10850 60  0001 C CNN
	1    7450 10850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 526647C3
P 7200 10850
F 0 "#PWR040" H 7290 10830 30  0001 C CNN
F 1 "GND" H 7200 10770 30  0001 C CNN
F 2 "" H 7200 10850 60  0001 C CNN
F 3 "" H 7200 10850 60  0001 C CNN
	1    7200 10850
	1    0    0    -1  
$EndComp
$Comp
L C C22
U 1 1 526647C9
P 7450 10550
F 0 "C22" H 7500 10650 50  0000 L CNN
F 1 "10u" H 7450 10450 50  0000 L CNN
F 2 "" H 7450 10550 60  0001 C CNN
F 3 "" H 7450 10550 60  0001 C CNN
	1    7450 10550
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 526647CF
P 7200 10550
F 0 "C21" H 7250 10650 50  0000 L CNN
F 1 "0.1u" H 7150 10450 50  0000 L CNN
F 2 "" H 7200 10550 60  0001 C CNN
F 3 "" H 7200 10550 60  0001 C CNN
	1    7200 10550
	1    0    0    -1  
$EndComp
$Comp
L NCP1400 DA1
U 1 1 526647D5
P 8600 10650
F 0 "DA1" H 8400 10900 60  0000 C CNN
F 1 "NCP1400" H 8800 10900 60  0000 C CNN
F 2 "" H 8600 10650 60  0001 C CNN
F 3 "" H 8600 10650 60  0001 C CNN
	1    8600 10650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 526647DB
P 6250 10850
F 0 "#PWR041" H 6340 10830 30  0001 C CNN
F 1 "GND" H 6250 10770 30  0001 C CNN
F 2 "" H 6250 10850 60  0001 C CNN
F 3 "" H 6250 10850 60  0001 C CNN
	1    6250 10850
	1    0    0    -1  
$EndComp
$Comp
L BALUN868JOHANSON BLN1
U 1 1 526657F6
P 13400 2000
F 0 "BLN1" H 13150 2350 60  0000 C CNN
F 1 "0896BM15A0001" H 13400 2250 60  0000 C CNN
F 2 "" H 13400 2000 60  0000 C CNN
F 3 "" H 13400 2000 60  0000 C CNN
	1    13400 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 52665933
P 13500 2500
F 0 "#PWR042" H 13590 2480 30  0001 C CNN
F 1 "GND" H 13500 2420 30  0001 C CNN
F 2 "" H 13500 2500 60  0001 C CNN
F 3 "" H 13500 2500 60  0001 C CNN
	1    13500 2500
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 52665AF6
P 14200 1900
F 0 "L1" V 14100 1760 40  0000 C CNN
F 1 "5.6nH" V 14100 1900 40  0000 C CNN
F 2 "IND_0402" V 14260 1910 40  0000 C CNN
F 3 "~" H 14200 1900 60  0000 C CNN
	1    14200 1900
	0    1    1    0   
$EndComp
Text Notes 13750 2100 0    60   ~ 0
L-07C5N6SV4
Text Notes 13700 2550 0    60   ~ 0
500R07S1R8BV4
$Comp
L GND #PWR043
U 1 1 5266DE3E
P 3400 10500
F 0 "#PWR043" H 3490 10480 30  0001 C CNN
F 1 "GND" H 3400 10420 30  0001 C CNN
F 2 "" H 3400 10500 60  0001 C CNN
F 3 "" H 3400 10500 60  0001 C CNN
	1    3400 10500
	0    -1   -1   0   
$EndComp
$Comp
L LED_RGB Q3
U 1 1 5266DE44
P 2800 10500
F 0 "Q3" H 2550 10950 60  0000 C CNN
F 1 "LED_RGB 5050" H 2800 10850 60  0000 C CNN
F 2 "" H 2800 10500 60  0001 C CNN
F 3 "" H 2800 10500 60  0001 C CNN
	1    2800 10500
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5266DE4A
P 1950 10700
F 0 "R10" V 2030 10550 50  0000 C CNN
F 1 "51R" V 1950 10700 50  0000 C CNN
F 2 "RES_0603" V 2030 10800 28  0000 C CNN
F 3 "" H 1950 10700 60  0001 C CNN
	1    1950 10700
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 5266DE50
P 1950 10500
F 0 "R9" V 2030 10350 50  0000 C CNN
F 1 "51R" V 1950 10500 50  0000 C CNN
F 2 "RES_0603" V 2030 10600 28  0000 C CNN
F 3 "" H 1950 10500 60  0001 C CNN
	1    1950 10500
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 5266DE56
P 1950 10300
F 0 "R8" V 2030 10150 50  0000 C CNN
F 1 "51R" V 1950 10300 50  0000 C CNN
F 2 "RES_0603" V 2030 10400 28  0000 C CNN
F 3 "" H 1950 10300 60  0001 C CNN
	1    1950 10300
	0    -1   -1   0   
$EndComp
Text Notes 1400 8350 0    60   ~ 0
Peripheral\nI2C Pull-Ups
$Comp
L R R6
U 1 1 5266EDFD
P 2350 8350
F 0 "R6" V 2430 8200 50  0000 C CNN
F 1 "4K7" V 2350 8350 50  0000 C CNN
F 2 "RES_0402" V 2430 8450 28  0000 C CNN
F 3 "" H 2350 8350 60  0001 C CNN
	1    2350 8350
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 5266EE03
P 2150 8350
F 0 "R5" V 2230 8200 50  0000 C CNN
F 1 "4K7" V 2150 8350 50  0000 C CNN
F 2 "RES_0402" V 2230 8450 28  0000 C CNN
F 3 "" H 2150 8350 60  0001 C CNN
	1    2150 8350
	-1   0    0    1   
$EndComp
Text Label 2450 8750 0    60   ~ 0
PeriphPwr1
Text Notes 950  8900 0    60   ~ 0
Pill \nConnector
$Comp
L CONN_4 XL4
U 1 1 5266EE0B
P 1650 8900
F 0 "XL4" V 1600 8900 40  0000 C CNN
F 1 "CONN_4" V 1700 8900 40  0000 C CNN
F 2 "" H 1650 8900 60  0001 C CNN
F 3 "" H 1650 8900 60  0001 C CNN
	1    1650 8900
	1    0    0    -1  
$EndComp
Text Label 2450 9050 0    60   ~ 0
P_SDA
Text Label 2450 8850 0    60   ~ 0
P_SCL
$Comp
L GND #PWR044
U 1 1 5266EE13
P 2000 8950
F 0 "#PWR044" H 2090 8930 30  0001 C CNN
F 1 "GND" H 2000 8870 30  0001 C CNN
F 2 "" H 2000 8950 60  0001 C CNN
F 3 "" H 2000 8950 60  0001 C CNN
	1    2000 8950
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 5266EE19
P 3050 8350
F 0 "R7" V 3130 8200 50  0000 C CNN
F 1 "150" V 3050 8350 50  0000 C CNN
F 2 "RES_0603" V 3130 8450 28  0000 C CNN
F 3 "" H 3050 8350 60  0001 C CNN
	1    3050 8350
	-1   0    0    1   
$EndComp
Text Label 3200 8050 0    60   ~ 0
PeriphPwr
Text Label 3300 2100 0    60   ~ 0
P_SCL
Text Label 3300 2200 0    60   ~ 0
P_SDA
Text Label 3300 2000 0    60   ~ 0
PeriphPwr
$Comp
L BUZZER BZ1
U 1 1 52670A22
P 14300 6300
F 0 "BZ1" H 14500 6400 60  0000 C CNN
F 1 "BUZZER" H 14600 6200 60  0000 C CNN
F 2 "" H 14300 6300 60  0001 C CNN
F 3 "" H 14300 6300 60  0001 C CNN
	1    14300 6300
	0    -1   1    0   
$EndComp
Text Label 13550 6300 0    60   ~ 0
BuzzerOut
Text Label 12250 6650 0    60   ~ 0
Buzzer
$Comp
L R R4
U 1 1 52670A2A
P 12950 6650
F 0 "R4" V 13030 6650 50  0000 C CNN
F 1 "1k" V 12950 6650 50  0000 C CNN
F 2 "" H 12950 6650 60  0001 C CNN
F 3 "" H 12950 6650 60  0001 C CNN
	1    12950 6650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR045
U 1 1 52670A30
P 13650 6950
F 0 "#PWR045" H 13740 6930 30  0001 C CNN
F 1 "GND" H 13650 6870 30  0001 C CNN
F 2 "" H 13650 6950 60  0001 C CNN
F 3 "" H 13650 6950 60  0001 C CNN
	1    13650 6950
	1    0    0    -1  
$EndComp
$Comp
L NPN Q2
U 1 1 52670A36
P 13600 6650
F 0 "Q2" H 13800 6700 60  0000 C CNN
F 1 "MMBT2222" H 13950 6600 60  0000 C CNN
F 2 "" H 13600 6650 60  0001 C CNN
F 3 "" H 13600 6650 60  0001 C CNN
	1    13600 6650
	1    0    0    -1  
$EndComp
Text Label 3350 1600 0    60   ~ 0
Buzzer
Text Notes 1750 7850 0    60   Italic 12
Pill
NoConn ~ 3800 1900
Text Label 6650 2300 0    60   ~ 0
UART_RX
Text Label 1850 7050 0    60   ~ 0
UART_TX
Text Label 1850 6950 0    60   ~ 0
UART_RX
$Comp
L CONN_3 XL2
U 1 1 526728AC
P 1400 7050
F 0 "XL2" V 1350 7050 40  0000 C CNN
F 1 "CONN_3" V 1450 7050 40  0000 C CNN
F 2 "~" H 1400 7050 60  0000 C CNN
F 3 "~" H 1400 7050 60  0000 C CNN
	1    1400 7050
	1    0    0    1   
$EndComp
Text Notes 6050 9850 0    60   ~ 0
1xAAA
Wire Wire Line
	1950 6150 1950 6050
Wire Wire Line
	1950 6050 1850 6050
Wire Wire Line
	1950 5750 1850 5750
Wire Wire Line
	6450 2600 6650 2600
Wire Wire Line
	3700 4100 3700 4200
Wire Wire Line
	2650 4100 2650 4200
Wire Wire Line
	6450 2200 6650 2200
Wire Wire Line
	1600 7150 1600 7300
Wire Wire Line
	3150 4100 3150 4200
Wire Wire Line
	3450 4100 3450 4200
Wire Wire Line
	6450 2700 6650 2700
Wire Wire Line
	1850 5850 1950 5850
Wire Wire Line
	1850 5950 1950 5950
Wire Wire Line
	1600 6950 1850 6950
Wire Wire Line
	2400 4100 2400 4200
Wire Wire Line
	9550 3200 9550 2800
Wire Wire Line
	9550 2800 10150 2800
Wire Wire Line
	10150 2700 9050 2700
Wire Wire Line
	9050 2700 9050 3200
Wire Wire Line
	9550 3600 9550 3700
Connection ~ 9550 3150
Wire Wire Line
	9150 3150 9050 3150
Connection ~ 9050 3150
Wire Wire Line
	10150 2200 9650 2200
Wire Wire Line
	10150 2000 9650 2000
Connection ~ 12950 2300
Wire Wire Line
	12950 2300 12950 2850
Connection ~ 12700 2400
Wire Wire Line
	12700 2400 12700 2850
Connection ~ 12450 2500
Wire Wire Line
	12450 2500 12450 2850
Connection ~ 12200 2600
Wire Wire Line
	12250 2600 11500 2600
Connection ~ 11950 2700
Wire Wire Line
	12000 2700 11500 2700
Wire Wire Line
	12950 3250 12950 3300
Wire Wire Line
	12450 3250 12450 3300
Wire Wire Line
	12700 3250 12700 3300
Wire Wire Line
	12200 3250 12200 3300
Wire Wire Line
	11950 3250 11950 3300
Connection ~ 11700 2800
Wire Wire Line
	11750 2800 11500 2800
Wire Wire Line
	11550 3300 11550 3000
Connection ~ 11550 3100
Wire Wire Line
	11500 3100 11550 3100
Wire Wire Line
	10150 2400 9500 2400
Wire Wire Line
	10850 3550 10850 3700
Wire Wire Line
	9850 3600 9850 3700
Wire Wire Line
	10150 3000 9850 3000
Wire Wire Line
	9850 3000 9850 3200
Wire Wire Line
	10100 3150 10100 3100
Wire Wire Line
	10100 3100 10150 3100
Wire Wire Line
	10100 3650 10100 3700
Wire Wire Line
	11550 3000 11500 3000
Wire Wire Line
	11700 3250 11700 3300
Wire Wire Line
	11700 2850 11700 2800
Wire Wire Line
	11950 2850 11950 2700
Wire Wire Line
	12200 2850 12200 2600
Wire Wire Line
	11500 2500 12500 2500
Wire Wire Line
	11500 2400 12750 2400
Wire Wire Line
	13000 2300 11500 2300
Wire Wire Line
	9650 1900 10150 1900
Wire Wire Line
	9650 2100 10150 2100
Wire Wire Line
	9500 2500 10150 2500
Wire Wire Line
	9050 3600 9050 3700
Wire Wire Line
	9300 3300 9300 3700
Wire Wire Line
	9450 3150 9550 3150
Wire Wire Line
	14450 1900 14450 2200
Wire Wire Line
	14450 2600 14450 2650
Wire Wire Line
	7700 1300 7600 1300
Wire Wire Line
	6450 1300 7100 1300
Wire Wire Line
	8150 10300 8150 10550
Connection ~ 9250 10300
Wire Wire Line
	9250 10300 9250 10350
Wire Wire Line
	9500 10750 9500 10850
Wire Wire Line
	9250 10750 9250 10850
Connection ~ 9050 10550
Wire Wire Line
	9050 10650 9000 10650
Connection ~ 8150 10300
Wire Wire Line
	8150 10750 8150 10850
Connection ~ 7450 10300
Wire Wire Line
	7200 10750 7200 10850
Wire Wire Line
	7450 10300 7450 10350
Connection ~ 7200 10300
Wire Wire Line
	7450 10750 7450 10850
Wire Wire Line
	8050 10300 8350 10300
Wire Wire Line
	9050 10550 9000 10550
Connection ~ 9050 10300
Wire Wire Line
	8750 10300 9600 10300
Connection ~ 9500 10300
Wire Wire Line
	7200 10150 7200 10350
Wire Wire Line
	9050 10300 9050 10650
Wire Wire Line
	9500 10300 9500 10350
Wire Wire Line
	6250 10850 6250 10800
Wire Wire Line
	6550 1600 6450 1600
Wire Wire Line
	6450 1700 6550 1700
Wire Wire Line
	6550 1800 6450 1800
Wire Wire Line
	6450 1900 6550 1900
Wire Wire Line
	6550 2000 6450 2000
Wire Wire Line
	6450 1500 6550 1500
Wire Wire Line
	12950 1900 11500 1900
Wire Wire Line
	11500 2100 12950 2100
Wire Wire Line
	13500 2500 13500 2350
Wire Wire Line
	13400 2350 13400 2400
Wire Wire Line
	13400 2400 13600 2400
Connection ~ 13500 2400
Wire Wire Line
	13600 2400 13600 2350
Wire Wire Line
	14000 1900 13850 1900
Wire Wire Line
	3300 10650 3200 10650
Wire Wire Line
	3200 10500 3400 10500
Wire Wire Line
	2200 10700 2300 10700
Wire Wire Line
	2300 10700 2300 10650
Wire Wire Line
	2300 10650 2400 10650
Wire Wire Line
	2200 10300 2300 10300
Wire Wire Line
	2300 10300 2300 10350
Wire Wire Line
	2300 10350 2400 10350
Wire Wire Line
	3300 10350 3200 10350
Connection ~ 3300 10500
Wire Wire Line
	2200 10500 2400 10500
Wire Wire Line
	3300 10350 3300 10650
Wire Wire Line
	1150 10700 1700 10700
Wire Wire Line
	1700 10500 1150 10500
Wire Wire Line
	1150 10300 1700 10300
Connection ~ 3050 8050
Wire Wire Line
	3050 8100 3050 8050
Connection ~ 2350 9050
Wire Wire Line
	2450 9050 1850 9050
Wire Wire Line
	2350 9050 2350 8600
Wire Wire Line
	1850 8750 3050 8750
Wire Wire Line
	2150 8100 2150 8050
Wire Wire Line
	2000 8950 1850 8950
Wire Wire Line
	2350 8100 2350 8050
Connection ~ 2350 8050
Wire Wire Line
	2150 8850 2150 8600
Wire Wire Line
	2450 8850 1850 8850
Connection ~ 2150 8850
Wire Wire Line
	2150 8050 3200 8050
Wire Wire Line
	3050 8750 3050 8600
Wire Wire Line
	3800 2100 3300 2100
Wire Wire Line
	3800 2200 3300 2200
Wire Wire Line
	3300 2000 3800 2000
Wire Wire Line
	3650 1800 3800 1800
Wire Wire Line
	3650 1300 3800 1300
Wire Wire Line
	3800 1400 3650 1400
Connection ~ 13650 6300
Wire Wire Line
	14050 6300 13550 6300
Wire Wire Line
	13650 6450 13650 6300
Wire Wire Line
	12250 6650 12700 6650
Wire Wire Line
	14550 6300 14800 6300
Wire Wire Line
	13200 6650 13400 6650
Wire Wire Line
	13650 6850 13650 6950
Wire Wire Line
	3350 1600 3800 1600
Wire Notes Line
	450  4900 16050 4900
Wire Notes Line
	4150 4900 4150 11200
Wire Notes Line
	4150 8600 16000 8600
Wire Wire Line
	6650 2300 6450 2300
Wire Wire Line
	1850 7050 1600 7050
Wire Wire Line
	6250 10300 7650 10300
$Comp
L ANT_PCB_MONO_2PIN ANT1
U 1 1 526B6399
P 15200 1950
F 0 "ANT1" H 15000 2200 60  0000 C CNN
F 1 "ANT_PCB_MONO_2PIN" H 15350 1650 60  0000 C CNN
F 2 "~" H 15200 1950 60  0000 C CNN
F 3 "~" H 15200 1950 60  0000 C CNN
	1    15200 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 526B63A6
P 15000 2100
F 0 "#PWR046" H 15090 2080 30  0001 C CNN
F 1 "GND" H 15000 2020 30  0001 C CNN
F 2 "" H 15000 2100 60  0001 C CNN
F 3 "" H 15000 2100 60  0001 C CNN
	1    15000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	15000 2000 15000 2100
Connection ~ 3450 3650
Connection ~ 3700 3650
Connection ~ 3150 3350
NoConn ~ 6450 3150
NoConn ~ 6450 3250
NoConn ~ 6450 3450
$Comp
L C C1
U 1 1 526CD506
P 14700 1900
F 0 "C1" V 14900 1750 50  0000 L CNN
F 1 "100pF" V 14900 1900 50  0000 L CNN
F 2 "CAP_0402" V 14800 1750 28  0000 C BNN
F 3 "~" H 14700 1900 60  0000 C CNN
	1    14700 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15000 1900 14900 1900
Wire Wire Line
	14400 1900 14500 1900
Connection ~ 14450 1900
Wire Wire Line
	3800 3650 3400 3650
Wire Wire Line
	3800 3350 3100 3350
$Comp
L +3.3V #PWR047
U 1 1 526D45BA
P 14800 6300
F 0 "#PWR047" H 14800 6260 30  0001 C CNN
F 1 "+3.3V" H 14880 6330 30  0000 C CNN
F 2 "" H 14800 6300 60  0000 C CNN
F 3 "" H 14800 6300 60  0000 C CNN
	1    14800 6300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR048
U 1 1 526D45C7
P 14650 6950
F 0 "#PWR048" H 14740 6930 30  0001 C CNN
F 1 "GND" H 14650 6870 30  0001 C CNN
F 2 "" H 14650 6950 60  0001 C CNN
F 3 "" H 14650 6950 60  0001 C CNN
	1    14650 6950
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 526D45CD
P 14650 6650
F 0 "C17" H 14550 6550 50  0000 L CNN
F 1 "10u" H 14550 6750 50  0000 L CNN
F 2 "CAP_0805" V 14750 6500 28  0000 C BNN
F 3 "" H 14650 6650 60  0001 C CNN
	1    14650 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	14650 6850 14650 6950
Wire Wire Line
	14650 6450 14650 6300
Connection ~ 14650 6300
Wire Wire Line
	6250 10300 6250 10350
NoConn ~ 6450 2100
NoConn ~ 6450 2400
NoConn ~ 6450 2500
NoConn ~ 6450 3550
NoConn ~ 6450 3650
NoConn ~ 3800 1700
$Comp
L STM32L100CX DD1
U 1 1 526E377D
P 5100 2500
F 0 "DD1" H 4600 3850 60  0000 C CNN
F 1 "STM32L100CX" H 5250 3850 60  0000 C CNN
F 2 "~" H 5100 2500 60  0000 C CNN
F 3 "~" H 5100 2500 60  0000 C CNN
	1    5100 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3950 4650 4050
Wire Wire Line
	4650 4050 5450 4050
Wire Wire Line
	5450 4050 5450 3950
Wire Wire Line
	4900 3950 4900 4200
Connection ~ 4900 4050
Wire Wire Line
	5050 3950 5050 4050
Connection ~ 5050 4050
Wire Wire Line
	5150 3950 5150 4050
Connection ~ 5150 4050
Wire Wire Line
	5250 3950 5250 4050
Connection ~ 5250 4050
NoConn ~ 3800 3500
Wire Wire Line
	3450 3700 3450 3650
Wire Wire Line
	3700 3700 3700 3650
Wire Wire Line
	3150 3700 3150 3350
$Comp
L GND #PWR049
U 1 1 526E3E25
P 2900 4200
F 0 "#PWR049" H 2990 4180 30  0001 C CNN
F 1 "GND" H 2900 4120 30  0001 C CNN
F 2 "" H 2900 4200 60  0001 C CNN
F 3 "" H 2900 4200 60  0001 C CNN
	1    2900 4200
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 526E3E2B
P 2900 3900
F 0 "C18" H 2800 3800 50  0000 L CNN
F 1 "0.1u" H 2800 4000 50  0000 L CNN
F 2 "CAP_0402" V 3000 3750 28  0000 C BNN
F 3 "" H 2900 3900 60  0001 C CNN
	1    2900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4100 2900 4200
$Comp
L +3.3V #PWR050
U 1 1 526E3E32
P 2850 3250
F 0 "#PWR050" H 2850 3210 30  0001 C CNN
F 1 "+3.3V" H 2930 3280 30  0000 C CNN
F 2 "" H 2850 3250 60  0001 C CNN
F 3 "" H 2850 3250 60  0001 C CNN
	1    2850 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 3700 2900 3250
Wire Wire Line
	2850 3250 3800 3250
Connection ~ 2900 3250
Wire Wire Line
	3800 3150 2350 3150
Wire Wire Line
	2400 3700 2400 3150
Connection ~ 2400 3150
Wire Wire Line
	2650 3700 2650 3150
Connection ~ 2650 3150
$Comp
L GND #PWR051
U 1 1 5270301A
P 6250 7100
F 0 "#PWR051" H 6340 7080 30  0001 C CNN
F 1 "GND" H 6250 7020 30  0001 C CNN
F 2 "" H 6250 7100 60  0000 C CNN
F 3 "" H 6250 7100 60  0000 C CNN
	1    6250 7100
	1    0    0    -1  
$EndComp
$Comp
L BUTTON SW1
U 1 1 52703029
P 5850 6200
F 0 "SW1" H 5650 6350 50  0000 C CNN
F 1 "BUTTON" H 5950 6350 50  0000 C CNN
F 2 "~" H 5850 6200 60  0000 C CNN
F 3 "~" H 5850 6200 60  0000 C CNN
	1    5850 6200
	1    0    0    -1  
$EndComp
$Comp
L BUTTON SW2
U 1 1 52703038
P 5850 6550
F 0 "SW2" H 5650 6700 50  0000 C CNN
F 1 "BUTTON" H 5950 6700 50  0000 C CNN
F 2 "~" H 5850 6550 60  0000 C CNN
F 3 "~" H 5850 6550 60  0000 C CNN
	1    5850 6550
	1    0    0    -1  
$EndComp
$Comp
L BUTTON SW3
U 1 1 52703047
P 5850 6900
F 0 "SW3" H 5650 7050 50  0000 C CNN
F 1 "BUTTON" H 5950 7050 50  0000 C CNN
F 2 "~" H 5850 6900 60  0000 C CNN
F 3 "~" H 5850 6900 60  0000 C CNN
	1    5850 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 7100 6250 6200
Wire Wire Line
	6250 6200 6150 6200
Wire Wire Line
	6150 6550 6250 6550
Connection ~ 6250 6550
Wire Wire Line
	6150 6900 6250 6900
Connection ~ 6250 6900
Text Label 5200 6200 0    60   ~ 0
BTN1
Text Label 5200 6550 0    60   ~ 0
BTN2
Text Label 5200 6900 0    60   ~ 0
BTN3
Wire Wire Line
	5550 6200 5200 6200
Wire Wire Line
	5550 6550 5200 6550
Wire Wire Line
	5550 6900 5200 6900
Text Label 6500 1400 0    60   ~ 0
BTN1
Text Label 3550 1500 0    60   ~ 0
BTN2
Text Label 3550 2800 0    60   ~ 0
BTN3
$Comp
L GND #PWR052
U 1 1 52704227
P 8350 7100
F 0 "#PWR052" H 8440 7080 30  0001 C CNN
F 1 "GND" H 8350 7020 30  0001 C CNN
F 2 "" H 8350 7100 60  0001 C CNN
F 3 "" H 8350 7100 60  0001 C CNN
	1    8350 7100
	0    -1   -1   0   
$EndComp
Text Notes 7400 6700 0    60   ~ 0
LCD
$Comp
L +3.3V #PWR053
U 1 1 5270422E
P 8500 6700
F 0 "#PWR053" H 8500 6660 30  0001 C CNN
F 1 "+3.3V" H 8580 6730 30  0000 C CNN
F 2 "" H 8500 6700 60  0001 C CNN
F 3 "" H 8500 6700 60  0001 C CNN
	1    8500 6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR054
U 1 1 52704234
P 8350 6850
F 0 "#PWR054" H 8440 6830 30  0001 C CNN
F 1 "GND" H 8350 6770 30  0001 C CNN
F 2 "" H 8350 6850 60  0001 C CNN
F 3 "" H 8350 6850 60  0001 C CNN
	1    8350 6850
	0    -1   -1   0   
$EndComp
Text Label 9150 7000 0    60   ~ 0
LCD_BCKLT
Text Label 8400 6150 0    60   ~ 0
LCD_SCLK
Text Label 8400 6250 0    60   ~ 0
LCD_SDA
Text Label 8400 6350 0    60   ~ 0
LCD_XCS
Text Label 8400 6450 0    60   ~ 0
LCD_XRES
Text Label 3350 2500 0    60   ~ 0
LCD_SCLK
Text Label 3350 2300 0    60   ~ 0
LCD_SDA
Text Label 3350 2400 0    60   ~ 0
LCD_XRES
Text Label 3350 2600 0    60   ~ 0
LCD_XCS
Text Label 3350 2700 0    60   ~ 0
LCD_BCKLT
Wire Wire Line
	3800 2700 3350 2700
Wire Wire Line
	3800 2600 3350 2600
Wire Wire Line
	3800 2400 3350 2400
Wire Wire Line
	3800 2300 3350 2300
Wire Wire Line
	3800 2500 3350 2500
Wire Wire Line
	8400 6450 8300 6450
Wire Wire Line
	8400 6250 8300 6250
Wire Wire Line
	8350 7100 8300 7100
Wire Wire Line
	8350 6850 8300 6850
Wire Wire Line
	8350 6650 8300 6650
Wire Wire Line
	8350 6650 8350 6750
Wire Wire Line
	8350 6750 8300 6750
Wire Wire Line
	8350 6700 8500 6700
Connection ~ 8350 6700
Wire Wire Line
	8300 7000 8500 7000
Wire Wire Line
	8300 6150 8400 6150
Wire Wire Line
	8300 6350 8400 6350
$Comp
L R R3
U 1 1 52704260
P 8750 7000
F 0 "R3" V 8830 6850 50  0000 C CNN
F 1 "51R" V 8750 7000 50  0000 C CNN
F 2 "RES_0603" V 8830 7100 28  0000 C CNN
F 3 "" H 8750 7000 60  0000 C CNN
	1    8750 7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 7000 9150 7000
$Comp
L CONN_NOKIA_LCD10 XL3
U 1 1 52704267
P 8000 6500
F 0 "XL3" V 7700 6700 60  0000 C CNN
F 1 "CONN_NOKIA_LCD10" V 7700 6150 60  0000 C CNN
F 2 "" H 8000 6500 60  0000 C CNN
F 3 "" H 8000 6500 60  0000 C CNN
	1    8000 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1400 6450 1400
Wire Wire Line
	3800 1500 3550 1500
Wire Wire Line
	3550 2800 3800 2800
$EndSCHEMATC
