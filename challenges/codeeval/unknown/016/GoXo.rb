class Number_ones

	File.open(ARGV[0]).each_line do |line|

	num_dec = line.to_i
	num_bin = num_dec.to_s(2)
	count = 0

	num_bin.each_char { |c|
		if (c == '1')
			count += 1
		end	
	}
	puts count			  
	
  	end
end