File.open(ARGV[0]).each_line do |line|
    stringe = line
    lista = stringe.gsub(/[^-?\d+]/, ' ').split(" ").map!(&:to_i)
    lista2 = lista.combination(4).to_a
    count = 0
    lista2.each{ |arry|
      sum = 0
      arry.each{  |n| sum+=n }
      if sum == 0 then count+=1 end
    }
    puts count
end
