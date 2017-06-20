amount = io.read("*n")
answer = {}
for i = 1, amount do
    a = io.read("*n")
    b = io.read("*n")
    table.insert(answer, a + b)
end
io.write(table.concat(answer," "))
