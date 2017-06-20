class Without_Repetitions
	File.open(ARGV[0]).each_line do |line|
		array = line.split("")
		array.each_with_index { |x,i| 
			if (i >= 0)
				if (array[i]!=array[i+1])
				print (x)	
				end
			end
		}
	end
end