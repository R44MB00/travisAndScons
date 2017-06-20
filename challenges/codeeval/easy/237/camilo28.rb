=begin
Title: Panacea - True or lie
url= https://www.codeeval.com/open_challenges/237/
=end
def antivirus(rute)
=begin
  this function compute whether the antivirus is effective for number the virus
  rute: rute to the testcase
  return: True when is effective and False when not
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        line = line.delete("\n").split("|")
        hex = line[0].split(" ")
        bin = line[1].split(" ")
        result_hex = 0
        result_bin = 0
        for value in hex
          result_hex += value.to_i(16).to_s(10).to_i
        end for value in bin
          result_bin += value.to_i(2).to_s(10).to_i
        end
        if result_bin >= result_hex
          puts "True"
        else
          puts "False"
        end
        #puts "#{result_hex}, #{result_bin}"
      end
    end
  end

  #------------------------testCase---------------------------
  puts "Please enter the rute to the file"
  path = gets.chomp
  antivirus(path)
  #----------------------end-testcase----------------------------
