#!/usr/bin/python
import os, sys

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print " ".join(line.split()[::-1][0::2])
