=begin
Title: Knight moves
url: https://www.codeeval.com/open_challenges/180
=end
def knight_moves(rute)
=begin
  This function computhe the moves of the special knight in a game of ajedrez
  file: rute to the testcase
  return: the posibles moves
=end
  #nomeclature of the table
  nomecl = {1 => "a", 2 =>"b", 3=>"c", 4=>"d",5=>"e", 6=>"f", 7=>"g", 8=>"h"}
  if File.exist? rute
    File.foreach(rute) do |line|
      posi= line.delete("\n").split(//)
      moves = []
      #if the move is  out of the table no is valid
      #vertical moves
      if  ((1..8).to_a.include? (posi[1].to_i - 1)) && ((1..8).to_a.include? (nomecl.key(posi[0]) - 2))
          moves.push(nomecl[nomecl.key(posi[0]) - 2] + (posi[1].to_i - 1).to_s)
      end
      if  ((1..8).to_a.include? (posi[1].to_i + 1)) && ((1..8).to_a.include? (nomecl.key(posi[0]) - 2))
          moves.push(nomecl[nomecl.key(posi[0]) - 2] + (posi[1].to_i + 1).to_s)
      end
      if  ((1..8).to_a.include? (posi[1].to_i - 1)) && ((1..8).to_a.include? (nomecl.key(posi[0]) + 2))
          moves.push(nomecl[nomecl.key(posi[0]) + 2] + (posi[1].to_i - 1).to_s)
      end
      if  ((1..8).to_a.include? (posi[1].to_i + 1)) && ((1..8).to_a.include? (nomecl.key(posi[0]) + 2))
          moves.push(nomecl[nomecl.key(posi[0]) + 2] + (posi[1].to_i + 1).to_s)
      end
      #horizontal moves
      if  ((1..8).to_a.include? (posi[1].to_i - 2)) && ((1..8).to_a.include? (nomecl.key(posi[0]) - 1))
          moves.push(nomecl[nomecl.key(posi[0]) - 1] + (posi[1].to_i - 2).to_s)
      end
      if  ((1..8).to_a.include? (posi[1].to_i - 2)) && ((1..8).to_a.include? (nomecl.key(posi[0]) + 1))
          moves.push(nomecl[nomecl.key(posi[0]) + 1] + (posi[1].to_i - 2).to_s)
      end
      if  ((1..8).to_a.include? (posi[1].to_i + 2)) && ((1..8).to_a.include? (nomecl.key(posi[0]) - 1))
          moves.push(nomecl[nomecl.key(posi[0]) - 1] + (posi[1].to_i + 2 ).to_s)
      end
      if  ((1..8).to_a.include? (posi[1].to_i + 2)) && ((1..8).to_a.include? (nomecl.key(posi[0]) + 1))
          moves.push(nomecl[nomecl.key(posi[0]) + 1] + (posi[1].to_i + 2).to_s)
      end
      puts "#{moves.sort.join(" ")}"
      end
    end
end

#-------------------------testcase----------------------------
puts "Please enter the rute to the file"
input = gets.chomp
knight_moves(input)
#------------------------endtescase---------------------------
