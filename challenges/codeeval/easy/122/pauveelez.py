#!/usr/bin/python
import os, sys

def hidden(string):
	r = ''
	for e in string:
		if 'a' <= e <= 'j':
			r += str(0 + ord(e) - ord('a'))
		elif '0' <= e <= '9':
			r += e
	return r if r else 'NONE'

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print hidden(line)
