use std::io;

fn main() {
    println!("Choose an integer number: ");
    let mut user_text = String::new();
    io::stdin()
        .read_line(&mut user_text)
        .expect("Can't read line");

    let text = user_text.trim();

    match text.parse::<u16>() {
        Ok(number) => number_factor(number),
        Err(..) => println!("{} it's not a valid input", text)
    };
}

fn number_factor(number: u16) {
    let number = number as i64;
    let mut counter = 1;
    let mut square_sum = 0;
    let mut sum_squares = 0;
    while counter <= number{
      square_sum = square_sum + counter;
      sum_squares = sum_squares + i64::pow(counter, 2);
      counter += 1;
    }

    let square = i64::pow(square_sum, 2);
    let difference_square = square - sum_squares;

    println!("{:?}", difference_square);
}
