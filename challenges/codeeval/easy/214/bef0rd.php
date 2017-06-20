<?php

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
    $test= trim($test);
	if ($test == "") break;
    $t = split(" ", $test);
    $datetime = array();
    foreach($t as $u)
        $datetime[] = date_create($u);

   // print_r($datetime);        
    rsort($datetime);
    //print_r($datetime);
    //exit();
    $output = "";
    foreach($datetime as $d) {
        $output .= " ".$d->format('H:i:s');
    }
    print trim($output).PHP_EOL;
    
    
  
}
