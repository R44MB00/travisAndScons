amount = io.read("*n")
for i = 1, amount do
    x1, y1 = io.read("*n", "*n")
    x2, y2 = io.read("*n", "*n")
    slope = math.floor((y2 - y1) / (x2 - x1))
    interception = math.floor(y1 - slope * x1)
    io.write("(", slope, " ", interception, ") ")
end
