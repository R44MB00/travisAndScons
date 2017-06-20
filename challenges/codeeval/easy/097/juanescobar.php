<?php

    $fh = fopen($argv[1], "r");
    while (true) {
        $test = trim(fgets($fh));
        # break loop if $test is an empty line
        if ($test == "")
            break;
        # $test represents the test case, do something with it
        $data = explode("|", $test);
        $string = $data[0];
        $key = explode(" ", $data[1]);

        for ($i=0; $i < count($key); $i++) { 
  
            $pos = trim($key[$i]);
            if ($pos == "")
                continue;

            echo $string[$pos-1];

        }
        echo "\n";

    }

?>
