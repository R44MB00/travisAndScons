class Muliples 
	File.open(ARGV[0]).each_line do |line|
		parts = line.split(",")
		num1 = parts[0].to_i
		num2 = parts[1].to_i
		result = num2
		i = 0
		while (result < num1)
			i += 1
			result = num2*i
		end	
        puts result
	end
end