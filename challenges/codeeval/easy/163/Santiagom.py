import sys,string

def graphic(num,l1,l2,l3,l4,l5,l6):
	num = int(num)
	
	if num == 0:
		l1 = l1 + ("-**--")
		l2 = l2 + ("*--*-")
		l3 = l3 + ("*--*-")
		l4 = l4 + ("*--*-")
		l5 = l5 + ("-**--")
		l6 = l6 + ("-----")
	if num == 1:
		l1 = l1 + ("--*--")
		l2 = l2 + ("-**--")
		l3 = l3 + ("--*--")
		l4 = l4 + ("--*--")
		l5 = l5 + ("-***-")
		l6 = l6 + ("-----")
	if num == 2:
		l1 = l1 + ("***--")
		l2 = l2 + ("---*-")
		l3 = l3 + ("-**--")
		l4 = l4 + ("*----")
		l5 = l5 + ("****-")
		l6 = l6 + ("-----")
	if num == 3:
		l1 = l1 + ("***--")
		l2 = l2 + ("---*-")
		l3 = l3 + ("-**--")
		l4 = l4 + ("---*-")
		l5 = l5 + ("***--")
		l6 = l6 + ("-----")
	if num == 4:
		l1 = l1 + ("-*---")
		l2 = l2 + ("*--*-")
		l3 = l3 + ("****-")
		l4 = l4 + ("---*-")
		l5 = l5 + ("---*-")
		l6 = l6 + ("-----")
	if num == 5:
		l1 = l1 + ("****-")
		l2 = l2 + ("*----")
		l3 = l3 + ("***--")
		l4 = l4 + ("---*-")
		l5 = l5 + ("***--")
		l6 = l6 + ("-----")
	if num == 6:
		l1 = l1 + ("-**--")
		l2 = l2 + ("*----")
		l3 = l3 + ("***--")
		l4 = l4 + ("*--*-")
		l5 = l5 + ("-**--")
		l6 = l6 + ("-----")
	if num == 7:
		l1 = l1 + ("****-")
		l2 = l2 + ("---*-")
		l3 = l3 + ("--*--")
		l4 = l4 + ("-*---")
		l5 = l5 + ("-*---")
		l6 = l6 + ("-----")
	if num == 8:
		l1 = l1 + ("-**--")
		l2 = l2 + ("*--*-")
		l3 = l3 + ("-**--")
		l4 = l4 + ("*--*-")
		l5 = l5 + ("-**--")
		l6 = l6 + ("-----")
	if num == 9:
		l1 = l1 + ("-**--")
		l2 = l2 + ("*--*-")
		l3 = l3 + ("-***-")
		l4 = l4 + ("---*-")
		l5 = l5 + ("-**--")
		l6 = l6 + ("-----")

	return l1,l2,l3,l4,l5,l6





test_cases = open('test.txt')
#test_cases = open(sys.argv[1], 'r')

for test in test_cases:
	l1 = ""
	l2 = ""
	l3 = ""
	l4 = ""
	l5 = ""
	l6 = ""
	test = test.strip()
	suma =""
	for i in test:
		if i.isdigit():
			suma = suma + i

	for i in suma:
		l1,l2,l3,l4,l5,l6 = graphic(i,l1,l2,l3,l4,l5,l6)

	print (l1)
	print (l2)
	print (l3)
	print (l4)
	print (l5)
	print (l6)

test_cases.close()
