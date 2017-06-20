=begin
Title: Query Board
url= https://www.codeeval.com/open_challenges/87/
=end
require 'matrix'
def query_board(rute)
=begin
  this function return each operation in a matrix
  rute: rute to the testcase
  return: querys in matrix
=end
    #create matrix 256*256
    matrix = Matrix.zero(256)
    if File.exist? rute
      File.foreach(rute) do |line|
        #add values in col
        if /SetCol/ =~ line
          chan = line.split(" ")
        for id_x in (0..255).to_a
          matrix.send(:[]=,  id_x, chan[1].to_i, chan[2].to_i)
        end
        end
        #add values in row
        if /SetRow/ =~ line
          chan = line.split(" ")
          for id_x in (0..255).to_a
            matrix.send(:[]=, chan[1].to_i, id_x,chan[2].to_i)
          end
          end
        # return query in col
        if /QueryCol/ =~ line
          chan = line.split(" ")
          puts "#{matrix.column(chan[1].to_i).inject(:+)}"
        end
        # return query in row
        if /QueryRow/ =~ line
          chan = line.split(" ")
          puts "#{matrix.row(chan[1].to_i).inject(:+)}"
        end
    end
  end
end


#-------------------------testcase----------------------------
puts "Please enter the rute to the file"
input = gets.chomp
query_board(input)
#-----------------------test_case-----------------------------
