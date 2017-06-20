=begin
Title: Black Card
url= https://www.codeeval.com/open_challenges/222/
=end
def black_card(rute)
=begin
  this function return the winner in a  game the black card
  rute: rute to the testcase
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        line = line.delete("\n").split("|")
        gamers = line[0].split(" ")
        aux = []
        num = line[1].to_i
        while gamers.count >= 1
          gamers.cycle { |x| puts gamers.pop(num -1)}
        end
        puts "\n"
      end
    end
end

#------------------------test-----------------------------
puts "Please enter the rute to the file"
path = gets.chomp
black_card(path)
#----------------------endTest-----------------------
