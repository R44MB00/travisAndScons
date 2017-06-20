=begin
Title: longest word
CodeEval:Easy
url: https://www.codeeval.com/open_challenges/111/
=end
def longest(rute)
=begin
  file: The first argument is a path to a file. The file contains strings.
=end
  if File.exist? rute
    File.foreach(rute) do |line|
      line = line.split(" ")
      max = line[0]
      out = ""
      s = ""
      for word in line
        if word.length > max.length
          max = word
        end
      end
      max.each_char do |char|
        s =  "*" * max.index(char)
        out += s + char +  " "
      end
      puts "#{out}"
    end
  end
end

puts "Please enter the rute to the file"
input = gets.chomp
longest(input)
