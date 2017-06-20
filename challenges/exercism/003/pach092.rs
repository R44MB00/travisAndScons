use std::io;

fn main() {
    println!("Year to check: ");
    let mut user_text = String::new();
    io::stdin()
        .read_line(&mut user_text)
        .expect("Can't read line");

    let text = user_text.trim();

    match text.parse::<u32>() {
        Ok(year) => leap_year(year),
        Err(..) => println!("The input must be an integer \
          and {} it's a string", text)
    };
}

fn leap_year(year: u32) {
    if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0){
      println!("The year {} is leap", year);
    } else{
      println!("The year {} isn't leap", year);
    }
}
