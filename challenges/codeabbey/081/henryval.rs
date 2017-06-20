use std::io;

macro_rules! parse_input {
    ($x:expr, $t:ident) => ($x.trim().parse::<$t>().unwrap())
}

fn bitcount (n: &i32) -> String {
    let mut sn = "".to_string();
    let mut os: &str = &(n.count_ones().to_string());
    sn.push_str(os);
    sn.push_str(" ");
    return sn;
}

fn main () {
    let mut res = String::new();
    let mut input_line = String::new();
    io::stdin().read_line(&mut input_line).unwrap();
    let n = parse_input!(input_line, u8);
    input_line = String::from("");
    io::stdin().read_line(&mut input_line).unwrap();
    let slin = input_line.trim().to_string();
    let ts: Vec<i32> = slin.trim()
    .split(" ").map(|x| {
        x.parse::<i32>().expect("")
    }).collect();
    for i in &ts {
        res.push_str(&bitcount(i));
    }
    println!("{}", res);
}
