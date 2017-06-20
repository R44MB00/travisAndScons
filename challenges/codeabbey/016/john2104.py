nVal = int(raw_input())
response = ''
for i in range(nVal):
	values = raw_input().split()
	values.pop()
	intgr = [float(x) for x in values]
	su = 0
	for i in intgr:
		su = su+i
	su=round(su/len(intgr))
	print su
	response = response+'%d '%int(su)
print response
