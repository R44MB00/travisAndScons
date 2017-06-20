use std::io;

fn main() {
    println!("Type a word to check if is a pangram:");
    let mut user_text = String::new();
    io::stdin()
    .read_line(&mut user_text)
    .expect("Can't read line");
    let pangram = user_text.trim();
    let uppercase = pangram.to_uppercase();
    let mut vector_pangram: Vec<_> = uppercase.split("").collect();
    vector_pangram.sort();
    vector_pangram.dedup();
    let length = vector_pangram.len();
    if length == 28{
        println!("{:?} is a pangram", pangram);
    }else if length > 28{
        println!("There's something wrong!");
    }else{
        println!("{:?} isn't a pangram", pangram);
    }
}
