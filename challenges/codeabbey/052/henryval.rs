use std::io;
use std::f64;

fn grad (a: i64, b: i64, c: i64) -> bool {
    let ag = a as f64;
    let bg = b as f64;
    let cg = c as f64;
    let A: f64 = ((cg*cg + bg*bg - ag*ag)/(2.0*cg*bg)).acos().to_degrees();
    let B: f64 = ((ag*ag + cg*cg - bg*bg)/(2.0*ag*cg)).acos().to_degrees();;
    let C: f64 = ((ag*ag + bg*bg - cg*cg)/(2.0*ag*bg)).acos().to_degrees();;
    (A > 90.0 || B > 90.0 || C > 90.0)
}

fn obt_agu (a: i64, b: i64, c: i64) -> char {
    if grad(a, b, c) == true {
        return 'O'
    } else {
        return 'A'
    }
}

fn pytha (a: i64, b: i64, c: i64) -> char {
    if c * c == a * a + b * b {
        return 'R'
    } else {
        return obt_agu(a, b, c)
    }
}

macro_rules! print_err {
    ($($arg:tt)*) => (
        {
            use std::io::Write;
            writeln!(&mut ::std::io::stderr(), $($arg)*).ok();
        }
    )
}

macro_rules! parse_input {
    ($x:expr, $t:ident) => ($x.trim().parse::<$t>().unwrap())
}

fn main () {
    let mut res = "".to_string();
    let mut input_line = String::new();
    let mut res = String::from("");
    io::stdin().read_line(&mut input_line).unwrap();
    let n = parse_input!(input_line, u8);
    input_line = String::from(""); //Empty string so it doesn't concante all
    for i in 0..n {
        io::stdin().read_line(&mut input_line).unwrap();
        let slin = input_line.trim().to_string();
        let ts: Vec<i64> = slin.trim()
        .split(" ").map(|x| {
            x.parse::<i64>().expect("")
        }).collect();
        println!("{:?}", ts);
        input_line = String::from("");
        res.push(pytha(ts[0], ts[1], ts[2]));
    }
    for i in res.chars() {
        print!("{} ", i);
    }
}
