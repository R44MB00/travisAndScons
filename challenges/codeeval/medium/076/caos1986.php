<?php
$fh = fopen($argv[1], "r");
while (true) {
    $test = fgets($fh);
    if(empty($test))
        break;
    $l=explode(",",$test);
    $sw=false;
    for($i=0;$i<strlen($l[0]);$i++){
        if(trim(rotate(trim($l[0]),$i))==trim($l[1])){
            echo "True\n";
            $sw=true;
            break;
        }
    }
    if(!$sw)
        echo "False\n";
}
function rotate($s,$n){
    return substr($s,strlen($s)-$n).substr($s,0,strlen($s)-$n)."\n";
}

?>
