"""
Title: longest word
CodeEval:Easy
url: https://www.codeeval.com/open_challenges/111/
"""
def longest(rute)
  """
  file: The first argument is a path to a file. The file contains strings.
  """
  if File.exist? rute
    File.foreach(rute) do |line|
      line = line.split(" ")
      max = line[0]
      for word in line
        if word.length > max.length
          max = word
        end
      end
      puts "#{max}"
    end
  end
end

puts "Please enter the rute to the file"
input = gets.chomp
longest(input)
