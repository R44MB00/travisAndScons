<?php

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
	if ($test == "") break;
	echo strtolower(trim(preg_replace("/\s+/", " " ,preg_replace("/[^a-zA-Z]/", " ", $test)))).PHP_EOL;
}

