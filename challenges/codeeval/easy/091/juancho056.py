import sys

test_cases=open("input.txt", 'r')
for test in test_cases:
	dat= test.strip().split(" ")
	tam=len(dat)
	for i in range (1,tam):
		for j in range (tam-i):
			if (float(dat[j])>float(dat[j+1])):
				aux= (dat[j])
				dat[j]=dat[j+1]
				dat[j+1]= aux
	print ' '.join(dat)

