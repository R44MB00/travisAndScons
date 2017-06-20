File.open(ARGV[0]).each_line do |line|
    if line.strip != "" then 
        dicci = "abcdefghijklmnopqrstuvwxyz"
        total = ""
        dicci.each_char {|i|        
        if (line.index(i).nil?)
            total +=i;
        end}
        puts (total==""? "NULL": total) 
    end 
end