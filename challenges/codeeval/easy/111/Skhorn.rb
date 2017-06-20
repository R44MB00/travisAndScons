#!/usr/bin/ruby
class LongestWord
   #@@no_of_customers=0
   def initialize()
      len = Array.new
      File.open(ARGV[0]).each_line do |line|
         #line = line.gsub(/  /, " @ ")
         words = line.split(' ').map { |x| x }
         for word in words
            len.push(word.length)
         end
         
         print words[len.index(len.max)]
         puts
         len = Array.new
      end 
   end
end

x = LongestWord.new()