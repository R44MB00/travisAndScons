class ArmStrong
	File.open(ARGV[0]).each_line do |line|
		num_int_first = line.to_i
		sum = 0
		num_string = line.to_s.strip().split(//)
		num_pow = num_string.length
		num_string.each_with_index { |val,i| 
			sum += (val.to_i)**num_pow
		}
		if (sum == num_int_first)
			puts "True"
		else
			puts "False"
		end	
	end
end
