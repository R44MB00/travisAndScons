import sys

with open('test.txt', 'r') as test_cases:
#with open(sys.argv[1], 'r') as test_cases:
	for test in test_cases:
		n_doors = int(test.split(" ")[0])
		iterations = int(test.split(" ")[1])
		doors = [0] * n_doors
		for n in range(0, iterations-1):

			#Cerrar las pares:
			for i in range(1, len(doors), 2):
				doors[i] = 1
			#Cambiar Estado
			for i in range(2, len(doors), 3):
				doors[i] = not doors[i]
		doors[-1] = not doors[-1]

		print (doors.count(0))



