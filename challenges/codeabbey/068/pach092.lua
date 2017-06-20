amount = io.read("*n")
distance_bike1 = {}
for i = 1, amount do
    distance, bike1, bike2 = io.read("*n", "*n", "*n")
    table.insert(distance_bike1, (bike1 * (distance / (bike1 + bike2))))
end
io.write(table.concat(distance_bike1, " "))
