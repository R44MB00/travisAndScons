nVal = raw_input()
response = ''
for v in range(int(nVal)):
	x,n = raw_input().split()
	x = float(x)
	r = 1
	for i in range(int(n)):
		r = (r+(x/r))/2
	response = response +'%.10f '%r
print response
	
