

def check(line)
	data = line.split(',')
	data = data.sort
	full = data.uniq 
	dupl = []
	for i in 0..full.length-1 do
		dupl[i] = data.count(full[i])
	end
	if dupl.count(dupl.max) >= 2 then
		puts 'None'
	else
		puts full[dupl.index(dupl.max)]
	end
end

check('92,19,19,76,19,21,19,85,19,19,19,94,19,19,22,67,83,19,19,54,59,1,19,19')
