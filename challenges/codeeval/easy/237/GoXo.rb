class Panacea

	File.open(ARGV[0]).each_line do |line|
 
		parts = line.split("|")
		hex = parts[0].split(' ')
		bin = parts[1].split(' ')
		sum_hex = 00
		sum_bin = 00

		hex.each { |val|
			sum_hex += val.to_i(16)
		}
		
		bin.each { |val|
			sum_bin += val.to_i(2)
		}

		if (sum_bin >= sum_hex) 
			puts "True"
		else
			puts "False"
		end	
  	end
end