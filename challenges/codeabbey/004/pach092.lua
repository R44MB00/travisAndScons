amount = io.read("*n")
answer = {}
for i = 1, amount do
    a = io.read("*n")
    b = io.read("*n")
    if a < b then
        table.insert(answer, a)
    else
        table.insert(answer, b)
    end
end
io.write(table.concat(answer," "))
