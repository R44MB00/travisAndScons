<?php
$fh = fopen($argv[1], "r");
while (!feof($fh)) {
$numero = fgets($fh);

echo decbin($numero) . "\n";
}

?>
