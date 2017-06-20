=begin
Title: String mask
url= https://www.codeeval.com/open_challenges/199/
=end
def mask(rute)
=begin
  this function change the letters of upper o lower the text according to the mask
  rute: rute to the testcase
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        line = line.split(" ")
        out = " "
        for id_x in 0..line[0].length
          if line[1][id_x] == '1'
            line[0][id_x] = line[0][id_x].upcase
          end
        end
        puts "#{line[0]}"
      end
    end
end

#--------------------------------testCase------------------------------------------------
puts "Please enter the rute to the file"
path = gets.chomp
mask(path)
#-------------------------------endTescase----------------------------------------------
