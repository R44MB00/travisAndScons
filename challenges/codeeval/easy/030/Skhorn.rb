#!/usr/bin/ruby
class SetIntersection
   #@@no_of_customers=0
   def initialize()
      x = Array.new
   	  y = Array.new
      File.open(ARGV[0]).each_line do |line|
   		l1, l2 = line.split(';').map { |x| x }

   		x = l1.split(',').map { |x| x.to_str }
   		y = l2.split(',').map { |x| x.to_str }
   		
   		if ((x & y).any?)
  		  print (x & y).join(',')
  		  puts
  		else
  		  puts
  		end
   	  end
   	  x = Array.new
   	  y = Array.new
   end
end

x = SetIntersection.new()
