<?php

    $fh = fopen($argv[1], "r");
    while (true) {
        $test = trim(fgets($fh));
        # break loop if $test is an empty line
        if ($test == "")
            break;
        # $test represents the test case, do something with it
        $data = explode(" ", $test);
        $out = "";
        for ($i=0; $i < count($data); $i++) { 
            $out .= ucfirst($data[$i]). " ";
        }
        $out = trim($out);
        echo "$out\n";
    }

?>
