<?php

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
	if (trim($test) == "") break;
    $test = trim($test);
    if (!filter_var($test, FILTER_VALIDATE_EMAIL) === false) {
      print "true".PHP_EOL;
    } else {
      print "false".PHP_EOL;
    }
}
