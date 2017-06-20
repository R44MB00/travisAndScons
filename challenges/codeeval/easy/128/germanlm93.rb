line = "1 1 3 3 3 2 2 2 2 14 14 14 11 11 11 2"
vect = line.split(" ")
auxi = []
lett = []
i=0
j=0
while i < vect.length
	itm = vect[i]
	j = i+1
	cont = 1
	while(true)
		if itm == vect[j] then
			vect.delete_at(j)
			cont+=1
		else
			break
		end
	end
	lett[i] = itm.to_i
	auxi[i] = cont
	i+=1
end
vect = []
for i in 0..lett.length-1
	vect.push(auxi[i])
	vect.push(lett[i])
end
print vect.join(" ")
