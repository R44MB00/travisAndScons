"""
Title: without repetition
CodeEval:Easy
url: https://www.codeeval.com/open_challenges/173/
"""
def non_repeated(rute)
  """
  file: The first argument is a path to a file. The file contains strings.
  """
  if File.exist? rute
    File.foreach(rute) do |line|
      out = ""
      line = line.split(" ")

      for val in line
        repeat = []

      val.each_char do |char|
      if not repeat[-1] == char
        repeat.push(char)
        out = out + char
      end
        end
        #puts "#{repeat}"
      out += " "
    end
      puts "#{out}"
      end

    end
  end


puts "Please enter the route to the file".chomp
rute = gets.chomp()
non_repeated(rute)
