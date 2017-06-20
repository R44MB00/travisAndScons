#!/usr/bin/python
import os
import sys

def brikab(n, s):
	return s - (n**2-3*n+2)/2

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			if line.strip() != "":
				n, l = line.split(";")
				print brikab(int(n), sum(map(int, l.split(","))))
