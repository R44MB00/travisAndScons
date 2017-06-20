<?php
function test_multiple($base, $largerthan) {
  $calculated_num = 0;
  for ($i = 2; $base * $i < $largerthan; $i++) {
    $calculated_num = $base * $i;
  }
  return $i;
}
$multiples = array();
$fh = fopen($argv[1], "r");
while (!feof($fh)) {
  $test = trim(fgets($fh));
  $nums = explode(",", $test);
  echo $nums[1]*test_multiple($nums[1], $nums[0]) . "\n";
}
fclose($fh);
?>
