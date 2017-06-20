<?php

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
    $test= trim($test);
	if ($test == "") break;
    $fechas = split("; ", $test);
    $fechaArreglo = [];
    foreach ($fechas as $f) {
        $t = split("-", $f);
        $datetime1 = date_create($t[0]);
        $datetime2 = date_create($t[1]);
        foreach ($fechaArreglo as $f) {
            if ($datetime1 < $f[1] && $datetime2 < $f[2]){ 
                $datetime1 = $f[1];
                $datetime2 = $f[1];
            } 
        }
        $interval = date_diff($datetime2, $datetime1);
        $anos = $interval->format('%y');
        if ($datetime2 <= $datetime1)
            $anos = 0;
        //print $datetime1->format('Y-m-d H:i:s').PHP_EOL;
        //print $datetime2->format('Y-m-d H:i:s').PHP_EOL;    
    //    echo $interval->format('%y').PHP_EOL;    
        $fechaArreglo[] = [$datetime1, $datetime2, $anos];
    
    }
    foreach($fechaArreglo as $d)  {
        print $d[2].PHP_EOL;
    }
    
    $suma = 0;
    print "-----".PHP_EOL;
    //die();

    
  
}
