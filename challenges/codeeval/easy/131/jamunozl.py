import sys
#test_cases = open(sys.argv[1], 'r')
test_cases = open("test.txt", 'r')
    
for test in test_cases:
	array=test.split(' ')
	numbers=array[0]
	letters=array[1]
	if(letters.count('+')>0):
		position=letters.index('+')
		numers1=numbers[0:position]
		numbers2=numbers[position:len(letters)]
		print(int(numers1)+int(numbers2))
	else:
		position=letters.index('-')
		numers1=numbers[0:position]
		numbers2=numbers[position:len(letters)]
		print(int(numers1)-int(numbers2))
test_cases.close()
