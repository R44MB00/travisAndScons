def calcg(n,k):
	if n==1:
		return 0
	else:
		return (calcg(n-1,k)+k)%n
		
n,k = raw_input().split()

safe = calcg(int(n),int(k))
	
print safe+1
