begin
# Sample code to read in test cases:
File.open("test.txt").each_line do |line|
	array= Array.new(3)
	line.split(",").each do |i|
		array.push(i)
	end
	array = array.compact #me quita los elementos nil en el array
	array = array.collect{|x| x.strip || x } # me quita el \n en el array
	array = array.map { |i| i.to_i } #convierto el array string a array integer
	number1 = array[0].to_s(2) # conver to binary
	number1 = number1.to_s
	number2 = array[1].to_i
	number3 = array[2].to_i
	number1Length=number1.length
	position1=number1[number1Length-number2]
	position2=number1[number1Length-number3]
	if position1 == position2
		puts 'true'
	else
		puts 'false'
	end
	#puts number1, position1, position2
	#number1 = number1.to_s  	#convert to string
	#number1=number1.to_i		#convert to int
	#number2 = number2.to_s
	#number2=number2.to_i
	#number3 = number3.to_s
	#number3=number3.to_i
	#result=number1+number2+number3
	#result=result.to_s
	#if result.count('3')>0
	#	puts 'true'
	#else
	#	puts 'false'
	#end
	#puts number1,number2,number3
	#puts array.inspect # esta funcion me imprime todo el array


end
end
