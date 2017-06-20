def checksum(list):
	result = 0
	for i in values:
		result = ((result + int(i))*113)%10000007
	return result
values = raw_input().split()
values.pop()
count = 0
for i in range(len(values)):
	if i+1 < len(values):
		if int(values[i]) > int(values[i+1]):
			#swap
			count = count +1
			values[i],values[i+1] = values[i+1],values[i]
	
print '%d %d' %(count,checksum(values))

