class Simple_Sort
	File.open(ARGV[0]).each_line do |line|
		array = line.split(" ").map(&:to_f)
		array.sort!
		array.each_with_index { |x,i| 
			print ('%.3f'%x)
			if (i != (array.length-1))
				print (" ")	
			end
		}
		print ("\n")	
    end
end