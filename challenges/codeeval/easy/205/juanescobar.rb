File.open(ARGV[0]).each_line do |line|
    puts line.downcase.gsub(/[^a-z\s]/i, ' ').split.join(" ")
end
