import sys
for i in range(1, 13):
	for j in range(1,13):
		sys.stdout.write("{:4d}".format(i*j))
	sys.stdout.write("\n")
