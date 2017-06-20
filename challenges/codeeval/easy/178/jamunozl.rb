begin
 
File.open(ARGV[0]).each_line do |line|

	array=line.split(" ")
	number = Math.sqrt(array.length)
	y=0
	result = []
	number1 = number-1

	for i in 0..(number1)
		for j in 0..(number1) 
			var = (number*(j+1)) - 1 - i
			result[var] = array[y]
			y=y+1 
		end
	end
	puts result.join(" ")
end
end
