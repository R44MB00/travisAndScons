use std::io;

macro_rules! parse_input {
    ($x:expr, $t:ident) => ($x.trim().parse::<$t>().unwrap())
}

fn timex (vec: Vec<i32>) -> String {
    let mut segu;
    let mut minut;
    let mut hors;
    let mut days;
    let mut carry = 0;
    let mut stn = "(".to_owned();

    // Segundos
    if vec[7] - vec[3] < 0 {
        segu = 60 + vec[7] - vec[3];
        carry = 1;
    } else {
        segu = vec[7] - vec[3];
        carry = 0;}

    // Minutos
    if vec[6] - vec[2] - carry < 0 {
        minut = 60 + vec[6] - vec[2] - carry;
        carry = 1;
    } else {
        minut = vec[6] - vec[2] - carry;
        carry = 0; }

    //Horas
    if vec[5] - vec[1] - carry < 0 {
        hors = 24 + vec[5] - vec[1] - carry;
        carry = 1;
    } else {
        hors = vec[5] - vec[1] - carry;
        carry = 0; }

    //Dias
    days = vec[4] - vec[0] - carry;

    stn.push_str(&(days.to_string()));
    stn.push_str(" ");
    stn.push_str(&(hors.to_string()));
    stn.push_str(" ");
    stn.push_str(&(minut.to_string()));
    stn.push_str(" ");
    stn.push_str(&(segu.to_string()));
    stn.push_str(")");
    return stn;
}

fn main () {
    let mut res = "".to_owned();
    let mut input_line = String::new();
    io::stdin().read_line(&mut input_line).unwrap();
    let n = parse_input!(input_line, u8);
    input_line = String::from("");
    for i in 0..n {
        io::stdin().read_line(&mut input_line).unwrap();
        let slin = input_line.trim().to_string();
        let ts: Vec<i32> = slin.trim()
        .split(" ").map(|x| {
            x.parse::<i32>().expect("")
        }).collect();
        res.push_str(&timex(ts));
        res.push_str(" ");
        input_line = String::from("");
    }
    println!("{}", res);
}
