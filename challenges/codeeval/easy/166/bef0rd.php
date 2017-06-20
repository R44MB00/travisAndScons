<?php

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
    $test= trim($test);
	if ($test == "") break;
    $t = split(" ", $test);
    $datetime1 = date_create($t[0]);

    $datetime2 = date_create($t[1]);
    //print $datetime1->format('Y-m-d H:i:s').PHP_EOL;
    //print $datetime2->format('Y-m-d H:i:s').PHP_EOL;    
    $interval = date_diff($datetime1, $datetime2);
    
    echo $interval->format('%H:%I:%S').PHP_EOL;

    
  
}
