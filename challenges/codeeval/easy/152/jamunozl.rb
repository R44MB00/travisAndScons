begin
 #Sample code to read in test cases:
File.open(ARGV[0]).each_line do |line|
    i= line.to_i
    if i >=0 and i <=2
        puts"Still in Mama's arms"
    elsif i>=3 and i<=4
        puts "Preschool Maniac"
    elsif i>=5 and i<=11
        puts "Elementary school"
    elsif i>=12 and i<=14
        puts "Middle school"        
    elsif i>=15 and i<=18
        puts "High school"  
    elsif i>=19 and i<=22
        puts "College" 
    elsif i>=23 and i<=65
        puts "Working for the man" 
    elsif i>=66 and i<=100
        puts "The Golden Years" 
    else
        puts"This program is for humans"
    end
end
end
