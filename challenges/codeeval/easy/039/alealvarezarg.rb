
def find(number,array)
    count = 0
    findit = false
    while(count<array.length)
        if(array[count] == number)
            findit = true
            break
        end
        count = count + 1
    end
    return findit
end

def sumdig(number)
    str = "%d" % number
    count = 0
    sum = 0
    while(count<str.length)
        sum = sum + str[count].to_i*str[count].to_i
        count = count + 1
    end
    return sum
end

def happy(number)
    num = number
    numbers = []
    findit = false
    while(true)
        if(num == 1)
            findit = true
            break
        elsif(find(num,numbers) == true)
            findit = false
            break
        end
        numbers.push(num)
        num = sumdig(num)
    end
    return findit
end

File.open(ARGV[0]).each_line do |line|
    
    line  = line.to_i
    answer = happy(line)
    
    if(answer == true)
        puts 1
    else
        puts 0
    end
    
end
