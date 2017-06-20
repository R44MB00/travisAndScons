begin
last_line = nil
File.open('test.txt').each_line do |line|
	lowercase=0
	uppercase=0
	long=line.length-1
	line.split("").each do |i|
		#print i
		if i.ord>=65 and i.ord<=90
			uppercase=uppercase+1
		elsif i.ord>=97 and i.ord<=122
			lowercase=lowercase+1	
		end
	end
	suma=uppercase + lowercase
	if suma > long.to_i
		long=long+1
	end
	resultLowercase=(lowercase.to_f / long) * 100
	resultUppercase=(uppercase.to_f / long) * 100
	puts "lowercase: #{'%.02f' % resultLowercase} uppercase: #{'%.02f' % resultUppercase}"

end
end
