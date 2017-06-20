<?php

    $fh = fopen($argv[1], "r");
    while (true) {
        $test = trim(fgets($fh));
        # break loop if $test is an empty line
        if ($test == "")
            break;
        # $test represents the test case, do something with it
        echo fibonacci($test)."\n";

    }

    function fibonacci($n)
    {
        if ($n==0)
            return 0;
        elseif ($n==1)
            return 1;
        else
            return fibonacci($n-1) + fibonacci($n-2);

    }

?>
