<?php
$fh = fopen($argv[1], "r");
while (true) {
    $test = fgets($fh);
    if(empty($test))
        break;
    $ar=explode(" ",$test);
    $flag="";
    $result="";
    for($i=0;$i<count($ar);$i++){
        if($i%2==0){
            $flag=$ar[$i];
        }else{
            if($flag==="0"){
                $result .= $ar[$i];
            }else if($flag=="00"){
                $result .= str_replace("0","1",$ar[$i]);
            }
        }
    }
    echo bindec($result)."\n";
}
?>
