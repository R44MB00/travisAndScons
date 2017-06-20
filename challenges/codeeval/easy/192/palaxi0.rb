
File.open(ARGV[0]).each_line do |line|
x1 = line.split(" ")[0].to_i
y1 = line.split(" ")[1].to_i
x2 = line.split(" ")[2].to_i
y2 = line.split(" ")[3].to_i
coord = ""
coord ="here" if y1 == y2 and x1 == x2
coord ="N" if y2 > y1 and x1 == x2
coord ="NE" if y2 > y1 and x2 > x1
coord ="NW" if y2 > y1 and x1 > x2
coord ="S" if y1 > y2 and x1 == x2
coord ="SE" if y2 < y1 and x2 > x1
coord ="SW" if y2 < y1 and x1 > x2
coord = "E" if y1 == y2 and x1 < x2
coord = "W" if y1 == y2 and x1 > x2
puts coord
end
