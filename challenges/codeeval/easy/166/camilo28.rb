=begin
Title: Delta time
url: https://www.codeeval.com/open_challenges/166/
=end
#this module convert string in time format
require 'time'
def delta_time(rute)
=begin
this fuction compute the diferente between two hours
=end
  if File.exist? rute
    File.foreach(rute) do |line|
      line = line.delete("\n").split(" ")
      time_one = Time.parse(line[0])
      time_two = Time.parse(line[1])
      if time_one > time_two
      a = time_one - time_two
    else
      a = time_two - time_one
    end
    #conver the result to hour, minutes and seconds
      hour = (a/3600).to_i
      min = ((a/60)%60).to_i
      sec = (a%60).to_i
      out = ""
      #configure the output for content 00 if the result is menor to ten
      if hour < 10
        out += "0"+ hour.to_s + ":"
      else
        out += hour.to_s + ":"
      end
      if min < 10
        out += "0"+ min.to_s + ":"
      else
        out += min.to_s + ":"
      end
      if sec < 10
        out += "0"+ sec.to_s
      else
        out += sec.to_s
      end
      puts "#{out}"
    end
  end
end

#-------------------------testcase----------------------------
puts "Please enter the rute to the file"
input = gets.chomp
delta_time(input)
#------------------------endtescase---------------------------
