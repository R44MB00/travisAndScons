=begin
 Sample code to read in test cases:
File.open(ARGV[0]).each_line do |line|
end
=end

Dir.chdir(Dir.pwd)
File.open(ARGV[0], "r").each_line do |line|
  #puts line
  puts line.scan(/[[:alpha:]]+/).join(" ").downcase
end
