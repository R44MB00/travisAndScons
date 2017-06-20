import sys
class arrows:

	with open(sys.argv[1], 'r') as test_cases:

		alphab = "abcdefghijklmnopqrstuvwxyz" 
		
		for line in test_cases:
			
			res = ""

			for ch in alphab:

				if (ch not in line.lower()): res += ch
			
			if (res == ""): print ("NULL")
			else: print (res)	