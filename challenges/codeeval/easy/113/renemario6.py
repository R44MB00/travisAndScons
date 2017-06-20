# -*- coding: utf-8 -*-
import sys
archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		num1=line.split('|')[0].split(' ')
		num1.remove('')
		num2=line.rstrip().split('|')[1].split(' ')
		num2.remove('')
		for j,k in zip(num1,num2):
			sys.stdout.write("%d "%(int(j)*int(k)))

	print
archivo.close()

'''
    lst_a, lst_b = test.split('|')
    lst_a, lst_b = lst_a.split(), lst_b.split()
    print ' '.join([str(int(lst_a[i]) * int(lst_b[i])) for i
                    in xrange(0, len(lst_a))])
'''
