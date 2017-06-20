"""
Title: sum to zero
CodeEval: Moderate
Url: https://www.codeeval.com/open_challenges/81/
"""
def sum_zero(rute)
  if File.exist? rute
    File.foreach(rute) do |line|

        con = 0
        msg = line.delete("\n")
        msg = msg.split(',')
        ways = msg.combination(4).to_a
        for val in ways
          sum = 0
          for num in val
            sum += num.to_i
          end
          if sum == 0
            con += 1
        end
      end
        puts "#{con}"
        #puts "#{ways}".chomp
    end
  end
end

puts "Please enter the route to the file".chomp
file = gets.chomp
sum_zero(file)
