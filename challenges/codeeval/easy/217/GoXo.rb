class Zeros
	File.open(ARGV[0]).each_line do |line|
		parts = line.split(/\s/)
		num_of_z = parts[0].to_i
		total = 0
		for i in 1..parts[1].to_i do
			count_of_z = 0
			num = (i.to_s(2))

			num.each_char do |c|
				if (c == '0') 
					count_of_z += 1
				end	
			end	

			if (count_of_z == num_of_z)
				total += 1
			end
		end
		puts total
	end
end