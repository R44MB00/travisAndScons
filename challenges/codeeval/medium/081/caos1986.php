<?php

$fh = fopen($argv[1], "r");
while (true) {
    $test = fgets($fh);
    if(empty($test))
        break;
    $l = explode(",",$test);
    $count=0;
    for($i=0;$i<count($l);$i++){
        for($j=$i+1;$j<count($l);$j++){
            for($k=$j+1;$k<count($l);$k++){
                for($m=$k+1;$m<count($l);$m++){
                    if($l[$i]+$l[$j]+$l[$k]+$l[$m]==0)
                        $count++;
                }
            }
        }
    }
    echo $count."\n";
}

?>
