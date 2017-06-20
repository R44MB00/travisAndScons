=begin
Title: Magic Number
url: https://www.codeeval.com/open_challenges/193
=end
def magic_number(rute)
=begin
  This function computhe the range of  magic number
  algorit : use circular list
  file: rute to the testcase
  return: a list with the magic numbers
=end
  if File.exist? rute
    File.foreach(rute) do |line|
      out = ""
      line = line.delete("\n").split(" ")
      # min range
      min = line[0].to_i
      #max range
      max = line[1].to_i
      for id_x in min..max
        if ismagic(id_x.to_s)
          out += id_x.to_s + " "
        end
      end
      if out == ""
        puts "-1"
    else puts out[0..-2]
      end

  end
    end
end
=begin
This is a function auxiliar that compute wheter the num is magic or not
return: true whether number is magic and not when not
input: a integer number
=end
def ismagic(num)
  nums = []
  out = false
  index = num[0]
  con = 0
  out = []
  #wheter index return to the any position no is magic and break
  while not nums.include? index
    con = (index.to_i + con) % num.length
    nums.push(index)
    index = num[con]
    if not out.include? index
      out.push(index)
    end
    #puts "#{out}"
    #puts "#{nums}"
  end
  #whether the len is equal is magic number
  if out.join().length == num.length
    out = true
  else
    out = false
  end
   return out
end

#----------------------------testcase--------------------------
puts "Please enter the rute to the file:"
rute = gets.chomp()
magic_number(rute)
=begin
suit test
puts ismagic("38")
puts ismagic("37")
puts ismagic("1")
=end
#--------------------------endtescase-------------------------
