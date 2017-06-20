import sys

archivo = open(sys.argv[1], 'r')

caja = {
    .01    : 'PENNY',
    .05    : 'NICKEL',
    .10    : 'DIME',
    .25    : 'QUARTER',
    .50    : 'HALF DOLLAR',
    1.00   : 'ONE',
    2.00   : 'TWO',
    5.00   : 'FIVE',
    10.00  : 'TEN',
    20.00  : 'TWENTY',
    50.00  : 'FIFTY',
    100.00 : 'ONE HUNDRED'
}

for i in archivo:
	line = i.strip()
	if line:
		pp,ch = map(float,line.split(';'))
		if pp == ch:
			print "ZERO"
		elif pp > ch:
			print "ERROR"
		else:
			resta = ch-pp
			resultado =[]
			for k in sorted([k for k in caja.keys() if k <=resta],reverse=True):
				resultado.append(int(resta / k) * [caja[k]])
				resta= round(resta % k,2)
				if resta == 0:
					break
			print ','.join(sum(resultado,[]))

archivo.close()



'''
caja = {
'PENNY': .01,
'NICKEL': .05,
'DIME': .10,
'QUARTER': .25,
'HALF DOLLAR': .50,
'ONE': 1.00,
'TWO': 2.00,
'FIVE': 5.00,
'TEN': 10.00,
'TWENTY': 20.00,
'FIFTY': 50.00,
'ONE HUNDRED': 100.00

}
caja = sorted(caja.items(),key=operator.itemgetter(1))

def calc(resta,r,n,j,resultado):
	resta -= caja[n-r][1]
	if resta < 0.00001:
		resta=0
	resultado.append(caja[n-r][0])
	return resta,resultado

def vueltos(pp,ch):
	resta = ch-pp
	resultado=[]
	while resta > 0:
		for n,j in enumerate(caja):
			if j[1] > resta:
				resta,resultado=calc(resta,1,n,j,resultado)
				break
			elif j[1] == resta or n+1 == len(caja):
				resta,resultado=calc(resta,0,n,j,resultado)
				break

	print ','.join(resultado)

for i in archivo:
	line = i.strip()
	if line:
		pp,ch = map(float,line.split(';'))
		if pp == ch:
			print "ZERO"
		elif pp > ch:
			print "ERROR"
		else:
			vueltos(pp,ch)
archivo.close()
'''
