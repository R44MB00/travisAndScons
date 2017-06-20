nval = int(raw_input())
response = ''
for i in range(nval):
	
	s,r,p = raw_input().split()
	
	total = round(float(s),2)
	count = 0
	while total<round(float(r),2):
		total = round((total*(1+(float(p)/100))),2)
		count = count + 1
	response = response + '%d '%count
print response
	
	
