=begin
Title: Clean up words
url: https://www.codeeval.com/open_challenges/205/
=end
def clean(rute)
=begin
clean text of not alphabetic characteres
rute: rute to the testcase
=end
  if File.exist? rute
    File.foreach(rute) do |line|
      out = ""
      unk = ""
      words = line.delete("\n")
      letters = []
      con = 0
      words = words.downcase()
      for i in 97...123
        letters.push(i.chr)
      end
      words.each_char do |char|
        if letters.include? char
          out += char
        elsif not letters.include? char
          if not out[-1] == " "
            out += " "
          end
        end
      end
      if out[0] == " "
        puts "#{out[1..-1]}"
      else
      puts "#{out}"
    end
    end
  end
end


#------------------------testcase-----------------------
puts "Please enter the rute to the fil"
input = gets.chomp
clean(input)
#.............................endtescase.....................
