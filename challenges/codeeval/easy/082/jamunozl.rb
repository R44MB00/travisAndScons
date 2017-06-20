begin
 
File.open("test.txt").each_line do |line|
	line.delete!("\n") #quitar el \n de la lista
	number1Length=line.length # ojo arreglar el ultimo elemento al final
	#puts line.inspect      # imprime el array completo
	result=0  # inicializar variable
	line.split("").each do |i| #split por caracteres
		result= result+(i.to_i**number1Length)
	end
	if result == line.to_i
		puts "true"
	else
		puts "false"
	end
end
end
