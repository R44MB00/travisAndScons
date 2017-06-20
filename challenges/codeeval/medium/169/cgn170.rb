File.open(ARGV[0]).each_line do |line|
	test_array=line.split(" ")
	words=[]
	pattern=test_array[0]
	pattern.gsub! '.', '\.'
	pattern.gsub! '*', '.*'
	pattern.gsub! '?', '.'
	pattern="^"+pattern+"$"
	for i in 1..test_array.length
		words.push(test_array[i])
	end
	answer=[]
	for i in 0..words.length
		if /#{pattern}/.match(words[i])
			answer.push(words[i])
		end
	end
	if answer.length>0
		puts answer.join(" ")
	else
		puts "-"
	end
end
