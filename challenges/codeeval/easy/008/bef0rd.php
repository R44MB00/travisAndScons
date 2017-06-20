<?php

$fh = fopen($argv[1], "r");
while (true) {
$test = fgets($fh);
if ($test == "") break;

		$a = explode(" ", trim($test));
		$b = array_reverse($a);

		print trim(join(" ", $b)).PHP_EOL;
}

