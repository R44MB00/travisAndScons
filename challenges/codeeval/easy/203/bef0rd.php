<?php

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
	if ($test == "") break;
	$a = $test;
	$n = 0;
	$i = 0;
	$i1 = 0;
	$i2 = 0;
	while (true) {
		$found1 = (strpos($a, "<--<<", $i1));
		$found2 = (strpos($a, ">>-->", $i2));
		
		if ($found1 !== false) { $n++; $i1 = $found1+1; }
		if ($found2 !== false) { $n++; $i2 = $found2+1; }
		
		$i++;
		
		if ($i > strlen($a)) break;
	}
	print $n.PHP_EOL;

}

