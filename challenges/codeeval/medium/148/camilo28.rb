=begin
Title: junggling zero
url: https://www.codeeval.com/open_challenges/149
=end
def junggling(rute)
=begin
  file: testcase
=end
  if File.exist? rute
    File.foreach(rute) do |line|
      line = line.delete("\n").split(" ")
      out = ""
      seq = 0
      while seq <= line.length
        if line[seq] == "0"
          out +=  line[seq + 1].to_s
        else
          out += "1" * line[seq + 1].to_s.length
        end
        seq += 2
      end
    puts "#{out.to_i(2).to_s(10)}"
    end
  end
end

#------------------------testCase---------------------------
  puts "Please enter the rute to the file"
  path = gets.chomp
  junggling(path)
#----------------------end-testcase----------------------------
