#Funcion para hallar la suma usadno el max
def maxSubArray(numberArray)
  max = numberArray[0]
  maxFar = max
  
  numberArray.drop(1).each do |i|
    max = [i, i + max].max
    maxFar = [maxFar, max].max
  end
  maxFar
end

#Abro el archivo pasado como argumento
File.open(ARGV[0]).each_line do |numArray|
  arrayNumberToSum = numArray.split(',').map(&:to_i)
  	#Imprimo en pantalla
   puts maxSubArray(arrayNumberToSum)
end
