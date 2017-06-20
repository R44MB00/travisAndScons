def roman(num):
	digits = [1000,900,500,400,100,90,50,40,10,9,5,3,1]
	letter = ['M','CM','D','CD','C','XC','L','XL','X','IX','V','IV','I']
	res = ""
	while len(digits) > 0:
		val = digits[0]
		let = letter[0]
		if num < val:
			digits.pop(0)
			letter.pop(0)
		else:
			num = num - val
			res = res + let
	return res	
