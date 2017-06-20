puts "Please enter de rute of file"
inp = gets.chomp
def input(rute)
  """
  this function read a file
  """
  if File.exist? rute
    File.foreach(rute) do |line|
        sum = 0
        line.each_char do |num|
            sum +=  num.to_i
            
        end
        puts sum
            #[0-9A-Za-z]@[a-z]+\.[a-z]
            
      #puts line.chomp    
    end
  else
      puts "the file doesnt exist, sorry :("

  end
end

input(inp)
