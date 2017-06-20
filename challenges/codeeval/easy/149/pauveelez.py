#!/usr/bin/python
import os, sys

def jungZero(zero):
	return ''.join(zero[i+1] if zero[i] == '0' else zero[i+1].replace('0', '1')
				   for i in xrange(0, len(zero), 2))

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print int(jungZero(line.rstrip().split()), 2)
