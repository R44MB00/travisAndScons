line = "Hey! Im Hello World Here,World Her";
srch = line.split(",")[1]
list = line.split(",")[0]
posi = list.index(srch)
if srch.index(" ") != nil
	size = srch.length
	tota = 0
	if (posi != nil)
		tota = size + posi
	end
	if tota == list.length
		puts 1
	else 
		puts 0
	end
else
	list = line.split(",")[0].split(" ")
	if posi == nil then
		print 0
	else
		if posi == list.length-1 then
			print 1
		else
			print 0
		end
	end
end
