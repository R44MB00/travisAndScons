<?php

$fh = fopen($argv[1], "r");
while (!feof($fh)) {
$cadena = fgets($fh);

$res=ucwords($cadena);
echo $res . "\n";
}

?>
