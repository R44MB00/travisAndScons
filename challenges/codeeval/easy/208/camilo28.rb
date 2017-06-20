=begin
Title: high score
url= https://www.codeeval.com/open_challenges/208/
=end
def high_score(rute)
=begin
  this function return the maxime score in a game for times
  rute: rute to the testcase
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        line = line.delete("\n").split("|")
        res = []
        out = ""
        for result in line
          res.push(result.split(" ").map(&:to_i))
        end
        for high in res.transpose
          out += high.max.to_s + " "
        end
        puts "#{out[0...out.length-1]}"
      end
    end
  end

  #--------------------testcase----------------
  puts "Please enter the rute to the file: "
  path = gets.chomp
  high_score(path)
  #------------------endtestcase---------------
