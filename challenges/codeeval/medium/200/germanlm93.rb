line = "10110001 11111000 11111110 11111111 11111111 11111111 11111111 11101101 11111111 01111111 11110010 10100111;84.525784"
(numbers, n) = line.split(";")

def bin2dis(bin)
	bin = bin.split("").reverse().join("")
	puts bin
	disp = "1111110,
			0110000,
			1101101,
			1111001,
			0110011,
			1011011,
			1011111,
			1110000,
			1111111,
			1110011";
	pnt = bin[bin.length-1].to_i
	bin = bin[0..bin.length-2]
	num = disp.split(",").index(bin)
	if( num == nil ) 
		return nil
	else
		if pnt == 1
			return num.to_s + "."
		else
			return num
		end
	end
end

puts bin2dis('11111011')
