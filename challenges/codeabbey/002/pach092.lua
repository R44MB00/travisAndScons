amount = io.read("*n")
suma = 0
for i = 1, amount do
    suma = suma + io.read("*n")
end
io.write(suma)
