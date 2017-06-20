#!/usr/bin/python

from __future__ import division

'''
Write a program which determines the largest prime palindrome less than 1000.
'''
class prime_palindrome:
 	
 	check = False
 	not_a_prime = False
 	possible_pal = 0
 	denominator = 2.0
 	cont = 0
 	total = 0
 	control = False
 	possible_pals = []
 	for i in range(1000, -1, -1):
 		#total = 2
 		if i == 900:
 			break
 		while not control:

 			if check:
 				numerator = total
 				total = numerator / denominator
 			else:
	 			numerator = i
	 			total = numerator / denominator
	 		if str(total) == '1.0':
	 			control = True
 			if total == 1 or total == 1.0 or total is 1 or total is 1.0:
 				control = True
 			if total.is_integer():
 				check = True
 				cont += 1
 			else:
 				total *= denominator
 				denominator += 1

 			if denominator == i:
 				break

 		if cont > 0:
 			control = False
 			denominator = 2.0
 			check = False
 			cont = 0
 			continue
 		else:
 			possible_pal = str(i)
 			if len(possible_pal) == 3:
 				if possible_pal[0] == possible_pal[2]:
 					possible_pals.append(possible_pal)
 			control = False
 			denominator = 2.0
 			check = False
 			cont = 0

 	if possible_pals[0] > possible_pals[1]:
 		print possible_pals[0]

x = prime_palindrome()






