#!/usr/bin/ruby
class WordToDigit
   #@@no_of_customers=0
    def initialize()
        x = Array.new
        y = Array.new
        File.open(ARGV[0]).each_line do |line|
          l1 = line.split("\n").map { |x| x }
          l1 = line.split(';').map { |x| x.chomp }
          #l1[l1.size].delete("\n")
          #print l1
          numbers_dict = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'}
          l1.each { |x| print numbers_dict[x] }
          puts
          #print '#{numbers_dict['one']}'
        end
    end
end

x = WordToDigit.new()