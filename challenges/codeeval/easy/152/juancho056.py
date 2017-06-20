import sys

test_cases=open('test.txt','r')
for test in test_cases:
	dato= test.rstrip()
	Age=int(dato)
	if Age<0 or Age>100:
		print ("This programan is for humans")
	if 0<= Age <= 2:
		print ('Still in Mama\'s arms' )
	if 3 <= Age <= 4:
		print ('Preschool Maniac' )
	if 5 <= Age <= 11:
		print ('Elementary school' )
	if 12 <= Age <= 14:
		print ('Middle school')
	if 15 <= Age <= 18:
		print ('High school')
	if 19 <= Age <= 22:
		print ('College')
	if 23 <= Age <= 65:
		print ('Working for the man' )
	if 66 <= Age <= 100:
		print ('The Golden Years' )





