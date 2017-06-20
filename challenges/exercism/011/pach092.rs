use std::io;

fn main() {
    println!("Scrabble word to check");
    let mut user_text = String::new();
    io::stdin()
    .read_line(&mut user_text)
    .expect("Can't read line");
    let scrabble_text = user_text.trim();
    let uppercase = scrabble_text.to_uppercase();
    let length = uppercase.len() + 1;
    let check_scrabble: Vec<_> = uppercase.split("").collect();
    let mut counter : usize = 1;
    let mut sum = 0;
    while counter < length {
        if check_scrabble[counter] == "A" || check_scrabble[counter] == "E" ||
        check_scrabble[counter] == "I" || check_scrabble[counter] == "O" ||
        check_scrabble[counter] == "U" || check_scrabble[counter] == "L" ||
        check_scrabble[counter] == "N" || check_scrabble[counter] == "R" ||
        check_scrabble[counter] == "S" || check_scrabble[counter] == "T"{
            sum += 1;
        } else if check_scrabble[counter] == "D" ||
        check_scrabble[counter] == "G" {
            sum += 2;
        } else if check_scrabble[counter] == "B" ||
        check_scrabble[counter] == "C" || check_scrabble[counter] == "M" ||
        check_scrabble[counter] == "P"{
            sum += 3;
        } else if check_scrabble[counter] == "F" ||
        check_scrabble[counter] == "H" || check_scrabble[counter] == "V" ||
        check_scrabble[counter] == "W" || check_scrabble[counter] == "Y"{
            sum += 4;
        } else if check_scrabble[counter] == "K"{
            sum += 5;
        } else if check_scrabble[counter] == "J" ||
        check_scrabble[counter] == "X"{
            sum += 8;
        } else if check_scrabble[counter] == "Q" ||
        check_scrabble[counter] == "Z"{
            sum += 10;
        }
        counter += 1;
    }
    println!("{:?}", sum);
}
