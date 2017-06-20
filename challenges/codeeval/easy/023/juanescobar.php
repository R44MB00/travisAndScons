<?php
for ($t=1; $t < 13; $t++) { 
    $o = "";
    for ($n=1; $n < 13; $n++) { 
        $r = $t * $n;
        $o .= str_pad($r, 4, " ", STR_PAD_LEFT);
    }
    print trim($o)."\n";
}
