=begin
Title: happy Numbers
url= https://www.codeeval.com/open_challenges/39/
=end
def happy_numbers(rute)
=begin
  this function return True when a number is happy or false when not.
  rute: rute to the testcase
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        digits = line.delete("\n")
        intent = 0
        sum = 0
        value = digits
        while intent < 20
          value.each_char do |digit|
            sum += digit.to_i ** 2
          end
          if sum == 1
            break

          else
            value = sum.to_s
            sum = 0
          end
          intent += 1
        end
        if sum == 1
          puts "1"
        else
          puts "0"
        end
      end
    end
  end
  #----------------------------------testcase-------------------------
  puts "Please enter the rute to the file: "
  path = gets.chomp
  happy_numbers(path)
  #---------------------------------endtestcase-----------------------
