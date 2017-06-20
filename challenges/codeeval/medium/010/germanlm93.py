
line = "e f g h 2"
text = line.split()[0:len(line.split())-1] 
num = int(line.split()[len(line.split())-1])
if num < len(text):
	print num
else:
	continue
