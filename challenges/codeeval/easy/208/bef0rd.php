<?php

$fh = fopen($argv[1], "r");
while (true) {
$test = fgets($fh);
if ($test == "") break;

		$c = explode(' | ', trim($test));
        
        $maximo = [];
        
        foreach ($c as $i => $k) {
            
            $r = explode(' ', trim($k));
            if ($i == 0) {            
                $maximo = $r;
            }
            for ($z=0;$z<count($maximo);$z++) {
                if ($maximo[$z] < $r[$z]) {
                    $maximo[$z] = $r[$z];
                } 
            }
            
        }
        
        
  
		print  implode(' ', $maximo).PHP_EOL;
}

