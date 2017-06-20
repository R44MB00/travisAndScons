
limit = -1
list = []
File.open('/home/glopez/SGS.txt', 'r') do |f1|
  while linea = f1.gets
	if limit == -1 then
		limit = linea.to_i
	else
		list = list.push(linea.strip)
	end
  end
end
for i in 0..list.length-1
	for j in i+1..list.length
		if list[i].to_s.length < list[j].to_s.length then
			aux = list[i]
			list[i] = list[j]
			list[j] = aux
		end
	end
end
puts list.values_at(0..limit-1)

