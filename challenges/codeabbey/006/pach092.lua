amount = io.read("*n")
answer = {}
for i = 1, amount do
    a = io.read("*n")
    b = io.read("*n")
    round = math.floor(a / b + 0.5)
    table.insert(answer, round)
end
io.write(table.concat(answer, " "))
