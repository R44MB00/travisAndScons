__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
for line in file:
    num=int(line.rstrip("\n"))
    if num>=0 and num<=2:
        print "Still in Mama's arms"
    if num==3 and num==4:
        print "Preschool Maniac"
    if num>=5 and num<=11:
        print "Elementary school"
    if num>=12 and num<=14:
        print "Middle school"
    if num>=15 and num<=18:
        print "High school"
    if num>=19 and num<=22:
        print "College"
    if num>=23 and num<=65:
        print "Working for the man"
    if num>=66 and num<=100:
        print "The Golden Years"
    if num<0 and num>100:
        print "This program is for humans"
file.close()
