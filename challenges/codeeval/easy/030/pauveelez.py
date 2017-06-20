#!/usr/bin/python
import os, sys

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			num = line.split(";")
			num = list(set(map(int, num[0].split(","))).intersection(map(int, num[1].split(","))))
			print ",".join(map(str, sorted(num)))
