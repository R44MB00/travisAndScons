<?php

    $fh = fopen($argv[1], "r");
    while (!feof($fh)) {
        $test = trim(fgets($fh));
        # break loop if $test is an empty line
        if ($test == "")
            continue;
        # $test represents the test case, do something with it
        $data = explode(",", $test);
        $string = $data[0];
        $char = $data[1];
        $pos = strpos($string, $char);

        if ($pos === false) {
            echo "-1\n";
        } else {
            echo "$pos\n";
        }

    }

?>
