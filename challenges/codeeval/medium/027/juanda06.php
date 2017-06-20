<?php
$fh = fopen($argv[1], "r");
while (!feof($fh)) {
  $test = fgets($fh);
  echo(decbin($test) . "\n");
}
fclose($fh);
?>
