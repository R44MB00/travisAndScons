fn divi (m: u64, n: u64) -> bool {
    m % n == 0
}

fn main () {
    let mut num: u64 = 10000000;
    let st = 21;
    let mut cond = false;
    while !cond {
        println!("{}", num);
        cond = true;
        for i in 11..st {
            cond = cond && divi(num, i);
        }
        num = num + 20;
    }
    println!("{}", num - 1);
}
//answer = 232792560
