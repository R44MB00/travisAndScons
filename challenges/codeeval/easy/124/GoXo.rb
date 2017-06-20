class Road_Trip
	File.open(ARGV[0]).each_line do |line|
		array = line.split(";")
		d = (array.map {|x| x[/\d+/]}).compact.map(&:to_i)
		d.sort!
		res = Array.new
		d.each_with_index { |val,i| 
			if (i==0)
				res.push(val)
			else
				res.push(val-d[i-1])
			end	
		}
		puts res.join(",")	
	end
end