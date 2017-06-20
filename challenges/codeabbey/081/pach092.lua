for counter = io.read("*n"), 1, -1 do
    values = io.read('*n')
    if values < 0 then
        values = math.pow(2, 32) + values
    end
    counts_bits = 0
    while values > 0 do
        if (values % 2 == 1) then
            counts_bits = counts_bits +1
        end
        values = math.floor(values / 2)
    end
    io.write(counts_bits, ' ')
end
