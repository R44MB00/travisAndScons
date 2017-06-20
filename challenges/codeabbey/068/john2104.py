nval = int(raw_input())
response = ''
for i in range(nval):
	
	s,a,b = raw_input().split()
	
	s= float(s)
	a = float(a)
	b = float(b)
	#X = Xo + Vo*t
	x = 0+a*((s-0)/(a+b))
	
	response = response+'%f '%x
	
	
print response
