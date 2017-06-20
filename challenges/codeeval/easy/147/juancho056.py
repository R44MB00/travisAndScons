import sys

test_cases=open("test6.txt",'r')
for test in test_cases:
	lower=0
	upper=0
	for j in test.rstrip(): # se coloca rstrip para borrar el \n
		if j.islower():
			lower +=1
		else:
			upper +=1
			    
		length=float(lower+upper)
		lower_porcent= (lower/length *100)
		upper_porcent= (upper/length *100)

	print "lowercase:","%.2f" % lower_porcent, "uppercase:", "%.2f" % upper_porcent 

 
