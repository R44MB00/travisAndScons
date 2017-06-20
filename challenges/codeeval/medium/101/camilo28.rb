=begin
Title: Find a square
url: https://www.codeeval.com/open_challenges/101/
=end
def is_squeare(rute)
=begin
    This function compute whether a point is inside a circunference
    equation: (x0-x1)**2+(y02-y2)**2 = (x1-x2)**2+(y1-y2)**2 --> compara each point
    file: testcase
    return: true whether is square and false when not
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        line = line.delete("\n").delete("(").delete(")").split(" ")
        pointA, pointB, pointC, pointD = clean_text(line)
        points = [pointA, pointB, pointC, pointD]
        points = points.combination(2).to_a
        con = 0
        #con the differents distance whether is square should be two
        con_d = {}
        dist = 0
        #this compute the distance in each point
        while con <= points.length-1
           dist = (Math.sqrt((points[con][0][0].to_f - points[con][1][0].to_f)**
                                2 + (points[con][0][1].to_f - points[con][1][1].to_f) ** 2))
           con_d[dist] = 0
           con += 1
        end
        #the distance in each point is equal, less corners
        if con_d.length == 2
          puts "true"
        else
          puts "false"
        end
      end
    end
  end

def clean_text(line)
=begin
  this fucntion clean the input and return the values of the coordenates
=end
  pointA = line[0].split(",").map(&:to_i)
  pointB = line[1].split(",").map(&:to_i)
  pointC = line[2].split(",").map(&:to_i)
  pointD = line[3].split(",").map(&:to_i)
  return pointA, pointB, pointC, pointD
end

#----------------------------testcase--------------------------
  puts "Please enter the rute to the file:"
  rute = gets.chomp()
  is_squeare(rute)
#--------------------------endtescase-------------------------
