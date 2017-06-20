import sys
test_cases = open('test.txt')
#test_cases = open(sys.argv[1], 'r')

for test in test_cases:
	test = test.strip()
	test = test.split(":")

	seq = test[0].split(" ")
	nums = test[1].strip().split(",")

	for i in nums:
		pos = i.split("-")

		n1 = int(pos[0].strip())
		n2 = int(pos[1].strip())

		temp = seq[n1]
		seq[n1] = seq[n2]
		seq[n2] = temp


	seq.remove(seq[len(seq)-1])

	print (' '.join(seq))


test_cases.close()

