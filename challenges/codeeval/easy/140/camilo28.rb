=begin
Title: Data recovery
url: https://www.codeeval.com/open_challenges/140
=end
def dat_recovery(rute)
=begin
  file: testcase
=end
  if File.exist? rute
    File.foreach(rute) do |line|
      out = ""
      con = 0
      line = line.delete("\n").split(";")
      text = line[0].split(" ")
      pos  = line[1].split(" ")
      aux = {}
      for id_x in pos
        aux[id_x] = text[con]
        con += 1
      end

      for id_x in 1..pos.length + 1
        if aux.include? id_x.to_s
          out += aux[id_x.to_s] + " "
        else
          out += text[-1] + " "
        end
      end
      puts "#{out[0..-1]}"
    end
  end
end

#puts "Please enter the route to the file".chomp
#rute = gets.chomp()
rute = "/home/camilo/test_26"
dat_recovery(rute)
