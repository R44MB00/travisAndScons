x = raw_input()

values = raw_input().split()
response = ''
for i in values:
	count = 0
	x = int(i)
	while x!=1:
		count = count +1
		if x%2==0:
			x = x/2
		else:
			x = 3*x+1
	response = response + '%d '%count
print response
