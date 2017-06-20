=begin
static int[,] RotateMatrix(int[,] matrix, int n) {
    int[,] ret = new int[n, n];

    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            ret[i, j] = matrix[n - j - 1, i];
        }
    }

    return ret;
}
=end

line = "k t p i l w d o r i c b l x m k i p t m t k d s b"
vect = line.split(" ").join("").split("");
size = Math.sqrt(vect.length)
arr = []
arr2 = []
c = 0
for i in 0..size-1
	arr[i] = []
	arr2[i] = []
	for j in 0..size-1
		arr[i][j] = vect[c]
		arr2[i][j] = vect[c]
		c+=1
	end
end 
for i in 0..size-1
	for j in 0..size-1
		arr2[i][j] = arr[size-j-1][i]
	end
end 
str = ""
for i in 0..size-1
	for j in 0..size-1
		str += arr2[i][j].to_s + " "
	end
end 
puts str.strip()


