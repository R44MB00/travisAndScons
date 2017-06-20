=begin
Title: swap numbers
CodeEval: Easy
rute: https://www.codeeval.com/open_challenges/196/
=end

def swap_number(rute)
=begin
  this fucntion change the last digit with the firts
  rute: rute to the file for test
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        words = line.delete("\n").split(" ")
        out = ""
        for word in words
          out += word[-1] + word[1..-2] + word[0] +  " "
        end
        puts "#{out[0...-1]}"
      end
    end
end

#------------------------Test--------------------------
puts "Please enter the url to the file"
path = gets.chomp
swap_number(path)
#---------------------end_test---------------------
