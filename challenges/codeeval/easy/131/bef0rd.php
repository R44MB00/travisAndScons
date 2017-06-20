<?php

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
	if (trim($test) == "") break;
	$s = split(" ", trim($test));
	
	$mas = strrpos($s[1], "+"); 
	$men = strrpos($s[1], "-");
#	print $s[1].PHP_EOL;

	if ($mas > -1) {
		$a = substr($s[0], 0, $mas);
		$b = substr($s[0], $mas);
#		print "($a+$b)".PHP_EOL;
		print ($a+$b).PHP_EOL;
	} else {
		$a = substr($s[0], 0, $men);
		$b = substr($s[0], $men);	
#		print "($a-$b)".PHP_EOL;
		print ($a-$b).PHP_EOL;
	}

}

