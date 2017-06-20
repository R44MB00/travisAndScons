<?php
$num = fopen($argv[1], "r");
while (!feof($num)) {
$num1 = fgets($num);

$op=(hexdec($num1));
echo $op,"\n";
}
?>
