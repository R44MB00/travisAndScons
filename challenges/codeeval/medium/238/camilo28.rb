=begin
Title: Code combinations
url: https://www.codeeval.com/open_challenges/238/
=end
def code_combination(rute)
=begin
    This function compute the number the words in submatrix that is equal to "code" in each direction
    hint: permutations
    file: testcase
    return: the number of find words
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        all = "code".split(//).permutation(4).to_a.map{|i| i.join()}
        out = []
        sub = []
        con = 0
        line = line.delete("\n").delete(" ").delete("*").split("|")
        while con < line.length-1
          out.push((line[con] + "|"  +line[con+1]).split("|"))
          con +=1
        end
        con = 0
        #iterate submatrix
        for sub_matrix in out
          for sub_strings in 0..sub_matrix.length-2
            if sub_matrix[sub_strings].length == 2
              if all.include? sub_matrix.join()
                con +=1
              end
            elsif sub_matrix[sub_strings].length > 2
              inc = 0
              #create substring 2x2
              while inc < sub_matrix[sub_strings].length
              out = "#{sub_matrix[sub_strings][inc...inc+2]}#{sub_matrix[sub_strings+1][inc...inc+2]}"
              inc +=1
              if all.include? out
                con +=1
              end
             end
            end
          end
        end
        puts "#{con}"
    end
  end
end

#----------------------------testcase--------------------------
puts "Please enter the rute to the file:"
rute = gets.chomp()
code_combination(rute)
#--------------------------endtescase-------------------------
