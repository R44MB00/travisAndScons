class Lowest_Repetition
	File.open(ARGV[0]).each_line do |line|
		first = line[0]
		last = line.length - 1
		second = line[1..last].index(first)
		if  second == nil
			puts last
			next
		else	
			puts (second + 1)
		end
	end
end