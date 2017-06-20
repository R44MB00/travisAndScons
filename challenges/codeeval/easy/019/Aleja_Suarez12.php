<?php
function bits($numero, $pos1, $pos2){
    $pos1--;
    $pos2--;
    $nbin=strrev(decbin($numero));
    if($nbin[$pos1] == $nbin[$pos2]) {
        return "true";
    }else{
        return "false";
    }
}
$fh = fopen($argv[1], "r");
while (!feof($fh)) {
$test = fgets($fh);
$test1=explode(",",$test);
echo bits($test1[0], $test1[1], trim($test1[2])) . "\n";

}

?>
