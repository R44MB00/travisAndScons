File.open("test.txt").each_line do |line|
    a=line.split(" ").reverse.join(" ")
    puts a
end
