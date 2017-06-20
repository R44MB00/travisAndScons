from math import sqrt
import decimal

def format_number(num):
    try:
        dec = decimal.Decimal(num)
    except:
        return 'bad'
    tup = dec.as_tuple()
    delta = len(tup.digits) + tup.exponent
    digits = ''.join(str(d) for d in tup.digits)
    if delta <= 0:
        zeros = abs(tup.exponent) - len(tup.digits)
        val = '0.' + ('0'*zeros) + digits
    else:
        val = digits[:delta] + ('0'*tup.exponent) + '.' + digits[delta:]
    val = val.rstrip('0')
    if val[-1] == '.':
        val = val[:-1]
    if tup.sign:
        return '-' + val
    return val

def calculateD(x1,y1,x2,y2):
	
	dis = sqrt(pow((x1-x2),2)+pow((y1-y2),2))
	return dis

def calcArea(a,b,c):
	s = (a+b+c)/2
	
	return sqrt(s*((s-a)*(s-b)*(s-c)))

def main():
	nVal = raw_input()
	response = ''
	for i in range(int(nVal)):
		x1,y1,x2,y2,x3,y3 = raw_input().split()
		
		a = calculateD(int(x1),int(y1),int(x2),int(y2))
		b = calculateD(int(x2),int(y2),int(x3),int(y3))
		c = calculateD(int(x3),int(y3),int(x1),int(y1))
		area = calcArea(a,b,c)
		resp = '{0:.7f} '.format(area)
		response = response + format_number(resp) + ' '
	print response

main()
