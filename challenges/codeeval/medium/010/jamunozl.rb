begin
File.open(ARGV[0]).each_line do |line|
  array= line.split(' ')  # separo el string y lo convierto en array
  #puts array.inspect
  finalArray= array[0..-2] #  recorto un array desde 0 hasta el penultimo valor
  #puts finalArray.inspect
  lastValue=array[-1].to_i # tomo la referencia del numero
  #puts lastValue
  #puts finalArray.size
  puts finalArray[-lastValue] if lastValue<=finalArray.size # revesa el orden para tomar el elemento del array 
end
end
