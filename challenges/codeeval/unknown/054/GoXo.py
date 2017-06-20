import sys
class arrows:

	with open(sys.argv[1], 'r') as test_cases:

		coin = ['ONE HUNDRED', 'FIFTY', 'TWENTY', 'TEN', 'FIVE', 'TWO', 
				'ONE', 'HALF DOLLAR', 'QUARTER', 'DIME', 'NICKEL', 'PENNY']
		values = [100.0, 50.0, 20.0, 10.0, 5.0, 2.0, 1.0, 0.5, 0.25, 0.1, 0.05, 0.01]

		for line in test_cases:

			res = list()
			parts = line.split(';')

			PP = float(parts[0])
			CH = float(parts[1])

			dif = CH - PP

			if (dif == 0): print "ZERO"
			elif (dif < 0): print "ERROR"
			else:
				i = 0
				while (i < len(values)):

					if (values[i] <= (dif+0.001)): 
						
						res.append(coin[i])
						dif = dif - values[i]

					else: i += 1
					
				print ",".join(res)