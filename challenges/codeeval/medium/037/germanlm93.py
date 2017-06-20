line = "A quick brown fox jumps over the lazy dog"
abcd = "abcdefghijklmnopqrstuvwxyz"
text = ""
line = line.lower()
for i in abcd:
	if line.find(i) == -1:
		text += i
	else:
		continue
if len(text) == 0:
	print 'NULL'
else:
	print text
		
