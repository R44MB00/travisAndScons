import os.path
import sys
if __name__=='__main__':
	filename=sys.argv[1]
	if os.path.exists(filename):
		print os.path.getsize(filename)
	else:
		print "File does not exist!"
