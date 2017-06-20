
File.open(ARGV[0]).each_line do |line|
    splited = line.split(" ")
    maxi = splited.max_by(&:length)
    count = 0
    maxi.split("").each do |i|
        print "*"*count + i + " "
        count+=1
    end
    puts ""
end
