def makeFib():
	l = []
	l.append(0)
	l.append(1)
	for i in range(1,1000):
		l.append(l[i-1]+l[i])
	return l
l = makeFib()
response = ''
nVal = int(raw_input())
for i  in range(nVal):
	n = int(raw_input())
	response = response + '%d '%l.index(n)
print response
