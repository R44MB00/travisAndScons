use std::io;

fn main() {
    println!("Seconds to check: ");
    let mut user_text = String::new();
    io::stdin()
        .read_line(&mut user_text)
        .expect("Can't read line");

    let text = user_text.trim();

    match text.parse::<u32>() {
        Ok(second) => time_converter(second),
        Err(..) => println!("The input must be an integer \
          and {} it's a string", text)
    };
}

fn time_converter(second: u32) {
    if second < 60 {
        println!("0 hours 0 minutes and {} seconds", second);
    } else if second < 3600 {
        let minutes = second / 60;
        println!("0 hours and {} minutes", minutes);
    } else {
         let hours = second / 3600;
         println!("{} hours 0", hours);
    }
}
