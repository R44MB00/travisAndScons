<?php

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
    $test= trim($test);
	if ($test == "") break;
    $t = str_split($test);
    $lowercase = 0;
    $uppercase = 0;
    $total = 0;
	foreach ($t as $l) {
        if (ctype_upper($l)) {
            $uppercase++;
        } else {
            $lowercase++;
        }
        $total++;
    }
    //print_r($t);
    //print $lowercase . " - " . $uppercase;
    printf ("lowercase: %0.2f uppercase: %0.2f\r\n" , 100*$lowercase/$total, 100*$uppercase/$total);
    //exit();

}

