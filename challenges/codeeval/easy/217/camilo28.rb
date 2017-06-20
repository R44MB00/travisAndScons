=begin
Title: One Zero, Two Zeros
url= https://www.codeeval.com/open_challenges/217/
=end
def count_zeros(rute)
=begin
  this function return the numbers the zeros in a binary
  rute: rute to the testcase
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        line = line.delete("\n").split(" ")
        num_zeros = line[0].to_i
        range_n = line[1].to_i
        aux = []
        for num in 1..range_n
          bin = "%b" % num
          con = 0
          bin.each_char do |char|
            if char == "0"
              con += 1
            end
          end
          if con == num_zeros
            aux.push(bin)
          end
        end
        puts "#{aux.length}"
      end
    end
end

#------------------------testCase---------------------------
puts "Please enter the rute to the file"
path = gets.chomp
count_zeros(path)
