import sys

def prueba(word):
	for i in range(0,len(word)):
		w=test[i]
		initial= test[:i] 
		finish=test[i+1:]
		if (initial.find(w)==-1 and finish.find(w)==-1):
			return w
	return

test_cases= open("test.txt",'r')
for test in test_cases:
	if test:
		print prueba(test)
