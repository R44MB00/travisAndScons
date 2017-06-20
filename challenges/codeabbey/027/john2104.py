x = raw_input()
values = raw_input().split()
swaps = 0
aSwap = True
passes = 0
while(aSwap):
	passes = passes+1
	count = 0
	for i in range(len(values)):
		if i+1 < len(values):
			if int(values[i]) > int(values[i+1]):
				#swap
				count = count +1
				swaps = swaps +1
				values[i],values[i+1] = values[i+1],values[i]
	if(count ==0):
		aSwap = False

print '%d %d'%(passes,swaps)
