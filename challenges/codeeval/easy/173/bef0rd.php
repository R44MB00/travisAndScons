<?php

function borrarrepetido($x) 
{
	$w = str_split($x);
	$l = "";
	foreach ($w as $b) 
	{
		if ($l !== $b) { 
			print $b;
			$l = $b;
		}
	}
}

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
	if ($test == "") break;
	
	print borrarrepetido(str_replace("\n", "", $test)).PHP_EOL;

}

