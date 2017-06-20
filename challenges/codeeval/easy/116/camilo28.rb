=begin
Title: Morse code
url= https://www.codeeval.com/open_challenges/116/
=end
def morse_code(rute)
=begin
  this function traslate morse codes
  rute: rute to the testcase
=end
    traduc = {".-"=>"A", "-..."=>"B","-.-."=>"C","-.."=>"D","."=>"E","..-."=>"F","--."=>"G",
       "...."=>"H",".."=>"I",".---"=>"J","-.-"=>"K", ".-.."=>"L","--"=>"M","-."=>"N","---"=>"O",".--."=>"P",
       "--.-"=>"Q",".-."=>"R","..."=>"S","-"=>"T","..-"=>"U","...-"=>"V",".--"=>"W","-..-"=>"X","-.--"=>"Y","--.."=>"Z",
       "-----"=>"0", ".----"=>"1","..---"=>"2","...--"=>"3","....-"=>"4","....."=>"5","-...."=>6,"--..."=>"7","---.."=>"8","----."=>"9"}
    if File.exist? rute
      File.foreach(rute) do |line|
        out = ""
        line = line.delete("\n").split(/ /)
        #puts "#{line}"
          for letter in line
          if traduc.include? letter
            out += traduc[letter].to_s
          else
            out+= " "
          end
        end
      puts "#{out}"
    end
  end
end

#-------------------------------testCase-----------------------------
puts "Enter the rute to the file:"
path = gets.chomp
morse_code(path)
#---------------------------------endTescase-------------------------
