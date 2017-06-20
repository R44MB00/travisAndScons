#!/usr/bin/python
import os, sys

def charNoRepeat(string):
	for c in string:
		if string.count(c) == 1:
			return c

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print charNoRepeat(line)
