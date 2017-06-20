counter = 1
addition=0

ARGV.each do|a|
 file = File.new(a,"r")
 while (line = file.gets)
    num=  line
    counter = counter + 1
    addition= num.to_i + addition
 end
 file.close
 puts addition
end




