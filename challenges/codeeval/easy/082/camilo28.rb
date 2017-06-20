=begin
Title: Armstrong Numbers
url= https://www.codeeval.com/open_challenges/82/
=end
def armstrong_numbers(rute)
=begin
  this function return True when a number is armstrong al false when not.
  rute: rute to the testcase
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        digits = line.delete("\n").split(//)
        result = 0
        number = digits.join().to_i
        #puts "#{digits}"
        for digit in digits
          result += digit.to_i ** digits.length
        end
        if result == number
          puts "True"
        else
          puts "False"
        end
        #puts "#{result}:#{number}"
      end
    end
  end
#----------------------------------testcase-------------------------
puts "Please enter the rute to the file: "
path = gets.chomp
armstrong_numbers(path)
#---------------------------------endtestcase-----------------------
