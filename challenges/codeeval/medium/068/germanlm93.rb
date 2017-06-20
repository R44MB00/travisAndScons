line = "([([)]])"
vect = line.split("")
valid = true
aux = []
for i in 0..vect.length-1 
	x = vect[i]
	if x == "[" || x == "{" || x == "(" then
		aux.push(x)
	else
		if aux.length == 0 then
			valid = false
			break
		end
		y = aux.pop()
		if y == "(" then
			if x != ")" then
				valid = false
				break
			end
		else
			if y == "[" then
				if x != "]" then
					valid = false
					break
				end
			else
				if y == "{" then
					if x != "}" then
						valid = false
						break
					else
						valid = false
						break
					end
				end
			end
		end
	end
end
if valid then
	print "True"
else
	print "False"
end
