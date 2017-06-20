#!/usr/bin/ruby
class MorseCode
   #@@no_of_customers=0
   def initialize()
      x = Array.new
      y = Array.new
      morse_dict = {'.-' => 'A',
       '-...' => 'B', 
       '-.-.' => 'C',
       '-..' => 'D',
       '.' => 'E',
       '..-.' => 'F',
       '--.' => 'G',
       '....' => 'H',
       '..' => 'I',
       '.---' => 'J',
       '-.-' => 'K',
       '.-..' => 'L',
       '--' => 'M',
       '-.' => 'N',
       '---' => 'O',
       '.--.' => 'P',
       '--.-' => 'Q',
       '.-.' => 'R',
       '...' => 'S',
       '-' => 'T',
       '..-' => 'U',
       '...-' => 'V',
       '.--' => 'W',
       '-..-' => 'X',
       '-.--' => 'Y',
       '--..' => 'Z',
       '-----' => '0',
       '.----' => '1',
       '..---' => '2',
       '...--' => '3',
       '....-' => '4',
       '.....' => '5',
       '-....' => '6',
       '--...' => '7',
       '---..' => '8',
       '----.' => '9',
       '@' => ' ' }

      File.open(ARGV[0]).each_line do |line|
         line = line.gsub(/  /, " @ ")
         l1 = line.split(' ').map { |x| x }
         l1.each { |x| print morse_dict[x]}
         puts
         

      end 
   end
end

x = MorseCode.new()