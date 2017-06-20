import sys

def pertenece(CX,CY,r,PX,PY):
	result = (PX - CX)**2 + ( PY - CY )**2

	if result < r**2:
		return "true"
	else:
		return "false"
#test_cases = open(sys.argv[1], 'r')
test_cases = open("test.txt")
for test in test_cases:
	test = test.strip()
	test = test.split(";")
	centro = list(test[0].split(":")[1].split(","))
	radio = test[1].split(":")[1]
	punto = test[2].split(":")[1].split(",")

	CX = eval(centro[0].replace("(","").strip())
	CY = eval(centro[1].replace(")","").strip())

	r = eval(radio.strip())

	PX = eval(punto[0].replace("(","").strip())
	PY = eval(punto[1].replace(")","").strip())

	print (pertenece(CX,CY,r,PX,PY))


test_cases.close()
