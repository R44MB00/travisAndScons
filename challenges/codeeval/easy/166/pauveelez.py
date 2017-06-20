#!/usr/bin/python
import os
import sys

def get_delta(t1, t2):
	total_seconds = abs(sum((a-b) * 60**(2-i) for i, (a, b) in enumerate(zip(t1, t2))))
	hours, rem = divmod(total_seconds, 3600)
	minutes, seconds = divmod(rem, 60)
	return '{:02}:{:02}:{:02}'.format(*map(int, (hours, minutes, seconds)))

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print get_delta(*(map(int, e.split(':'))
				for e in line.rstrip().split()))
