<?php

$fh = fopen($argv[1], "r");
while (true) {
$test = fgets($fh);
if ($test == "") break;

		$c = explode(' ', trim($test));
        
        $regex = array_shift($c);
        #print "regex: $regex\n";        
        $regex = str_replace(array(".", "?", "*" ), array("\.", ".{1}", ".*"), "/".$regex."/");
        #print "regex: $regex\n";
        $si = [];
        foreach ($c as $w) { 
            
            preg_match($regex, $w, $salida);
            if (count($salida) > 0 && $salida[0] == $w) {
                $si[] = $w;
            }
        }
        $out = implode(" ", $si);
        if (trim($out) == "") {
            $out = "-";
        }
        print $out.PHP_EOL;
        
        
//  die();
}

  

