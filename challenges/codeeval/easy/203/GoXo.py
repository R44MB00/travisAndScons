import sys
class arrows:

	with open(sys.argv[1], 'r') as test_cases:
		arrow1 = '>>-->'
		arrow2 = '<--<<'

		for line in test_cases:
			count = 0

			for i in range (0,len(line)-4):
				
				subs = line[i:-len(line)+5+i]
		
				if (arrow1 == subs or arrow2 == subs):
					count+=1

			print count