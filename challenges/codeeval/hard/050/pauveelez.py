#!/usr/bin/python
import os
import sys

def substitution(s, ls):
	if s == "":
		return ""
	for j in xrange(0, len(ls), 2):
		i = s.find(ls[j])
		if i != -1:
			return substitution(s[:i], ls) + ls[j+1] + substitution(s[i+len(ls[j]):], ls)
	return s

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			s, sub = line.strip().split(";")
			print substitution(s, sub.split(",")) 
