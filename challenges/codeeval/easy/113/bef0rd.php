<?php

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
	if (trim($test) == "") break;

	$s = split("\|", trim($test));
    $s[0] = split(" ", trim($s[0]));
    $s[1] = split(" ", trim($s[1]));   
    $out = " ";
    for ($i=0; $i<count($s[0]);$i++) {
        //print $s[0][$i]."*" .$s[1][$i].PHP_EOL;
        $out .= $s[0][$i]*$s[1][$i] . " ";
    }
    print (trim($out).PHP_EOL);
	

}

