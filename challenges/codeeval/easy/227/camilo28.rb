=begin
Title: Real Fake
url= https://www.codeeval.com/open_challenges/227/
=end
def real(rute)
=begin
  this function compute whether a credit card is real o fake
  rute: rute to the testcase
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        line = line.delete("\n").delete(" ")
        pos = 0
        sum = 0
        for id_x in 0..line.length
          if id_x % 2 == 0
            sum += line[id_x].to_i * 2
          else
            sum += line[id_x].to_i
          end
        end
        if sum % 10 == 0
          puts "Real"
        else
          puts "Fake"
        end
      end
    end
end

#-----------------------testCase-------------------------------
puts "Please enter the rute to the file:"
path = gets.chomp
real(path)
#------------------------endTestCase-------------------------------
