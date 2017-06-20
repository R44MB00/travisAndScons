<?php

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
    $test= trim($test);
	if ($test == "") break;
    $t = split(";", $test);
    $a = split(",", $t[0]);
    $t = (int)$t[1];
    $e = count($a);
    for ($i =0;$i<$e;$i=$i+$t) {
    //    print $i."-".$t.PHP_EOL;
        if ($i + $t <= $e) {
            $tmp = array_slice($a, $i, $t);
        //      print_r($tmp);
            
            $b =  array_reverse($tmp);
            $c = $i;
            foreach ($b as $nuevo) {
                $a[$c] = $nuevo;
                $c++;
            }
        }
    }
    $out = "";
    foreach ($a as $x) {
        $out .= " ".$x;
    }
    print str_replace(" ", "," , trim($out)).PHP_EOL;
//   exit();
   
  
  
}
