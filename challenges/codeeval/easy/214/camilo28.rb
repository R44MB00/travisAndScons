=begin
Title: Time eat
url: https://www.codeeval.com/open_challenges/214/
=end
#this module convert string in time format
require 'time'
def time_eat(rute)
=begin
this fuction compute the diferente between each hours
input: rute to the testcases
return: the sorted hours
=end
  if File.exist? rute
    File.foreach(rute) do |line|
      line = line.delete("\n").split(" ")
      times = []
      out = ""
      for date in line
        #convert string to time
        times.push(Time.parse(date))
      end
      for reverse in times.sort.reverse.map(&:to_s)
        out += reverse.split(" ")[1] + " "
      end
      puts "#{out[0...-1]}"
    end
  end
end

#-------------------------testcase----------------------------
puts "Please enter the rute to the file"
input = gets.chomp
time_eat(input)
#------------------------endtescase---------------------------
