#!/usr/bin/python
import os, sys


a = "A | B | C | D | E | F | G | H | I | J | K | L | M"
b = "U | V | W | X | Y | Z | N | O | P | Q | R | S | T"
c = {}


def solve(s):
	return [e.strip().lower() for e in s.split("|")]

for i, j in zip(solve(a), solve(b)):
	c[i], c[j] = j, i


fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			print("".join(c[e] for e in line.rstrip()))
