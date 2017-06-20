amount = io.read("*n")
answer = {}
for i = 1, amount do
    a = io.read("*n")
    b = io.read("*n")
    c = io.read("*n")
    if a < b and a < c then
        table.insert(answer, a)
    elseif b < a and b < c then
        table.insert(answer, b)
    else
        table.insert(answer, c)
    end
end
io.write(table.concat(answer," "))
