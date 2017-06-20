use std::io;

fn main() {
    println!("Choose an integer number: ");
    let mut user_text = String::new();
    io::stdin()
        .read_line(&mut user_text)
        .expect("Can't read line");

    let text = user_text.trim();

    match text.parse::<u32>() {
        Ok(number) => number_factor(number),
        Err(..) => println!("{} it's not a valid input", text)
    };
}

fn number_factor(number: u32) {
    let number = number as i32;
    let mut divisor = 1 as i32;
    let mut factor: Vec<i32> = vec![];
    while divisor <= number{
      if number % divisor == 0{
        factor.push(divisor);
      }
      divisor += 1;
    }
    if factor.contains(&3) && factor.contains(&5) && factor.contains(&7){
      println!("In raindrop-speak, this would be a \"PlingPlangPlong\".");
    } else if factor.contains(&3) && factor.contains(&5){
      println!("In raindrop-speak, this would be a \"PlingPlang\".");
    } else if factor.contains(&3) && factor.contains(&7){
      println!("In raindrop-speak, this would be a \"PlingPlong\".");
    } else if factor.contains(&5) && factor.contains(&7){
      println!("In raindrop-speak, this would be a \"PlangPlong\".");
    } else if factor.contains(&3){
      println!("In raindrop-speak, this would be a simple \"Pling\".");
    } else if factor.contains(&5){
      println!("In raindrop-speak, this would be a simple \"Plang\".");
    } else if factor.contains(&7){
      println!("In raindrop-speak, this would be a simple \"Plong\".");
    } else{
      println!("In raindrop-speak, this would be \"{}\"", number);
    }
}
