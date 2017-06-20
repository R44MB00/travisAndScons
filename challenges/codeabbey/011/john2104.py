
def suma(a,b):
	return int(a)+int(b)
def multip(d,c):
	return int(d)*int(c)
def	splitSum(a):
	total = 0
	for i in range(len(str(a))):
		total = total + (a%10)
		a = a/10
	return total

def main():
	numval = raw_input()
	results = ''
	for i in range(int(numval)):
		a,b,c = raw_input().split()

		val = suma(multip(a,b),c)
		results = results + '%d '%splitSum(val)
	print results


main()
