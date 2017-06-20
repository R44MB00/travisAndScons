begin
chain = Array.new
chainDevelopers = Array.new
chainDesing = Array.new
File.open(ARGV[0]).each_line do |line|
chain=line.split('|')
chainDevelopers=chain[0]
chainDesing=chain[1]
chainDevelopers=chainDevelopers.split('')
chainDesing=chainDesing.split('')
long1=chainDesing.length
long=chainDevelopers.length
chainDevelopers.pop
chainDesing.shift
chainDesing.pop
long1=chainDesing.length
long=chainDevelopers.length
addNoEqual=0
for i in 0..long-1
    if chainDesing[i] != chainDevelopers[i]
       addNoEqual +=1
end
end
if addNoEqual>0 and addNoEqual<=2
    puts "Low"
elsif addNoEqual>=3 and addNoEqual<=4
    puts "Medium"
elsif addNoEqual>=5 and addNoEqual<=6
    puts "High"
elsif addNoEqual>6
    puts "Critical"
else
    puts "Done"
end
end
end
