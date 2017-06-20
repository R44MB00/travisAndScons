#!/usr/bin/python
import os, sys

def trailing(line):
	s, tr = line.strip().split(",")
	print s[::-1].count(tr[::-1], 0, len(tr))

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			trailing(line)
