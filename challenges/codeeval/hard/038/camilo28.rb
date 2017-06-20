=begin
Title: String List
url: https://www.codeeval.com/open_challenges/38/
=end
def strings_list(rute)
=begin
this fuction compute each different combination of substrings
hint: permutation
rute: rute to the testcase file
return: the list with each way 
=end
  if File.exist? rute
    File.foreach(rute) do |line|
      line = line.delete("\n").split(",")
      out = {}
      combi = line[1].split(//).repeated_permutation(line[0].to_i).to_a
      for subst in combi
        out[subst.join("")] = 0
      end
      puts "#{out.keys.sort.join(",")}"
    end
  end
end

#-------------------------testcase----------------------------
puts "Please enter the rute to the file"
input = gets.chomp
strings_list(input)
#------------------------endtescase---------------------------
