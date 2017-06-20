class Hex_To_DEcimal
	File.open(ARGV[0]).each_line do |line|
		puts line.to_i(16).to_s(10)
  	end
end