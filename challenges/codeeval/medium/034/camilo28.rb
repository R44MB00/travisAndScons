"""
Title: Number Pairs
CodeEval: Moderate
url: https://www.codeeval.com/open_challenges/34/
"""

def number_pairs(rute)
  if File.exist? rute
    File.foreach(rute) do |line|
      nums = line.split(';')
      out = ""
      dec = nums[1].to_i
      pair =  nums[0].delete('\n').split(',')
      per = pair.combination(2).to_a
      for n in per
        sumed = 0
        for val in n
          r = ""
          sumed += val.to_i
        end
        if sumed == dec
          r = n * ","
          if out == ""
            out =  r
          else
            out = out + ";" + r
          end
        end
      end
      if out == ""
        out = "NULL"
      end
      puts "#{out}".chomp
    end
  end
end

puts "Enter the route to the file"
input = gets.chomp()
number_pairs(input)
