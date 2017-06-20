amount = io.read("*n")
answer = {}
a = 0
while a < amount do
    fahrenheit = io.read("*n")
    celsius = math.floor(((fahrenheit - 32) * (5 / 9)) + 0.5)
    table.insert(answer, celsius)
    a = a + 1
end
io.write(table.concat(answer, " "))
