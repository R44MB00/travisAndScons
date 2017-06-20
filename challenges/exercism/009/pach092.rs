fn main() {
    let mut grains_wheat = 1 as u64;
    let mut sum_grains = 0 as u64;

    for chess_square in 1..64{
        println!("For the chess square {:?} the king must give {} grains of \
            wheat.", chess_square, grains_wheat);
        sum_grains += grains_wheat;
        grains_wheat *= 2;
    }
    println!("The king has to give {:?} grains of wheat", sum_grains);
}
