nVal = raw_input()
response = ''
for i in range(int(nVal)):
	response = response + '%d ' %((float(raw_input())*6)+1)

print response
