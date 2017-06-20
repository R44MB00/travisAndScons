begin

File.open("test.txt").each_line do |line|
	line.delete! '(),'    # remover caracteres 
	
	#line.split(" ").map { |s| s.to_i }
	ary = Array.new
	line.split(" ").each do |i|
	 	#puts i
	 	ary.insert(0, i)
	end

	x1=ary[3].to_i
	x2=ary[1].to_i
	y1=ary[2].to_i
	y2=ary[0].to_i
	

	sumax=x2-x1
	sumay=y2-y1
	suma=sumax*sumax + sumay*sumay
	#suma= (ary[1]-ary[3])**2 + (ary[0]-ary[2])**2
	result =Math.sqrt(suma)
	puts result.to_i
end
end
