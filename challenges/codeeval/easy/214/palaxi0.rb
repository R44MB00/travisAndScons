
File.open(ARGV[0]).each_line do |line|
lista = line.split(" ")
puts (lista.sort.reverse.join(" "))
end
