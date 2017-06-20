amount = io.read("*n")
answer = {}
for i = 1, amount do
    a = io.read("*n")
    b = io.read("*n")
    c = io.read("*n")
    if a + b > c and a + c > b and b + c > a then
        table.insert(answer, "1")
    elseif a + b == c then
        table.insert(answer, "1")
    else
        table.insert(answer, "0")
    end
end
io.write(table.concat(answer, " "))
