nval = int(raw_input())
values = raw_input().split()
result = 0
for i in values:
	
	result = ((result + int(i))*113)%10000007



print result
