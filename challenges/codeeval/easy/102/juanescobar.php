<?php

    $fh = fopen($argv[1], "r");
    while (true) {
        $test = trim(fgets($fh));
        # break loop if $test is an empty line
        if ($test == "")
            break;
        
        $data = json_decode($test);
        $sum = 0;
        foreach ($data->menu->items as $item) {
            if (isset($item->label))
                $sum = $sum + $item->id;
        }
        echo "$sum\n";

    }

?>
