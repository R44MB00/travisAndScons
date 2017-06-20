<?php

$fh = fopen($argv[1], "r");
while (true) {
    $test = fgets($fh);
    if(empty($test))
        break;
    $l=explode(" ",$test);
    $li=intval($l[0]);
    $ld=intval($l[1]);
    $tot=0;
    for($i=$li;$i<$ld;$i++){
        $sum=0;
        for($j=$i;$j<=$ld;$j++){
            echo $i."-".$j;
            if(palindromo($j))
                $sum++;
        }
        echo "Sum: ".$sum."\n";
        if($sum%2==0)
            $tot++;
    }
     
    echo $tot."---\n";
}


function palindromo($s){
    if(strlen($s)==1)
        return true;
    else{
        for($i=1;$i<=strlen($s)/2;$i++){
            if($s[$i]!=$s[strlen($s)-$i])
                return false;
        }
    }
    return true;
}
?>
