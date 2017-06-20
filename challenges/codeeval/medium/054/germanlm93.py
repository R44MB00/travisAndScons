def whatIs(t):
	dic = 0.01,0.05,0.10,0.25,0.50,1.00,2.00,5.00,10.00,20.00,50.00,100.00
	tex = 'PENNY','NICKEL','DIME','QUARTER','HALF DOLLAR','ONE','TWO','FIVE','TEN','TWENTY','FIFTY','ONE HUNDRED'
	if t in dic:
		return tex[dic.index(t)]
	else:
		return -1

test = "45;45.25"
a,b = test.split(";")
a = float(a)
b = float(b)
if a == b:
	print 'ZERO'
else:
	if a > b:
		print 'ERROR'
	else:
		tot = b-a
		if(whatIs(tot) == -1):
			print 'PENNY','NICKEL'
		else:
			print whatIs(tot)
			
