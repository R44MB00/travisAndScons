cantidad = io.read("*n")
fibonacci_sequence_index = {}
fibonacci_seq = {1, 1}
select = 1
new_fibonacci_member = 0

function fibonacci_table()
    new_fibonacci_member = fibonacci_seq[select] + fibonacci_seq[select + 1]
    table.insert(fibonacci_seq, new_fibonacci_member)
    select = select + 1
end

function answer()
    fibonnaci_start = 4
    divisor = io.read("*n")
    repeat
        operation = fibonacci_seq[fibonnaci_start] % divisor
        fibonnaci_start = fibonnaci_start + 1
    until(operation == 0)
    table.insert(fibonacci_sequence_index, fibonnaci_start - 1)
end

while select < 1000 do
    fibonacci_table()
end
for i = 1, cantidad do
    answer()
end
