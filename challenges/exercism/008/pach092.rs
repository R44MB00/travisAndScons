use std::io;

fn main() {
    println!("Choose an integer number: ");
    let mut user_text = String::new();
    io::stdin()
        .read_line(&mut user_text)
        .expect("Can't read line");

    let text = user_text.trim();

    match text.parse::<u16>() {
        Ok(number) => sum_of_multiples(number),
        Err(..) => println!("{} it's not a valid input", text)
    };
}

fn sum_of_multiples(number: u16){
    let number = number as i32;
    let mut counter = 1;
    let mut sum = 0;
    while counter < number{
        if counter % 3 == 0 || counter % 5 == 0{
            sum = sum + counter;
        }
        counter += 1;
    }
    println!("The sum of the multiples of 3 and 5, up to but not including {:?} is {:?}", number, sum);
}
