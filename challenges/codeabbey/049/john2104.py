nVal = raw_input()
response = ''
for i in range(int(nVal)):
	
	plays = raw_input().split()
	count1 = 0
	count2 = 0
	for n in plays:
		if n[0]=='P' and n[1]=='R':
			count1 = count1 +1
		elif n[0]=='S' and n[1]=='P':
			count1 = count1 +1
		elif n[0]=='R' and n[1]=='S':
			count1 = count1 +1	
		elif n[1]=='P' and n[0]=='R':
			count2 = count2 +1
		elif n[1]=='S' and n[0]=='P':
			count2 = count2 +1
		elif n[1]=='R' and n[0]=='S':
			count2 = count2 +1
	if count1 > count2:
		response = response + '1 '
	else:
		response = response +'2 '
print response
