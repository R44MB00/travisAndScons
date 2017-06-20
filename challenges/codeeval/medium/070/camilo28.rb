=begin
Title: Overlapping Rectangles
url: https://www.codeeval.com/open_challenges/70/
=end
def overlap_rectangles(rute)
=begin
    This function compute the when two rectangles are overlap
    file: testcase
    algoritm : if the area is major to 0 have a interception
    return: True whether is overlap and false when not
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        line = line.delete("\n").split(",").map(&:to_i)
        #coordenates rectangle A
        rec_Ax1,rec_Ay1, rec_Ax2, recAy2 = line[0], line[1], line[2], line[3]
        #coordenates rectangles B
        rec_Bx1,rec_By1, rec_Bx2, recBy2 = line[4], line[5], line[6], line[7]
        #whether the area between the rectangles coordenates is major to 0 have a interception
        area = ([rec_Ax1,rec_Bx1].max - [rec_Ax2,rec_Bx2].min) * ([rec_Ay1,rec_By1].max - [recAy2,recBy2].min)
        if area >= 0
          puts "False"
        else
          puts "True"
      end
    end
  end
end


#----------------------------testcase--------------------------
puts "Please enter the rute to the file:"
rute = gets.chomp()
overlap_rectangles(rute)
#--------------------------endtescase-------------------------
