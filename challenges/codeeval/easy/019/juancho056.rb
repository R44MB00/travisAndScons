#Bit Position
File.open("test.txt").each_line do |line|
    n,p1,p2= line.split(",").map(&:to_i) #The map method takes an enumerable object and a block, and runs the block for each element
    num1,num2=[p1,p2].map{|p|(n>>p-1)&1}
    puts num1==num2
end
