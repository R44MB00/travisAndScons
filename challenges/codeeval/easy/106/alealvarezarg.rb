def findnum(numero,key)
    pos = 0
    count = 0
    
    while(count < key.length)
        if(key[count] <= numero)
            pos = count
            break
        end
        count = count + 1
    end
    return pos
end

File.open(ARGV[0]).each_line do |line|
    
    line = Integer(line)

    key = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
    value = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]

    string = ""

    while(line != 0)
    
        res = findnum(line,key)
        string = string + value[res]
    
        line = line - key[res]
    end

    puts string
    
end
