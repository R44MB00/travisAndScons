#!/usr/bin/python
import os, sys
from itertools import product

telephone = { "0": "0", "1": "1", "2": "abc",
	  "3": "def", "4": "ghi", "5": "jkl",
	  "6": "mno", "7": "pqrs", "8": "tuv",
	  "9": "wxyz" }

def telNumbers(num):
	ls = map(lambda e: "".join(list(e)), product(*map(lambda i: tuple(telephone[i]), num)))
	return ",".join(ls)

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print telNumbers(line.strip())
