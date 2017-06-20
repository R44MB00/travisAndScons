<?php

$fh = fopen($argv[1], "r");
while (true) {
$test = fgets($fh);
if ($test == "") break;

		$a = explode(" ", trim($test));
        $z = (int)$a[0];
        $l = $a[1];
        $m = 0;
        for ($n=1;$n<=$l;$n++) {
            $w = decbin($n);
            if (substr_count($w, '0') === $z){
                $m++;
            }
        } 

		print  $m.PHP_EOL;
}

