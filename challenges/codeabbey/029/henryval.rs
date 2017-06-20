use std::io;

macro_rules! parse_input {
    ($x:expr, $t:ident) => ($x.trim().parse::<$t>().unwrap())
}

fn main () {
    let mut input_line = String::new();
    io::stdin()
        .read_line(&mut input_line)
        .unwrap();
    let n = parse_input!(input_line, u16);
    input_line = String::from("");
    io::stdin()
        .read_line(&mut input_line)
        .unwrap();
    let slin = input_line.trim().to_string();
    let ts: Vec<u16> = slin
        .trim()
        .split(" ")
        .map(|x| { x.parse::<u16>().expect("")})
        .collect();
    {
        let mut zvec: Vec<_> = ts.iter()
            .cloned()
            .zip(1..n+1)
            .collect();
        zvec.sort();
        for x in 0..n {
            let num: usize = x as usize;
            print!("{:?} ", zvec[num].1);
        }
    }
}
