=begin
Title: Point in circle
url: https://www.codeeval.com/open_challenges/98/
=end
def point_in_circle(rute)
=begin
    This function compute whether a point is inside a circunference
    equation: (x0-cx1)**2+(y02-cy2)**2 <= r**2
    file: testcase
    return: true whether the point is inside and false when not
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        line = line.delete("\n").delete(" ").split(";")
        #regist = [center(x,y),point(x,y),r]
        regist = clear_text(line)
         point_circle = regist[0][1].delete("(").delete(")").split(",")
         radius = regist[1][1].to_f
         point = regist[2][1].delete("(").delete(")").split(",")
         #puts "#{point[0]}  #{point_circle[0]}"
         dist = Math.sqrt((point[0].to_f - point_circle[0].to_f) ** 2 + (point[1].to_f - point_circle[1].to_f) ** 2)
         #print "dist: #{dist.round(2)}, radius: #{radius}"
         if dist <= radius
           puts "true"
         else
           puts "false"
        end
       end
    end
end

def clear_text(list)
=begin
  this function clean the input for separeted the text of the values
  return a list with [cicle_center,point, radius]
=end
  regis = []
  for x in list
    regis.push(x.split(":"))
  end
  return regis
end

#----------------------------testcase--------------------------
puts "Please enter the rute to the file:"
rute = gets.chomp()
point_in_circle(rute)
#--------------------------endtescase-------------------------
