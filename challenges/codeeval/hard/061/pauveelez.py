from string import ascii_uppercase as alphabet

message = "012222 1114142503 0313012513 03141418192102 0113 2419182119021713 06131715070119"
key = "BHISOECRTMGWYVALUZDNFJKPQX"

decryp, m = [], ""
for s in message:
	if s == " ":
		decryp.append(s)
	elif m == "":
		m = s
	else:
		decryp.append(alphabet[key.index(alphabet[int(m+s)])])
		m = ""
print "".join(decryp)
