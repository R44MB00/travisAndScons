m,n = raw_input().split()

count = [0]*int(n)
values = raw_input().split()

for i in values:
	count[int(i)-1] = count[int(i)-1]+1

result = ''

for i in count:
	result = result +'%d '%i
print result

