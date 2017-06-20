import os
__author__ = "VICTOR"
__date__ = "$Nov 29, 2015 9:23:21 PM$"
#statinfo=os.stat(sys.argv[1])
statinfo= os.stat('C:\\Users\\VICTOR\\Documents\\Aprueba.txt')
print (statinfo.st_size)
