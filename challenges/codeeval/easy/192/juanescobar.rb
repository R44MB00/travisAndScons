def get_quadrant(x, y)
    x = Integer(x)
    y = Integer(y)
    
    if x < 0 and y > 0
        return 1
    elsif x > 0 and y > 0
        return 2
    elsif x < 0 and y < 0
        return 3
    elsif x > 0 and y < 0
        return 4
    else
        return 0
    end    
end

def getx_direction(x1, x2)
    x1 = Integer(x1)
    x2 = Integer(x2)
    
    if x1 < x2
        return "E"
    elsif x1 > x2
        return "W"
    else
        return ""
    end
end

def gety_direction(y1, y2)
    y1 = Integer(y1)
    y2 = Integer(y2)
    
    if y1 < y2
        return "N"
    elsif y1 > y2
        return "S"
    else
        return ""
    end
end

def get_direction(x1, y1, x2, y2)
    dir = gety_direction(y1, y2) + getx_direction(x1, x2)
    if dir  == ""
        return "here"
    end
    
    return dir
end

File.open(ARGV[0]).each_line do |line|
    cords = line.split(' ')

    o = cords[0]
    p = cords[1]
    q = cords[2]
    r = cords[3]

    puts get_direction(o, p, q, r)
end
