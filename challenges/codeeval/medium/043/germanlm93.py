line = "4 1 4 2 3"
vect = line.split(" ")[1:len(line.split(" "))]
numb = line.split(" ")[0]
calc = []
for i in range(0,len(vect)):
	if i+1 < len(vect):
		x = abs(int(vect[i]))
		y = abs(int(vect[i+1]))
		z = abs(x-y)
		calc.append(z)
calc.sort()
res = 'Jolly'
for i in range(1,int(numb)):
	x = i in calc
	if  not x: 
		res = 'No jolly'
		break
print res
