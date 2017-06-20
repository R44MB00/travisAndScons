#!/usr/bin/python
import os
import sys
from itertools import groupby

def compress(seq):
	return ' '.join(['{} {}'.format(len(list(g)), k)
		for k, g in groupby(seq)])

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print compress(line.rstrip().split())
