=begin
Title: Column Names
url: https://www.codeeval.com/open_challenges/197/
=end
def column_names(rute)
=begin
    This function change a intenger to  the excel nomenclatura "A".."AAA"
    equation: num % 26
    file: testcase
    return: the string
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        character = []
        for id_x in 65..90
          character.push(id_x.chr)
        end
        #puts "#{character[25]}"
        out = ""
        num = line.delete("\n").to_i
        while num > 0
          div = (num - 1) % 26
          num = (num - div) / 26
          out = character[div] + out
        end
        puts "#{out}"
      end
    end
  end

#----------------------------testcase--------------------------
puts "Please enter the rute to the file:"
rute = gets.chomp()
column_names(rute)
#--------------------------endtescase-------------------------
