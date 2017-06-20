import sys
class text_to_num:

	with open(sys.argv[1], 'r') as test_cases:

		text_val = ['negative','zero','one','two','three','four','five','six','seven','eight','nine',
		'ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen',
		'twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety','hundred','thousand','million']

		num_val = ['','+0','+1','+2','+3','+4','+5','+6','+7','+8','+9','+10','+11','+12','+13','+14','+15','+16','+17','+18','+19',
		'+20','+30','+40','+50','+60','+70','+80','+90','*100','*1000','*1000000']

		for line in test_cases:

			million = -2
			thousand = -2
			res = "("

			text = line.strip().split(' ')

			if ('thousand' in text): thousand = text.index("thousand")
			if ('million' in text): million = text.index("million")
							
			for i,word in enumerate(text):

				
				if (i == million): res += ")"
				if (i == thousand): res += ")"

				idx = text_val.index(word)
				res += num_val[idx]

				if (i == million): res += "+("
				if (i == thousand): res += "+("

			res += ")"
			res = res.replace("()","0")
			ans = eval(res)	
			if (text[0]== 'negative'): ans *= -1

			print ans