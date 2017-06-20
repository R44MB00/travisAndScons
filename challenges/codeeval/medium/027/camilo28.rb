puts "Please enter de rute of file"
inp = gets.chomp
def dec_bin(rute)
  """
  this function read a file and convert to bin
  """
  out = []
  if File.exist? rute
    File.foreach(rute) do |line|
        puts "%b" % line.to_i
    end
  else
      puts "the file doesnt exist, sorry :("

  end
end

dec_bin(inp)
