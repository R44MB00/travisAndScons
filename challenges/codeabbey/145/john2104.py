nVal = raw_input()
response = ''

def calcPow(base, exponent, modulus):
	result = 1
	while exponent > 0:
		if exponent % 2 == 1:
			result = (result * base) % modulus
		base = (base * base) % modulus
		exponent = exponent / 2
	return result
for i in range(int(nVal)):
	a,b,m = raw_input().split()

	res = calcPow(int(a),int(b),int(m))

	response = response + '%d ' %res
print response
