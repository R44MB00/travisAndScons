use std::io;

fn checksum (vec: &Vec<i64>) -> i64 {
    /* This function returns the checksum
    of a integer vector
    info: http://www.codeabbey.com/index/wiki/checksum */
    let mut res = 0;
    let modu = 10000007;
    let seed = 113;
    for i in vec {
        res = (res + i) * seed;
        if res > modu { res = res % modu; }
    }
    return res;
}

/*
1 4 3 2 6 5 -1
*/

fn main () {
    let mut tmp;
    let mut swap = 0;
    let mut input_line = String::new();
    io::stdin().read_line(&mut input_line).unwrap();
    let slin = input_line.trim().to_string();
    let mut ts: Vec<i64> = slin.trim()
    .split(" ").map(|x| {
        x.parse::<i64>().expect("")
    }).collect();
    ts.pop(); //Remove the last item: -1
    let stlen = ts.iter().count();
    for (ind, value) in (0..stlen - 1).enumerate() {
        if ts[ind] > ts[ind+1] {
            tmp = ts[ind];
            ts[ind] = ts[ind+1];
            ts[ind+1] = tmp;
            swap += 1;
        }
    }
    let chsum = checksum(&ts);
    println!("{} {}", swap, chsum);
}
