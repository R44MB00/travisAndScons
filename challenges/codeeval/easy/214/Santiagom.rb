require "time"
#File.open(ARGV[0]).each_line do |line|
File.open("test.txt").each_line do |line|
    line = line.split(" ")
    line = line.sort_by{|l| Time.parse(l)}.reverse
    puts line.join(" ")
end
