
File.open(ARGV[0]).each_line do |line|
    
    line = line.split(" ")

    simbol = ""

    count = 0
    while(count < line[1].length)
    
        if(line[1][count] == "-" || line[1][count] == "+")
            simbol = line[1][count]
            break
        end
        count = count + 1
    end

    number1 = line[0][0...count]
    number2 = line[0][count..line[0].length]

    cal = ""

    if(simbol == "+")
        cal = number1.to_i + number2.to_i
    elsif(simbol == "-")
        cal = number1.to_i - number2.to_i
    end

    puts cal
    
end
