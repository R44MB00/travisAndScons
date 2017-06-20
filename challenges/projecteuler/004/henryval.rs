fn vecpal(a: u64, b: u64) -> Vec<u64> {
    let mut vec = Vec::new();
    for i in a..b {
        for j in a..b {
            vec.push(i*j);
        }
    }
    return vec;
}

fn chpalin(num1: &u64) -> bool {
    /* This function returns false or true
    if a string is palindrome */
    return num1.to_string() == revstr(num1.to_string());
}

fn revstr(strn: String) -> String {
    /* This function returns a string backwards */
    return strn.chars().rev().collect::<String>();
}

fn main() {
    let myv = vecpal(100, 1000);
    let fil = myv.iter().filter(|&x| chpalin(x)).collect::<Vec<&u64>>();
    let maxx = fil.iter().max().unwrap();
    println!("{}", maxx);
}
