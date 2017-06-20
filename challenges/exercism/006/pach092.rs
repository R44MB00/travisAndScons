fn main(){
  let mut beer = 99;

  while beer >= 1 {
    let less_beer = beer - 1;
    if less_beer != 0{
      println!("{} bottles of beer on the wall, {} bottles of beer.\nTake one\
        down and pass it around, {} bottles of beer on the wall.\
        \n", beer, beer, less_beer);
    }else{
      println!("1 bottle of beer on the wall, 1 bottle of beer.\nTake it down \
        and pass it around, no more bottles of beer on the wall.\n");
      println!("No more bottles of beer on the wall, no more bottles of beer.\
        \nGo to the store and buy some more, 99 bottles of beer on the wall.");
    }

    beer -= 1;
  }
}
