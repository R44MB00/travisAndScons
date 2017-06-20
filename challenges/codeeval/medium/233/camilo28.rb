=begin
Title: Meet Comb sort
url= https://www.codeeval.com/open_challenges/233/
=end
def comb_sort(rute)
=begin
  this function return the num iterations in a comb sort algorithm
  rute: rute to the testcase
  return: nums iterations
=end
    if File.exist? rute
      File.foreach(rute) do |line|
        nums = line.delete("\n").split(" ").map(&:to_i)
        puts "#{sort(nums)[0]}"

      end
    end
  end

def sort(list)
=begin
implementation comb sort of Wlodzimierz Dobosiewicz
=end
  index = list.length
  con = 0
  while index > 1
    # divide list in sub_arrays
    # 1.25 is property of algorithm
    index = [1,(index / 1.25).to_i].max
    for id_x in (0...(list.length-index)).to_a
      id_y = id_x + index
      #compare values of subarrays
      if list[id_x] > list[id_y]
        list[id_x], list[id_y] = list[id_y], list[id_x]
      end
    end
    con += 1
  end
  return con, list
end


#-------------------------testcase----------------------------
puts "Please enter the rute to the file"
input = gets.chomp
comb_sort(input)
#-----------------------unit_case-----------------------------
#list = [2,4,1,7,3,6,5]
#puts "#{sort(list)}"
#---------------------end_unit_case---------------------------
#------------------------endtescase---------------------------
