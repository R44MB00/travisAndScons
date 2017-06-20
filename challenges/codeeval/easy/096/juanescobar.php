<?php

    $fh = fopen($argv[1], "r");
    while (true) {
        $test = trim(fgets($fh));
        # break loop if $test is an empty line
        if ($test == "")
            break;
        # $test represents the test case, do something with it
        for ($i=0; $i < strlen($test); $i++) { 
            $letter = $test[$i];
            if (ctype_upper($letter)) {
                echo strtolower($letter);
            } else {
                echo strtoupper($letter);
            }
        }
        echo "\n";

    }

?>
