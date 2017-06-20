
line = "hello world, def"
item = line.split(", ")
text = item[0]
elem = item[1]
for i in elem:
	text = text.replace(i,"")
print text
