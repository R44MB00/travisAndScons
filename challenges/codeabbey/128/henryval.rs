use std::io;

macro_rules! parse_input {
    ($x:expr, $t:ident) => ($x.trim().parse::<$t>().unwrap())
}

fn comb (n: u64, k: u64) -> u64 {
    let mut x: f64 = n as f64;
    let mut ind: f64 = n as f64;
    let mut nk: f64 = n as f64 - k as f64 + 1.0;
    while ind > k as f64 + 1.0 {
        ind = ind - 1.0;
        nk = nk - 1.0;
        x = (x * ind) / nk;
    }
    x = x.round();
    return x as u64
}

fn main () {
    let mut vec: Vec<u64> = Vec::new();
    let mut input_line = String::new();
    io::stdin().read_line(&mut input_line).unwrap();
    let n = parse_input!(input_line, u8);
    input_line = String::from("");
    for i in 0..n {
        io::stdin().read_line(&mut input_line).unwrap();
        let slin = input_line.trim().to_string();
        let ts: Vec<u64> = slin.trim()
        .split(" ").map(|x| {
            x.parse::<u64>().expect("")
        }).collect();
        vec.push(comb(ts[0], ts[1]));
        input_line = String::from("");
    }
    for i in &vec {
        print!("{:?} ", i);
    }
}
