"""
Title: Reverse and add
CodeEval: Moderate
url: https://www.codeeval.com/open_challenges/45/
"""
def iteration(rute)
  """
  rute: argument a path to a filename
  """
  if File.exist? rute
    File.foreach(rute) do |line|
      num = line.delete("\n")
      result = 10
      con = 0
      while not  ispalindrome(result.to_s)
          result = num.to_i + rever(num)
          num = result.to_s
          con += 1
      end
      puts "#{con}, #{result}"
    end
  end
end

def ispalindrome(num)
  """
  compute if a variable is palindrome or no
  """
  reverse = ""
  num.each_char do |char|
    reverse = char + reverse
  end
  if num == reverse
    return true
  else
    return false
  end
end

def rever(num)
  """
  return the rever to the a num
  """
  reverse = ""
  num.each_char do |char|
    reverse = char + reverse
  end
  return reverse.to_i
end


"""
Testcases
"""
#--------------------test----------------------
#puts ispalindrome("10001")
#puts ispalindrome("1010")
#puts ispalindrome("7667")
#puts ispalindrome("786")
puts "Please enter the rute to the file"
path = gets.chomp
iteration(path)

#---------------------endtest------------------
