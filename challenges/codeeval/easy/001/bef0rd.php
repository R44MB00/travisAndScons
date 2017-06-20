<?php

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
    $test= trim($test);
	if ($test == "") break;
    
    $out  = "";
    $t =  split(" ", $test);
    for ($i = 1; $i <= $t[2];$i++) { 
        if ($i % $t[0]  == 0 && $i % $t[1] == 0)
            $out .= " FB";
        else if ($i % $t[0]  == 0)
            $out .= " F";
        else if ($i % $t[1] == 0)
            $out .= " B";
        else 
            $out .= " ". $i;
    }
    print trim($out).PHP_EOL;
    
   
  
  
}
