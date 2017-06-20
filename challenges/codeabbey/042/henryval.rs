use std::io;

macro_rules! parse_input {
    ($x:expr, $t:ident) => ($x.trim().parse::<$t>().unwrap())
}

fn blja (s: Vec<String>) -> u32 {
    let mut flaga = 0;
    let mut p: u32 = 0;
    for i in s {
        p = match i.as_ref() {
            "T" => p + 10,
            "J" => p + 10,
            "Q" => p + 10,
            "K" => p + 10,
            "A" => p + 1,
            _ => p + i.parse::<u32>().unwrap()
        };
        if i == "A" { flaga = 1; }
    }
    if flaga > 0 && p + 10 <= 21 { p = p + 10; }
    return p;
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
        io::stdin().read_line(&mut input_line).unwrap();
        let slin = input_line.trim().to_string();
        let ts: Vec<String> = slin
            .trim()
            .split(" ").map(|x| { x.parse::<String>().expect("")})
            .collect();
        res.push(blja(ts));
        input_line = String::from("");
    }
    for i in res {
        if i > 21 {
            print!("Bust ");
        } else {
            print!("{} ", i);
        }
    }
}
