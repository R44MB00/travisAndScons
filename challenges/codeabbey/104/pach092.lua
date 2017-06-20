number_triangles = io.read("*n")
area_triangles = {}
for i = 1, number_triangles do
    x1 = io.read("*n")
    y1 = io.read("*n")
    x2 = io.read("*n")
    y2 = io.read("*n")
    x3 = io.read("*n")
    y3 = io.read("*n")
    side1 = math.sqrt(((x1 - x2) * (x1 - x2)) + ((y1 - y2) * (y1 - y2)))
    side2 = math.sqrt(((x2 - x3) * (x2 - x3)) + ((y2 - y3) * (y2 - y3)))
    side3 = math.sqrt(((x3 - x1) * (x3 - x1)) + ((y3 - y1) * (y3 - y1)))
    semiperimeter = (side1 + side2 + side3) / 2
    heron_formula = math.sqrt(semiperimeter * (semiperimeter - side1)
        * (semiperimeter - side2) * (semiperimeter - side3))
    table.insert(area_triangles, heron_formula)
end
io.write(table.concat(area_triangles, ' '))
