<?php

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
	if (trim($test) == "") break;
	$s = split( ",", trim($test));
	
	$out = strrpos($s[0], $s[1]);
	if ($out === false) $out = "-1";
	echo $out.PHP_EOL;

}

