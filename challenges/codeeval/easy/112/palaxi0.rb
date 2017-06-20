
File.open(ARGV[0]).each_line do |line|
    test = line.strip
    stringe= test.split(" : ")[0].split(" ")
    numbers = (test.split(" : ")[1]).gsub(/[^\d+]/, ' ').split(" ").map { |s| s.to_i }
    for i in (1..(numbers.length - 1)).step(2)
      stringe [numbers[i-1]],stringe[numbers[i]]=stringe [numbers[i]],stringe[numbers[i-1]]
    end
    puts stringe.join(" ")
end
