"""
Write a program which prints all the permutations of a string in alphabetical order.
We consider that digits < upper case letters < lower case letters. The sorting should be performed in ascending order.
"""
puts "Please enter the rute to the file: "
input = gets.chomp()
def permutation(file)

  if File.exist? file
    File.foreach(file) do |line|
    per = ""
    tem = []
    out  = line.split(//)
    tem = out[0...-1].permutation().to_a.uniq.sort
    for n in tem
      if not per == ""
      per = per +  "," + n * ""
    else
      per = per   + n * ""
    end
    end
    #print tem , "\n"
    print per , "\n"
    end
  end
end
permutation(input)
