<?php

function sortbylength($a, $b) {
	return strlen($b)-strlen($a);
}

$fh = fopen($argv[1], "r");
$num = fgets($fh);
while (true) {
	$test = fgets($fh);
	if ($test == "") break;
	$a[] = $test;
}

usort($a, 'sortbylength');
for ($i=0;$i<$num;$i++) {
	print $a[$i].PHP_EOL;
}

