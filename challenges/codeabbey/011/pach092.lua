amount = io.read("*n")
answer = {}
for i = 1, amount do
    a, b, c = io.read("*n", "*n", "*n")
    operation = a * b + c
    add = 0
    while operation > 0 do
       add = add + operation % 10
       operation = math.floor(operation / 10)
    end
    table.insert(answer, add)
end
io.write(table.concat(answer, " "))
