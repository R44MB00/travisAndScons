amount = io.read("*n")
for i = 1, amount do
    fibonacci = {0, 1, 1}
    number = io.read("*n")
    fibonacci_index = 2
    add = 0
    while add < number do
        add = fibonacci[fibonacci_index] + fibonacci[fibonacci_index + 1]
        table.insert(fibonacci, add)
        fibonacci_index = fibonacci_index + 1
    end
    if number == 0 then
        fibonacci_index = 0
    end
    print(fibonacci_index)
end
