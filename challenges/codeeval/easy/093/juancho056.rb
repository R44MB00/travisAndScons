File.open("test.txt").each_line do |line|
    puts line.split(" ").map(&:capitalize).join(" ")
end
