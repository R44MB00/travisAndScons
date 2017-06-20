import sys
import re
import enum
class card:
	def __init__(self, value, suit):
		self.value = value
		self.suit = suit
def suites(value):
	if (value == 'J'):
		return 11
	elif (value == 'Q'):
		return 12
	elif (value == 'K'):
		return 13
	elif (value == 'A'):
		return 14
	else:
		return int(value)



#with open(sys.argv[1], 'r') as test_cases:
with open("sample.txt", 'r') as test_cases:
	for test in test_cases:
		trump = test.split("|")[1].strip()
		done = False
		
		matchValue1 = re.match( r'((A|J|Q|K)|((\d\d)|(\d)))', test.split(" ")[0].strip())
		matchValue2 = re.match( r'((A|J|Q|K)|((\d\d)|(\d)))', test.split(" ")[1].strip())
		
		card1 = card(matchValue1.group(),test.split(" ")[0][len(test.split(" ")[0])-1])
		card2 = card(matchValue2.group(),test.split(" ")[1][len(test.split(" ")[1])-1])

		if(card1.suit == trump and card2.suit != trump and done == False):
			print (card1.value+card1.suit)
			done = True
		if(card2.suit == trump and card1.suit != trump and done == False):
			print (card2.value+card2.suit)
			done = True

		if (suites(card1.value) == suites(card2.value) and done == False):
			print (card1.value+card1.suit+" "+card2.value+card2.suit)
			done = True

		if(suites(card1.value) > suites(card2.value) and done == False):
			
			print (card1.value+card1.suit)
			done = True
		if(suites(card2.value) > suites(card1.value) and done == False):
			print (card2.value+card2.suit)
			done = True

