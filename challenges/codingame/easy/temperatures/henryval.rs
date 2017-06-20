use std::io;

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

fn main() {
    let mut res: i32 = 0;
    let mut input_line = String::new();
    io::stdin().read_line(&mut input_line).unwrap();
    let n = parse_input!(input_line, i32); // the number of temperatures to analyse
    if n == 0 {
        res = 0;
    } else {
    let mut input_line = String::new();
    io::stdin().read_line(&mut input_line).unwrap();
    let temps = input_line.trim_right().to_string(); // the n temperatures expressed as integers ranging from -273 to 5526

    /*Right here starts my coding*/

    //Transformo el string a vector de numeros
    let ts: Vec<i32> = temps.trim().split(" ").map(|x| {
        x.parse::<i32>().expect("") }).collect::<Vec<i32>>();

    //Vector abs de ts (para hallar min)
    let absts = ts.iter().cloned().map(|x| x.abs()).collect::<Vec<i32>>();

    //Hallo el valor mas pequeño del abs de ts
    let mini: i32 = (absts.iter().cloned().min().unwrap()).abs();

    //Filtro aquellos cuyo abs sea igual al abs de mini
    let mres = ts.iter().cloned().filter(|&x| x.abs() == mini).collect::<Vec<i32>>();
    let sizeres = mres.iter().cloned().count();
    if sizeres > 1 { res = (absts.iter().cloned().min().unwrap()).abs();
    } else { res = mres[0]; }
}
    println!("{}", res);
}
