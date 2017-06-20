import sys
class CasePercent:
	with open(sys.argv[1], 'r') as test_cases:
		for test in test_cases:
			cLow = 0.00
			cUpp = 0.00
			for c in test:
				if (c.isupper()):
					cUpp += 1.0
				if (c.islower()):
					cLow += 1.0	
			percLow = (cLow/(cLow+cUpp))*100.00
			percUpp = (cUpp/(cLow+cUpp))*100.00	
			print ("lowercase: " + "%.2f" % round(percLow,2)+
				  " uppercase: "+"%.2f" % round(percUpp,2))
