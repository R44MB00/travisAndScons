<?php



$fh = fopen($argv[1], "r");

while (!feof($fh)) {

$num = trim(fgets($fh));

$numero=explode(";",$num);

$res= array_intersect(explode(",",$numero[0]), explode(",",$numero[1]));

$res=implode(",",$res);

echo $res . "\n";

}

?>
