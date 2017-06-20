<?php

    $fh = fopen($argv[1], "r");
    $sum = 0;
    while (true) {
        $test = trim(fgets($fh));
        # break loop if $test is an empty line
        if ($test == "")
            break;
        # $test represents the test case, do something with it
        $sum = $sum + $test;
    }
    echo $sum;

?>
