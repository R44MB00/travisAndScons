<?php

function resumir($x) 
{
	
	if (strlen($x) <= 55) return ($x);
	$a = '... <Read More>';
	$newx = trim(substr($x, 0, 40));
	$lastspace = strrpos($newx, " ");
	if ($lastspace !== false) {
		$newx = trim(substr($newx, 0, $lastspace)) . $a;
	} else {
		$newx = $newx . $a;
	}
	return $newx;
	
}

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
	if ($test == "") break;
	
	print resumir(str_replace("\n", "", $test)).PHP_EOL;

}

