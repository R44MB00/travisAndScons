line = "Codeeval,Code*"
a,b = line.split(",")
if b.index('\*') != nil
	b.gsub! '\\',''
	if(a.index(b) != nil)
		puts 'true'
	else
		puts 'false'
	end
else
	if b.index("*") != nil
		inisub = b.split("*")[0]
		endsub = b.split("*")[1]
		if(inisub == nil && endsub != nil)
			if (a.index(endsub) != nil)
				puts 'true'
			else
				puts 'false'
			end
		else
			if(endsub == nil && inisub != nil)
				if (a.index(inisub) != nil)
					puts 'true'
				else
					puts 'false'
				end
			else
				if(a.index(inisub) != nil && a.index(endsub)!= nil)
					if(a.index(inisub) < a.index(endsub))
						puts 'true'
					else
						puts 'false'
					end
				else
					puts 'false'
				end
			end
		end
	else
		if(a.index(b) != nil)
			puts 'true'
		else
			puts 'false'
		end
	end
end


