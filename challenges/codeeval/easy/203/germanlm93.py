def logic(line):
	cont = 0
	for i in range(0,len(line)):
		if(i+5 < len(line)):
			segment = line[i:i+5]
			if(segment == ">>-->"):
				cont=cont+1
		if(i-5 >= 0):
			segment = line[i-5:i]
			if(segment == "<--<<"):
				cont=cont+1
	print cont		

	
		
	
