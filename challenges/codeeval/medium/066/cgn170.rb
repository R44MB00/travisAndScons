#!/usr/bin/ruby 

File.open(ARGV[0]).each_line do |line|
	size=line.to_i+1
	i=1
	answer=""
	while i<size do
		if i==1 then
			answer="1 "
			print "1 "
		elsif i==2 then
			answer="1 1 "
			print "1 1 "
		else
			list=answer.split()
			temp=""
			(0..(list.length-1)).each do |i|
				sum=list[i].to_i+list[i+1].to_i
				temp=temp+sum.to_s+" "	
			end 
			print "1 "+temp			
			answer="1 "+temp
		end
		i+=1
	end
	print "\n"
end
