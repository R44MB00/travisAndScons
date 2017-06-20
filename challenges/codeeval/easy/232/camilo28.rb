=begin
Title: Not so clever
url= https://www.codeeval.com/open_challenges/232/
=end
def clever(rute)
=begin
  this function return True when a number is armstrong al false when not.
  rute: rute to the testcase
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        line = line.delete("\n").split("|")
        digits = line[0].lstrip.split(" ").map(&:to_i)
        cicles = line[1].to_i
        while  cicles > 0
          sor(digits)
          cicles -=1
        end
        puts "#{digits.join(" ")}"
    end
  end
end

def sor(digits)
=begin
This is a auxiliar function, sort the num when start a new cicle 
=end
  for id_x in (0...digits.length-1).to_a
    if digits[id_x + 1] < digits[id_x]
      aux = digits[id_x]
      digits[id_x] = digits[id_x + 1]
      digits[id_x + 1] = aux
      break
    end
  end
  return digits
end


#--------------------testcase----------------
  puts "Please enter the rute to the file: "
  path = gets.chomp
  clever(path)
#------------------endtestcase---------------
