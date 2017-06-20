require 'prime'
begin
File.open("test.txt").each_line do |line|
compare=0
j=0
adition=0
line.split(",").each do |i|
j=j+1
integer=i.to_i
if(Prime.prime?(integer) and j==1)
	adition=1 
end
aoro=Prime.take_while {|p| p <= integer } 
lengthAoro=aoro.length
resultFinal = lengthAoro-compare+adition
compare = lengthAoro
if (j==2) then
	puts resultFinal
end
end
end
end
