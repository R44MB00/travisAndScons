test = "2,10"
def isPrime(x):
	cont = 0
	for i in range(2,x):
		if(x%i == 0):
			cont+=1
		if (cont != 0 ):
			break
	if cont == 0:
		return True
	else:
		return False

def logic(test):
	(mini,maxi) = test.split(",")
	c = 0
	for i in range(int(mini),int(maxi)+1):
		if(isPrime(i) == True):
			c +=1
	print c
	
logic(test)
