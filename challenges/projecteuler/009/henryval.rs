fn aretriplets(a: u64, b: u64, c: u64) -> bool{
    c * c == a * a + b * b
}

fn sum1000(a: u64, b: u64, c: u64) -> bool{
    a + b + c == 1000
}

fn main() {
    let maxi = 1000;
    for i in 1..maxi{
        for j in 1..maxi{
            for k in 1..maxi{
                if (aretriplets(i, j, k) && sum1000(i, j, k)) == true {
                    println!("{}, {}, {}",i,j,k);
                    println!("{}", i*j*k);
                    break
                }
            }
        }
    }
}
