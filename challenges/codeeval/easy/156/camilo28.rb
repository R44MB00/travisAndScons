=begin
Title: Roller words
CodeEval: easy
Url:https://www.codeeval.com/open_challenges/156/
=end
def roller(rute)
=begin
sets the case of text characters according to a rules
rute: rute to the testcase
=end
  if File.exist? rute
    File.foreach(rute) do |line|
      out = ""
      words = line.delete("\n")
      letters = []
      con = 0
      words = words.downcase()
      for i in 97...123
        letters.push(i.chr)
      end
      #while con <= words.length
      words.each_char do |char|
        if letters.include? char
          con +=1
          if con % 2 == 0
            out += char.upcase()
          else
            out += char.downcase()
          end
        end
        if not letters.include? char
          out += char
        end
      end
       puts "#{out.swapcase}".chomp
  end
end
end

#------------------------testcase-----------------------
puts "Please enter the rute to the fil"
input = gets.chomp
roller(input)
#.............................endtescase.....................
