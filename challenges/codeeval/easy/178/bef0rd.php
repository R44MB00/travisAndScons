<?php

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
    $test= trim($test);
	if ($test == "") break;
    $t = split(" ", $test);
    $n = sqrt(count($t));
    $out = "";
    for ($i=0;$i<$n;$i++) {
       for ($j=$n-1;$j>=0;$j--) {
          // print "$i $j\n";
           
          $out = $out . " {$t[$j*($n)+$i]}";   
          //  print "{$i},{$j} ($i*($n)+$j = " .  ($i*($n)+$j) . ") {$t[$i*($n)+$j]}\n";   
        }     
        
    }
    print trim($out).PHP_EOL;
    

}

