line = "2222;    "
alph = " !\"\#\$\%\&\'()*+,-./0123456789:<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".split("")
numb,mess = line.split(";")
numb = numb.split("")
mess = mess.split("")
if mess.length < numb.length
	numb = numb[0..mess.length-1]
else 
	idx = 0
	max = numb.length
	for i in numb.length..mess.length-1
		idx = idx % max
		numb.push(numb[idx])
		idx += 1
	end
end
#all items to integer
numb = numb.map(&:to_i)
print numb
puts ''
#get index for letters
for i in 0..mess.length-1
	mess[i] = alph.index(mess[i])
end
print mess
for i in 0..numb.length-1
	mess[i] = mess[i] - numb[i]
	if(mess[i] < 0)
		mess[i] = alph.length + mess[i]
	end
end
for i in 0..mess.length-1
	mess[i] = alph[mess[i]]
end
#response
puts mess.join("")
