def getMiddle(num):
	if len('%d'%num)==8:s
		l = len('%d'%num)
		var = (l -4)/2
		num = '%d'%num
		return num[var:l-var]
	elif len('%d'%num)<8:
		zeroes = ''
		for i in range(8-len('%d'%num)):
			zeroes = zeroes +'0'
		num=zeroes+'%d'%num
		l = len(num)
		var = (l -4)/2
		return num[var:l-var]

def repeat(list,num):
	if len(list)>0 :
		for i in list:
			if i==num:
				return False
	return True

def main():
	nVal = raw_input()
	values = raw_input().split()
	response = ''
	for i in values:
		list = []
		num = i
		var = True
		list.append(num)
		while(var):
			num=getMiddle(int(num)**2)
			var = repeat(list,num)
			if var:
				list.append(num)

		response = response + '%d ' %(len(list))
		print ""
	print response
main()
