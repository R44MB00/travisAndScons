class Testing
	File.open(ARGV[0]).each_line do |line|
	
		parts = line.split(" | ")
		sum = 0
		parts[1].strip().each_char.with_index  do |ch,i|

		    if (ch != parts[0][i])
		    	sum += 1
		   	end	
			end
	
		if sum == 0
			puts "Done"
		end	
		if  0 < sum and sum <= 2
			puts "Low"
		end
		if  2 < sum and sum <= 4
			puts "Medium"
		end
		if  4 < sum and sum <= 6
			puts "High"
		end
		if  sum > 6
			puts "Critical"
		end
	end
end