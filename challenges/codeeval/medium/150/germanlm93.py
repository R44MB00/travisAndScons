def conv(val):
	res = None
	try:
		w = int(val)
		res = w
	except:
		rman, vals = "I,V,X,L,C,D,M".split(",") , [1,5,10,50,100,500,1000]
		if val in rman:
			res = rman.index(val)
			res = vals[res]
		else:
			res = None
	finally:
		return res
def minus(posA,posB):
	x = conv(posA[1])
	y = conv(posB[1])
	if(x < y):
		return True
	else:
		return False
		
def main(line):
	arr = list()
	for i in range(0,len(line)-1,2):
		s = str(line[i] + line[i+1])
		arr.append(s)
	sum = 0
	for i in range(0,len(arr)):
		j = i+1
		if( j < len(arr) ):
			if(minus(arr[i],arr[j]) == False):
				A = int(conv(arr[i][0]))
				R = int(conv(arr[i][1])) 
				sum +=  A * R 
			else:
				A = int(conv(arr[i][0]))
				R = int(conv(arr[i][1]))
				sum -=  A * R
		else:
			A = int(conv(arr[i][0]))
			R = int(conv(arr[i][1]))
			sum +=  A * R 
	print sum
	
main("2I3I2X9V1X")


