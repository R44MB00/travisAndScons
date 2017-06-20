use std::io;

macro_rules! parse_input {
    ($x:expr, $t:ident) => ($x.trim().parse::<$t>().unwrap())
}

fn gcd (a: u64, b: u64) -> u64 {
    let mut aa = a;
    let mut bb = b;
    let mut c;
    let mut r = aa % bb;
    while r != 0 {
        aa = bb;
        bb = r;
        c = aa / bb;
        r = aa % bb;
    }
    return bb;
}

fn main () {
    let mut gc: u64;
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
        gc = gcd(ts[0], ts[1]);
        print!("({} {}) ", gc, ((ts[0]*ts[1])/gc));
        input_line = String::from("");
    }
}
