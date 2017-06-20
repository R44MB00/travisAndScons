use std::io;

macro_rules! parse_input {
    ($x:expr, $t:ident) => ($x.trim().parse::<$t>().unwrap())
}

fn lcg (vec: &Vec<u32>) -> u32 {
    let a = vec[0];
    let c = vec[1];
    let m = vec[2];
    let mut x0 = vec[3];
    let n = vec[4];
    let mut ind = 0;

    while ind < n {
        x0 = ((a * x0) + c) % m;
        ind += 1;
    }
    return x0;
}

fn main () {
    let mut res = "".to_string();
    let mut input_line = String::new();
    io::stdin().read_line(&mut input_line).unwrap();
    let n = parse_input!(input_line, u8);
    input_line = String::from("");
    for i in 0..n {
        io::stdin().read_line(&mut input_line).unwrap();
        let slin = input_line.trim().to_string();
        let ts: Vec<u32> = slin.trim()
        .split(" ").map(|x| {
            x.parse::<u32>().expect("")
        }).collect();
        input_line = String::from("");
        res.push_str(&((lcg(&ts)).to_string()));
        res.push_str(" ");
    }
    println!("{:?}", res);
}
