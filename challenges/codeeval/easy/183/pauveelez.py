#!/usr/bin/python
import os
import sys

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print min(
				ln.index('Y') - ln.rindex('X')
				for ln in line.rstrip().split(',')
			) - 1
