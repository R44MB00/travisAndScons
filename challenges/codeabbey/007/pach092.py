#!/usr/bin/env python
"""This script does the conversion from fahrenheit to celsius"""
CELSIUS = raw_input().split()
FAHRENHEIT = 0
for temperatura in CELSIUS[1:]:
    FAHRENHEIT = int(round((float(temperatura)-32)*5/9))
    print FAHRENHEIT, ''
