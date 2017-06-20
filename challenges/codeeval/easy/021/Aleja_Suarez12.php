<?php
$cadena1 = fopen($argv[1], "r");
while (!feof($cadena1)) {
$cadena= fgets($cadena1);
$valor=str_split($cadena);
$suma=array_sum($valor);
unset($valor);
echo $suma,"\n";
}

?>
