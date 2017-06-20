import sys
test_cases=open("input.txt",'r')

for test in test_cases :
	datos=(test.strip().split("|"))
	first_list= datos[0].split()
	second_list= datos[1].split()
	res= " "

	for i in range(len(first_list)):
		res+=str(int(first_list[i]) * int(second_list[i]))+ " "

	print "".join(res)
