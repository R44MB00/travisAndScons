<?
Class cashRegister {
   public $change;
   public $remainder;
}
function testCurrency($money, $currency, $currency_value, $change) {
     if ($money/$currency_value >= 1) {
       $ct = floor($money/$currency_value);
       array_push($change,$currency);
       $money = round($money - $ct*$currency_value,2);
     }
     $cash_reg = new cashRegister();  
     $cash_reg->remainder = $money;
     $cash_reg->change = $change;
     return $cash_reg;
}
function change($money) {
  $change = array();
  $remaining = $money;
  if ($money < 0) {
    return "ERROR";
  } elseif ($money == 0) {
    return "ZERO";
  } else {
     $cash_reg = testCurrency($remaining, 'ONE HUNDRED', 100, $change);
     $cash_reg = testCurrency($cash_reg->remainder, 'FIFTY', 50, $cash_reg->change);
     $cash_reg = testCurrency($cash_reg->remainder, 'TWENTY', 20, $cash_reg->change);
     $cash_reg = testCurrency($cash_reg->remainder, 'TEN', 10, $cash_reg->change);
     $cash_reg = testCurrency($cash_reg->remainder, 'FIVE', 5, $cash_reg->change);
     $cash_reg = testCurrency($cash_reg->remainder, 'TWO', 2, $cash_reg->change);
     $cash_reg = testCurrency($cash_reg->remainder, 'ONE', 1, $cash_reg->change);
     $cash_reg = testCurrency($cash_reg->remainder, 'HALF DOLLAR', .50, $cash_reg->change);
     $cash_reg = testCurrency($cash_reg->remainder, 'QUARTER', .25, $cash_reg->change);
     $cash_reg = testCurrency($cash_reg->remainder, 'DIME', .10, $cash_reg->change);
     $cash_reg = testCurrency($cash_reg->remainder, 'NICKEL', .05, $cash_reg->change);
     $cash_reg = testCurrency($cash_reg->remainder, 'PENNY', .01, $cash_reg->change);
  }
  $change = $cash_reg->change;
  sort($change);
  return implode(",", $change);
}
$fh = fopen($argv[1], "r");
while (!feof($fh)) {
  $test = trim(fgets($fh));
  if ($test != "") {
    $args = explode(";", $test);
    echo change($args[1]-$args[0]) . "\n";
  }
}
fclose($fh);
?>
