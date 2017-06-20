amount = io.read("*n")
answer = {}
for i = 1, amount do
    a = io.read("*n")
    b = io.read("*n")
    n = io.read("*n")
    total = 0
    suma = 0
    for x = 1, n do
        total = total + a
        a = a + b
    end
    table.insert(answer, total)
end
io.write(table.concat(answer, " "))
