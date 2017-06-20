puts "Please enter de rute of file"
inp = gets.chomp
def input(rute)
  """
  this function read a file
  """
  if File.exist? rute
    File.foreach(rute) do |line|
        if line.chomp.match("[0-9A-Za-z]+@[a-z]+[\.][a-z]")
            #[0-9A-Za-z]@[a-z]+\.[a-z]
            puts "true"
        else
            puts "false"
        end    
      #puts line.chomp    
    end
  else
      puts "the file doesnt exist, sorry :("

  end
end

input(inp)
