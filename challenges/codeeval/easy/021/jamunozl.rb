begin
 
File.open(ARGV[0]).each_line do |line|
    sum=0
    array=line.split("").map(&:to_i)
    array.pop()
    puts array.inject{|sum,x| sum + x }
end
end
