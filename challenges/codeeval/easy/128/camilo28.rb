"""
Url: https://www.codeeval.com/open_challenges/128/
"""
def non_repeated(rute)
  """
  file: The first argument is a path to a file. The file contains strings.
  """
  if File.exist? rute
    File.foreach(rute) do |line|
      line = line.delete("\n").split(" ")
      con = 0
      out = ""
      dic = {}
      for n in line
      dic[n] =0
      end
      for n in line
        dic[n] += 1
      end
      for n in line.uniq
        out += " " + dic[n].to_s + " " + n
      end

      puts "#{out[1..-1]}"

    end
  end
end


#------------------------Test--------------------------
puts "Please enter the url to the file"
path = gets.chomp
non_repeated(path)
#-------------------------end_test---------------------
