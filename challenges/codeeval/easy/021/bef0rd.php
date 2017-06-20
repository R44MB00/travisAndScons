<?php


$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
	if ($test == "") break;
	$n = 0;
	$testc = str_split($test);
	foreach ($testc as $s) {
		$n = $n + (int)($s);
	}
	print $n.PHP_EOL;

}

