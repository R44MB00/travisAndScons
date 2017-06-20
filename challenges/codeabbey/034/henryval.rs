use std::io;

macro_rules! parse_input {
    ($x:expr, $t:ident) => ($x.trim().parse::<$t>().unwrap())
}

fn binsrch (a: f64, b: f64, c: f64, d: f64, xx: u64) -> f64 {
    let x = xx as f64;
    let sqx = (x * x * x).sqrt();
    let ex = (- x / 50.0).exp();
    a * x + b * sqx - c * ex - d
}


/*
2
0.59912051 0.64030348 263.33721367 387.92069617
15.68387514 1.26222280 695.23706506 698.72384731
*/

fn main () {
    let mut input_line = String::new();
    let mut v: Vec<u64>;
    io::stdin().read_line(&mut input_line).unwrap();
    let n = parse_input!(input_line, u8);
    input_line = String::from("");
    for i in 0..n {
         v = (0..101).collect();
        io::stdin().read_line(&mut input_line).unwrap();
        let slin = input_line.trim().to_string();
        let ts: Vec<f64> = slin.trim()
            .split(" ")
            .map(|x| { x.parse::<f64>().expect("") })
            .collect();
        let vfil = v
            .into_iter()
            .filter(|&x| (binsrch(ts[0],ts[1],ts[2],ts[3],x).abs())<20.0)
            .collect::<Vec<u64>>(); //Filtro los valores cercanos a 0
        println!("{:?}", vfil);

        let minv = vfil.iter().cloned().min().unwrap() as f64;
        let maxv = vfil.iter().cloned().max().unwrap() as f64;
        println!("{:?}", minv);
        println!("{:?}", maxv);
        input_line = String::from("");
        }
}
