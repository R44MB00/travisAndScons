=begin
title: Chardonnay or Cabernet
url: https://www.codeeval.com/open_challenges/211/submit/
=end
def chardony(rute)
=begin
  this function return the words that contains substrings
  rute: rute to the testcase
=end
  if File.exist? rute
      File.foreach(rute) do |line|
        line = line.delete("\n").split("|")
        search = line[1].delete(" ").split(//)
        words = line[0].split(" ")
        #puts "#{search}, #{words}"
        aux = []
        for word in words
          out = ""
          word.each_char do |char|
            if search.include? char
              out += char
              if out == search.join()
                aux.push(word)
              end
          end
          end
        end
        if aux.length == 0
          puts "False"
        else puts "#{aux.join(" ")}"
        end
      end
    end
  end

#--------------------------------------testCase-------------------------------------------
puts "Please enter the rute to the file: "
path = gets.chomp()
chardony(path)
#---------------------------------------testcase----------------------------------------
