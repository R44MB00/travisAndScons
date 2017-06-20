

import sys
test_cases = open(sys.argv[1], 'r')
def translate(str):
	if(str=='a'):
		str='y'
	elif(str=='b'):
		str='h'
	elif(str=='c'):
		str='e'	
	elif(str=='d'):
		str='s'
	elif(str=='e'):
		str='o'	
	elif(str=='f'):
		str='c'
	elif(str=='g'):  #puede ser x o v
		str='v'	
	elif(str=='h'):
		str='x'
	elif(str=='i'):
		str='d'	
	elif(str=='j'):
		str='u'
	elif(str=='k'):
		str='i'	
	elif(str=='l'):
		str='g'
	elif(str=='m'):
		str='l'	
	elif(str=='n'):
		str='b'
	elif(str=='o'):
		str='k'	
	elif(str=='p'):
		str='r'
	elif(str=='q'):
		str='z'	
	elif(str=='r'):
		#print("i ewas here")
		str='t'
	elif(str=='s'):
		str='n'	
	elif(str=='t'):
		str='w'
	elif(str=='u'):
		str='j'	
	elif(str=='v'):
		str='p'
	elif(str=='w'):
		str='f'	
	elif(str=='x'):
		str='m'
	elif(str=='y'):
		str='a'	
	elif(str=='z'):
		str='q'
	else:
		str=' '
	return str;

for test in test_cases:
   	result=[]
   	#print(test)
   	array = list(test)
   	#array.pop()
   	for i in range (0, len(array)): 
   		#print(array[i])
   		ch = translate(array[i])
   		#print(ch)
   		result.append(ch)
   	print("".join(result))


test_cases.close()
