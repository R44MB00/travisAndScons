begin
 
File.open(ARGV[0]).each_line do |line|
chain= line.delete(' ')
chain=chain.split('')
adding=0
adding1=0
for i in (0..15).step(2) do
    adding=adding+(2*chain[i].to_i)
    adding1=adding1+chain[i+1].to_i
end
score=(adding+adding1) % 10
if score == 0
    puts "Real"
else
    puts "Fake"
end
end
end
