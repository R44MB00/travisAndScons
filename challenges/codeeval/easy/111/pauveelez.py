#!/usr/bin/python
import os
import sys

def longges_word(word):
	w, i = word[0], len(word[0])
	for e in word:
		j = len(e)
		if j > i:
			w, i = e, j
	return w


fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print longges_word(line.split())
