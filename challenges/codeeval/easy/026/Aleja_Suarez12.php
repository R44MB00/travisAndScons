<?php

$fh = fopen($argv[1], "r");
while (!feof($fh)) {
$archivo = fgets($fh);

$res=filesize($argv[1]);
echo $res . "\n";
}

?>
