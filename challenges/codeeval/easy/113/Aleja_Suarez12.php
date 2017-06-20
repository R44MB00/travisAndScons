<?php
function operacion($mult){
    $op1=explode('|', $mult);
    $opa=explode(' ',trim($op1[0]));
    $opb=explode(' ',trim($op1[1]));
    foreach ($opa as $op2=>$value) {
        $res[$op2]=$opa[$op2]*$opb[$op2];
    }
    return implode(' ',$res);
}
$fh = fopen($argv[1], "r");
while (!feof($fh)) {
$test = fgets($fh);
echo operacion($test). "\n";

}

?>
