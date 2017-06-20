<?php

$fh = fopen($argv[1], "r");
while (!feof($fh)) {
$numeros = fgets($fh);

$num=explode(",",$numeros);
$div=(int)($num[0]/$num[1]);
$op= ($num[0]-$num[1])* $div;

echo $op . "\n";
}

?>
