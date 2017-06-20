File.open(ARGV[0]).each_line do |line|
age = line.to_i
puts "This program is for humans" if age < 0 or age > 100
puts "Still in Mama\'s arms" if age <= 2 and age >= 0
puts "Elementary school" if age <= 4 and age>= 3
puts "Preschool Maniac" if age<=11 and age >= 5
puts "Middle school" if age <=14 and age >= 12  
puts "High school" if age<= 18 and age >= 15    
puts "College" if age <= 23 and age >= 19
puts "Working for the man" if age <= 65 and age >= 23
puts "The Golden Years"if age <=100 and age >= 66
end