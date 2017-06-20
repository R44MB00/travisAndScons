#!/usr/bin/python

from __future__ import division

'''
Write a program which determines the sum of the first 1000 prime numbers.
'''
class sum_prime:
 	
 	check = False
 	possible_pal = 0
 	denominator = 2.0
 	cont = 0
 	total = 0
 	control = False
 	prime_sum = 0
 	prime_cont = 0
 	for i in range(100000):
 		#total = 2
 		if i == 0 or i == 1:
 			continue
 		if i == 2:
 			prime_sum += i
 		while not control:

 			if check:
 				numerator = total
 				total = numerator / denominator
 			else:
	 			numerator = i
	 			total = numerator / denominator
	 		if str(total) == '1.0':
	 			control = True
	 			cont += 1
 			if total == 1 or total == 1.0 or total is 1 or total is 1.0:
 				control = True
 				cont += 1
 			if total.is_integer():
 				check = True
 				cont += 1
 			else:
 				total *= denominator
 				denominator += 1

 			if denominator == i:
 				break
 		if cont == 1:
 			cont = 0
 		if cont > 0:
 			control = False
 			denominator = 2.0
 			check = False
 			cont = 0
 			continue
 		else:
 			#print i
 			prime_cont += 1
 			prime_sum += i
 			control = False
 			denominator = 2.0
 			check = False
 			cont = 0
 		if prime_cont == 999:
 			break

 	print prime_sum

x = sum_prime()






