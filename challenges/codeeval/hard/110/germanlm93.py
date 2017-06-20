def toText(line):
	text = line.lower().split(" ")
	result = list()
	if len(text) == 1 :
		return convert(text[0])
	else:
		tot = 0
		if len(text) % 2 == 1 : #impares
			aux = ""
			if(text[0] != "negative"):
				for i in range(0,len(text)-2,2):
					x = text[i]
					y = text[i+1]
					if(operation(y) == 1):
						tot = tot + convert(x) * convert(y)
					else:
						tot = tot + convert(x) + convert(y)					
				x = text[len(text)-1]
				tot = tot + convert(x)
			else:
				for i in range(1,len(text),2):
					x = text[i]
					y = text[i+1]
					if(operation(y) == 1):
						tot = tot + convert(x) * convert(y)
					else:
						tot = tot + convert(x) + convert(y)	
				tot = tot*-1	
		else:
			if(text[0] != "negative"):
				for i in range(0,len(text),2):
					x = text[i]
					y = text[i+1]
					if(operation(y) == 1):
						tot = tot + convert(x) * convert(y)
					else:
						tot = tot + convert(x) + convert(y)	
			else:
				tot = tot*-1
				for i in range(1,len(text)-1,2):
					print i+1
					x = text[i]
					y = text[i+1]
					if(operation(y) == 1):
						tot = tot + convert(x) * convert(y)
					else:
						tot = tot + convert(x) + convert(y)					
				x = text[len(text)-1]
				tot = tot + convert(x)
				
	return tot

	
def convert(let):
	al10 = "Zero,One,Two,Three,Four,Five,Six,Seven,Eight,Nine".lower().split(",")
	al20 = "Ten,Eleven,Twelve,Thirteen,Fourteen,Fifteen,Sixteen,Seventeen,Eighteen,Nineteen".lower().split(",")
	al100 = "0,0,Twenty,Thirty,Fourty,Fifty,Sixty,Seventy,Eighty,Ninety".lower().split(",")
	num = 0
	if(let in al10):
		num = al10.index(let)
	else:
		if(let in al20):
			num = 10 + al20.index(let)
		else: 
			if(let in al100):
				num = 10 * al100.index(let)
			else:
				if(let == "hundred"):
					return 100
				else:
					if(let == "thousan"):
						return 1000
					else:
						if(let == "million"):
							return 1000000
						else:
							return -1
						
	return num		
	
def operation(op):
	if op == "hundred":
		return 1
	else:
		if op == "million":
			return 1
		else:
			if op == "thousan":
				return 1
			else:
				if op == "negative":
					return 1
				else:
					return 0
			

	
	
test = "negative six thousand two hundred thirty eight"

print toText(test)
