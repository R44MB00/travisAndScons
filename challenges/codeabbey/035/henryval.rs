use std::io;

macro_rules! parse_input {
    ($x:expr, $t:ident) => ($x.trim().parse::<$t>().unwrap())
}

fn rn2 (x: f64) -> f64 {
    ((x * 100.0).floor())/100.0
}

fn bank (s: u64, r: u64, p: u64) -> u64 {
    let mut num: f64 = s as f64;
    let maxi: f64 = r as f64;
    let pp = p as f64;
    let p = ((100.0 + pp)/100.0) as f64;
    let mut year: u64 = 0;
    while num < maxi {
        year = year + 1;
        num = rn2(num);
        num = num * p;
    }
    return year
}

fn main () {
    let mut res = Vec::new();
    let mut input_line = String::new();
    io::stdin()
        .read_line(&mut input_line)
        .unwrap();
    let n = parse_input!(input_line, u8);
    input_line = String::from("");
    for i in 0..n {
        io::stdin()
            .read_line(&mut input_line)
            .unwrap();
        let slin = input_line.trim().to_string();
        let ts: Vec<u64> = slin
            .trim()
            .split(" ")
            .map(|x| { x.parse::<u64>().expect("")})
            .collect();
        res.push(bank(ts[0], ts[1], ts[2]));
        input_line = String::from("");
    }
    for x in &res {
        print!("{:?} ", x);
    }
}
