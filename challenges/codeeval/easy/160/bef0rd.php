<?php

function niceAngle($angle) {
    $nice = "";
    $d = (int)($angle);
    $m = (int)(($angle - $d ) * 60);
    $s = (int)(($angle - $d - $m/60) * 3600);
    printf("%d.%02d'%02d\"\r\n", $d, $m, $s);

    
}

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
    $test = trim($test);
	if ($test == "") break;
    $angle = floatval($test);
    
    niceAngle($angle).PHP_EOL;
}
