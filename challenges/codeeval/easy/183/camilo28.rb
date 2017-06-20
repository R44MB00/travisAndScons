=begin
Title: Details
url: https://www.codeeval.com/open_challenges/183
=end
def details(rute)
=begin
  This function compute the posibles ways for a game
  file: testcase
  return: num of moved
=end
  if File.exist? rute
    File.foreach(rute) do |line|
      #this list save the empty details
      empty = []
      line = line.delete("\n").delete(" ").split(",")
      for hand in line
        #con the  moved
        con = 0
        hand.each_char do |deta|
          if deta == "."
            con += 1
          end
        end
        empty.push(con)
      end
      puts "#{empty.min}"
    end
  end
end

#----------------------------testcase--------------------------
puts "Please enter the rute to the file:"
rute = gets.chomp()
details(rute)
#--------------------------endtescase-------------------------
