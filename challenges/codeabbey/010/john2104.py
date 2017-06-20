nVal = raw_input()

response = ''
for i in range(int(nVal)):
	x1,y1,x2,y2 = raw_input().split()
	
	a = (int(y1)-int(y2))/(int(x1)-int(x2))
	b = int(y2)-(a*int(x2))
	
	response = response + '(%d %d) ' %(a,b)
	

print response
