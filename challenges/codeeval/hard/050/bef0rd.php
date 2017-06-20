<?php

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
    $test= trim($test);
	if ($test == "") break;
    $t = split(";", $test);
    $original = $t[0];
    $reemplazos = split(",", $t[1]);
    print $original.PHP_EOL;
    for ($i=0;$i<count($reemplazos)-1;$i=$i+2) {
        
       $original = str_replace($reemplazos[$i], $reemplazos[$i+1], $original);
       print $reemplazos[$i] . " -- " . $reemplazos[$i+1] . " = " . $original .  PHP_EOL ;
    }
    print $original.PHP_EOL;
  
  
}

