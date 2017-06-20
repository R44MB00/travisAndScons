
File.open(ARGV[0]).each_line do |line|
list = line.split(" | ")[0].split(" ").map{|s| s.to_i}
iter = line.split(" | ")[1].to_i
while iter > 0
  if list == list.sort
    break
  else
    for i in 0..list.length-2
        list[i], list[i+1] = list[i+1], list[i] if list[i] > list[i+1]
    end
    iter-=1
  end
end
print list.join(" ") + "\n"
end
