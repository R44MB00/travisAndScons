import sys
test_cases = open(sys.argv[1], 'r')
datos = test_cases.readlines()
test_cases.close()
suma=0

	
for i in datos:
	hola=i.rstrip('\n')	   
	for j in hola: 
		
		suma= suma + int(j)
		
	print suma
	suma=0


	
