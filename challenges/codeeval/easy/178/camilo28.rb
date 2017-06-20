=begin
title: Matrix Rotation
url: https://www.codeeval.com/open_challenges/178/
=end
def rotation(rute)
=begin
  this function transpone a matrix
  rute: rute to the testcas
  return: transpose matrix
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        line = line.delete("\n").split(" ")
        #To obtain a matrix of equal size is necesary find the squaare N*N =
        len =  Math.sqrt(line.length)
        con = 0
        matrix = []
        traspose = []
        (0..line.length).step(len) do |id_x|
          matrix.push(line[id_x...id_x+len])
        end
        matrix.pop()
        matrix = matrix.transpose
        for id_x in matrix
          traspose.push(id_x.reverse)
        end
        puts "#{traspose.join(" ")}"
      end

    end
  end
puts "Please enter the rute to the file"
path = gets.chomp
rotation(path)
