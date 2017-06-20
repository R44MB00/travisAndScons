import sys

archivo = open(sys.argv[1], 'r')

for i in archivo:
	line = i.strip()
	if line:
		line=int(line)
		if line >=0 and line <= 2:
			print 'Still in Mama\'s arms'
		elif line >= 3 and line <= 4:
			print  'Preschool Maniac'
		elif line >= 5 and line <= 11:
			print "Elementary school"
		elif line >= 12 and line <= 14:
			print "Middle school"
		elif line >= 15 and line <= 18:
			print "High school"
		elif line >= 19 and line <= 22:
			print "College"
		elif line >=23 and line <= 65:
			print "Working for the man"
		elif line >= 66 and line <= 100:
			print "The Golden Years"
		else:
			print "This program is for humans"




archivo.close()


