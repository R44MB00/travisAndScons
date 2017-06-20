use std::io;

fn main() {
    println!("Type the DNA string");
    let mut user_text = String::new();
    io::stdin()
    .read_line(&mut user_text)
    .expect("Can't read line");
    let dna_text = user_text.trim();
    let uppercase = dna_text.to_uppercase();
    let length = uppercase.len() + 1;
    let check_dna: Vec<_> = uppercase.split("").collect();
    let mut counter : usize = 1;
    let mut sum_a = 0;
    let mut sum_c = 0;
    let mut sum_g = 0;
    let mut sumt = 0;
    let mut sum_wrong = 0;
    while counter < length {
        if check_dna[counter] == "A"{
            sum_a += 1;
        } else if check_dna[counter] == "C"{
            sum_c += 1;
        } else if check_dna[counter] == "G"{
            sum_g += 1;
        } else if check_dna[counter] == "T"{
            sumt += 1;
        } else {
            sum_wrong += 1;
        }
        counter += 1;
    }
    println!("{:?} {:?} {:?} {:?}", sum_a, sum_c, sum_g, sumt);
    if sum_wrong != 0{
        println!("And {:?} wrong elements", sum_wrong);
    }
}
