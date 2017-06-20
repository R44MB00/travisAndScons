<?php
$fh = fopen($argv[1], "r");
while (!feof($fh)) {
$arreglo = fgets($fh);

$arr=explode(",",trim($arreglo));
$res=array_values(array_unique($arr));
for ($i = 0; $i < count($res); $i++) {
     echo $res[$i];
     if ($i < count($res)-1) {
         echo "," ;
     }
   
}
  echo "\n";
}

?>
