# -*- coding: utf-8 -*-
import math
import sys
import re

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		a=re.findall('[\-0-9]+',line)
		a=map(int,a)
		print int(math.hypot(a[2] - a[0], a[3] - a[1]))
archivo.close()
