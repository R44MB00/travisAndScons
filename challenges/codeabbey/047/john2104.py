#caesar using ascii
top=90
bottom=65

nVal,k = raw_input().split()

response = ''
for i in range(int(nVal)):
	line = raw_input()
	
	for l in line:
		if l==' ':
			response = response +' '
		elif l=='.':
			response = response +'. '
		else:
			num=ord(l)
			
			if (num-int(k)) < bottom:
				t = (int(k)-1)-(num-bottom)
				num = top - t
				response = response + chr(num)
			else:
				num=num-int(k)
				response = response + chr(num)
	

print response
