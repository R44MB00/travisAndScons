<?php

    $fh = fopen($argv[1], "r");
    while (true) {
        $test = trim(fgets($fh));
        # break loop if $test is an empty line
        if ($test == "")
            break;
        # $test represents the test case, do something with it
        $lists = explode(";", $test);
        $list1 = explode(",", $lists[0]);
        $list2 = explode(",", $lists[1]);

        $output = array();
        foreach ($list1 as $value) {
            if (in_array($value, $list2))
                $output[] = $value;
        }
        
        if (count($output) > 0)
            echo implode(",", $output)."\n";
        else
            echo "\n";
    }

?>
