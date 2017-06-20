#!/usr/bin/python
import os
import sys

def distances(line):
	p1, p2 = map(lambda e: map(int, e.split(",")),line.strip()[1:-1].split(") ("))
	print int((abs(p1[0]-p2[0])**2 + abs(p1[1]-p2[1])**2)**.5)

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			distances(line)
