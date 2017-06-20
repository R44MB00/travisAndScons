line = "12 13 12 13"
x1, y1, x2, y2 = line.split(" ")
x1 = x1.to_i
y1 = y1.to_i
x2 = x2.to_i
y2 = y2.to_i
if (x2 == x1 and y2 == y1) 
	print 'here' 
else
	if (x2 < x1 and y2 < y1) 
		print 'S' 
	else
		if (x2 < x1 and y2 > y1) 
			print 'NW' 
		else
			if (x2 < x1 and y2 == y1) 
				print 'W' 
			else
				if (x2 > x1 and y2 < y1) 
					print 'SE' 
				else
					if (x2 > x1 and y2 > y1) 
						print 'NE' 
					else
						if (x2 > x1 and y2 == y1) 
							print 'E' 
						else
							print 'N'
						end
					end
				end
			end
		end
	end
end






