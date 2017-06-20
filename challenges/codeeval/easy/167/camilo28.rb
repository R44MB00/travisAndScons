=begin
Title: Read more
url= https://www.codeeval.com/open_challenges/167/
=end
def read_more(rute)
=begin
  this function ajust the text
  rute: rute to the testcase
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        line = line.delete("\n").split(" ")
        con = ""
        out = ""
        if line.join(" ").length <= 55
          puts "#{line.join(" ")}"
        else
            for n in line
              con = out + n + " "
              if con.length <= 40
                out += n + " "
              else
                if out[-1]. == " "
                puts "#{out[0..-2]}... <Read More>"
              else
                puts "#{out}... <Read More>"
                end
                break

              end
            end
        end

      end
    end
end

#------------------------testCase---------------------------
puts "Please enter the rute to the file"
path = gets.chomp
read_more(path)
