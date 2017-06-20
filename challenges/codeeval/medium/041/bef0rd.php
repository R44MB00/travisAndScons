<?php

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
    $test = trim($test);
	if ($test == "") break;
    $a = split(";", $test);
    $conjunto = split(",", $a[1]);
    $sum = 0;
    foreach ($conjunto as $c) {
        $sum += $c; 
    }
    print ($sum - ($a[0]-2)*($a[0]-1)/2).PHP_EOL;
}
