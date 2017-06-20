import sys


def restar_index(array):
	return list(i-1 for i in array)

test_cases = open(sys.argv[1],'r')

for test in test_cases:
	test = ''.join(list(i.strip()for i in test.strip().split('|'))).replace('*','')
	counts = [0] * 4
	suma = 0
	counts[0] = test.count('c')
	counts[1] = test.count('o')
	counts[2] = test.count('d')
	counts[3] = test.count('e')

	if 0 in counts:
		print (0)
		break
	for i in range(0, max(counts)):
		if sum(counts) > 0:
			suma += 1
		else:
			counts = restar_index(counts)

	print (suma)

		
