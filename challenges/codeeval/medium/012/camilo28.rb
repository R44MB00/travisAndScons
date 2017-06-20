"""
Title: firts non-repeated characters
CodeEval: medium
Url: https://www.codeeval.com/open_challenges/12/
"""
def non_repeated(rute)
  """
  file: The first argument is a path to a file. The file contains strings.
  """
  if File.exist? rute
    File.foreach(rute) do |line|
      line = line.delete("\n")
      uni = []
      con = 0
      line.each_char do |char|
        if uni.include?(char) == true
          uni.delete(char)
        else
          uni.push(char)
        end
      end
      puts "#{uni[0]}".chomp
      #puts "#{line}".chomp
    end
  end
end

#------------------------Test--------------------------
puts "Please enter the url to the file"
path = gets.chomp
non_repeated(path)
#-------------------------end_test---------------------
