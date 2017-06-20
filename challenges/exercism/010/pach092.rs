use std::io;

fn main() {

    println!("Write the fisrt DNA strand:");
    let mut user_text = String::new();
    io::stdin()
    .read_line(&mut user_text)
    .expect("Can't read line");
    let dna = user_text.trim();

    println!("Write the second DNA strand (It must be of the same length as \
        the first DNA):");
    let mut user_text2 = String::new();
    io::stdin()
    .read_line(&mut user_text2)
    .expect("Can't read line");
    let dna2 = user_text2.trim();

    if dna.len() == dna2.len(){
        checking_dna(dna, dna2)
    }else{
        println!("The DNA strand must be of the same length");
    }
}

fn checking_dna(dna: &str, dna2: &str){
    let mut counter = 1;
    let check_dna: Vec<_> = dna.split("").collect();
    let check_dna2: Vec<_> = dna2.split("").collect();
    let mut sum = 0;
    while counter <= dna.len(){
        if check_dna[counter] == check_dna2[counter]{
            sum += 1;
        }
        counter += 1;
    }
    let hamming = dna.len() - sum;
    println!("The Hamming distance between these two DNA strands is {}", hamming);
}
