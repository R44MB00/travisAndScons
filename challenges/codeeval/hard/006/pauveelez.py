#!/usr/bin/python
import os
import sys

cache = {}

def longgestSub(n, m):
	if len(n) == 0 or len(m) == 0:
		return ""
	k = n + m
	if k in cache:
		return cache[n+m]
	s = n[0] if n[0] == m[0] else "" 
	cache[k] = sorted([longgestSub(n[1:], m), longgestSub(n, m[1:]), s + longgestSub(n[1:], m[1:])], key=len)[2]
	return cache[k]

fn = sys.argv[1]
if os.path.exists(fn):
	with open(str(fn), 'r') as f:
		for line in f:
			if line.strip() != "":
				n, m = line.split(";")
				cache = {}
				print longgestSub(n, m)
