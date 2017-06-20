use std::io;

fn main() {
    println!("Say something to Bob ");
    let mut user_text = String::new();
    io::stdin()
        .read_line(&mut user_text)
        .expect("Can't read line");

    let text = user_text.trim();

    if text.contains("?"){
      println!("Sure");
    }else if text.len() == 0{
      println!("Fine. Be that way!");
    }else if is_yelling(text){
      println!("Whoa, chill out!");
    }else{
      println!("Whatever");
    }
}

fn is_yelling(text: &str) -> bool {

    let mut non_uppercase = 0;

    for c in text.chars() {
        if c.is_lowercase() {
             non_uppercase += 1;
        }
    }

    if non_uppercase == 0 && text.to_string().chars().count() != 0{
        true
    }else{
        false
    }
}
