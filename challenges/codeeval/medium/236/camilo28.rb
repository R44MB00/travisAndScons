=begin
Title: Grey Code
url: https://www.codeeval.com/open_challenges/236
=end
def grey_to_bin(rute)
=begin
  This function covert a number in gray code to decimal
  file: testcase
  return: the decimal number
=end
  if File.exist? rute
    File.foreach(rute) do |line|
      line = line.delete("\n").delete(" ").split("|")
      #output
      out = ""
      for bites in line
        #list with the binary digits for  xor operation
        bin = []
        bin.push(bites[0].to_i(2))
        bites[1..bites.length].each_char do |bit|
          #XOR operation
          bin.push(bin[-1] ^ bit.to_i(2))
        end
        out +=  "#{bin.join().to_i(2).to_s(10)}" + " | "
      end
      puts "#{out[0..out.length-4]}"
    end
  end
end


#----------------------------testcase--------------------------
puts "Please enter the rute to the file:"
rute = gets.chomp()
grey_to_bin(rute)
#--------------------------endtescase-------------------------
