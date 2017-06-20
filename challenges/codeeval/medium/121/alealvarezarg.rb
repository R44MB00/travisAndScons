
substitution = {"a" => "y", "b" => "h", "c" => "e", "d" => "s", "e" => "o", "f" => "c", "g" => "v", "h" => "x", "i" => "d", "j" => "u", "k" => "i", "l" => "g", "m" => "l", "n" => "b", "o" => "k", "p" => "r", "q" => "z", "r" => "t", "s" => "n", "t" => "w", "u" => "j", "v" => "p", "w" => "f", "x" => "m", "y" => "a", "z" => "q"}

File.open(ARGV[0]).each_line do |line|
    
    line = line.strip!
    
    count = 0
    cadena = ""
    while(count<line.length)
        if(line[count] != " ")
            cadena = cadena + substitution[line[count]]
        else
            cadena = cadena + " "
        end
        count = count + 1
    end

    puts cadena
    
end
