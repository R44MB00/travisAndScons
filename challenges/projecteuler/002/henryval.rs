fn main() {
    let mut fib = Vec::new();
    let nmax = 4000000;
    fib.push(1);
    fib.push(2);
    let mut fc = fib.iter().count();
    let mut fibend = fib[fc-1];
    let mut sum_fib = 0;
    while fib[fc-1] < nmax {
        fc = fib.iter().count();
        sum_fib = (fib.iter().filter(|&x| x%2 ==0)).fold(0,(|sum,value| sum+value));
        fibend = fib[fc-1] + fib[fc-2];
        if fibend > nmax {
            break
        } else {
            fib.push(fibend);
        }
    }
    sum_fib = (fib.iter().filter(|&x| x%2 ==0)).fold(0,(|sum,value| sum+value));
    println!("Final sum: {}", sum_fib);
}
