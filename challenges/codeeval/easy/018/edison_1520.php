<?php
$file = fopen($argv[1], 'r');
while (false !== ($line = fgets($file))) {
    list($b, $c) = explode(',', trim($line));
    $multiplo = $c;
    while ($b > $c) {
        $c += $multiplo;
    }
    echo $c . PHP_EOL;
}
?>
