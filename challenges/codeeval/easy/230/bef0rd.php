<?php

$fh = fopen($argv[1], "r");
while (true) {
$test = fgets($fh);
if ($test == "") break;

		$c = explode('|', trim($test));
        $s = [];
        $e = [];
        
        foreach ($c as $i => $k) {
            $r = explode(' ', trim($k));
            
            foreach ($r as $t) {
                if (!isset($e[$t])) {
                    $e[$t] = array();
                }
            
            $e[$t][] = $i + 1;
            }
            
        }
        
        
        foreach ($e as $t => $f) {
            $s[] = $t . ":" . implode(',', $f);
        }
        
        natsort($s);
		print  implode('; ', $s).';'.PHP_EOL;
}

