use std::io;

fn collatz(x: u32, y: u32) -> u32{
    let mut fx = 0;
    let mut f = y;
    while f != 1 {
        if f % 2 == 0{ f = f / 2;
        }else{ f = (3 * f) + 1; }
        fx = fx + 1;
    }
    return fx;
}

fn main() {
    let mut numcases = String::new();
    let mut nums = String::new();
    io::stdin().read_line(&mut numcases);
    io::stdin().read_line(&mut nums);
    let n: u32 = numcases.trim().parse().unwrap();
    let ts: Vec<u32> = nums.trim()
    .split(" ").map(|x| {
        x.parse::<u32>().expect("")
    }).collect();
    for (ind, val) in (0..n).enumerate(){
        print!("{} ", collatz(n, ts[ind]));
    }
}
