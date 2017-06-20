def toText(num):
	al10 = "Zero,One,Two,Three,Four,Five,Six,Seven,Eight,Nine".split(",")
	al20 = "Ten,Eleven,Twelve,Thirteen,Fourteen,Fifteen,Sixteen,Seventeen,Eighteen,Nineteen".split(",")
	al100 = "0,0,Twenty,Thirty,Fourty,Fifty,Sixty,Seventy,Eighty,Ninety".split(",")
	if num == 0:
		return ""
	else:
		if num < 10:
			uni = al10[num]
			return uni
		else:
			if num >= 10 and num < 20:
				dec = al20[num%10]
				return dec
			else:
				if num>=20 and num<=99:
					dec = al100[num/10] 
					uni = toText(num%10)
					return dec + uni
				else:
					if num >= 100 and num <= 999:
						cen = toText(num/100) + "Hundred"
						dec = toText(num%100)
						return cen + dec
					else:
						if num >= 1000 and num <= 999999:
							mil = toText(num/1000) + "Thousand"
							return mil + toText(num%1000)
						else:
							if num >= 1000000 and num <= 9999999999:
								mill = toText(num/1000000) + "Million"
								return mill + toText(num%1000000)
test = "90909090"
print toText(int(test))+"Dollars"
