class Morse
	File.open(ARGV[0]).each_line do |line|
		parts = line.split(/\s/)
		alphaB = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
		code = Array[".-","-...","-.-.","-..",".","..-.","--.",
						"....","..",".---","-.-",".-..","--",
						"-.","---",".--.","--.-",".-.","...","-","..-","...-",
						".--","-..-","-.--","--..","-----",".----",
						"..---","...--","....-",".....",
						"-....","--...","---..","----."]
		result = ""				
		parts.each_with_index {|val|
			if (val=="")
				result += " "
			end	
			if (code.include? val)
				result += alphaB[code.index(val)]
			end		
		}
		puts result
  	end
end