<?php

$board1 = "-**----*--***--***---*---****--**--****--**---**--";
$board2 = "*--*--**-----*----*-*--*-*----*-------*-*--*-*--*-";
$board3 = "*--*---*---**---**--****-***--***----*---**---***-";
$board4 = "*--*---*--*-------*----*----*-*--*--*---*--*----*-";
$board5 = "-**---***-****-***-----*-***---**---*----**---**--";
$board6 = "--------------------------------------------------";

$handle = fopen($argv[1], 'r');
while (true) {
    $line = fgets($handle);
    if ($line == "") break;
    
    $line = clean_string($line);
    for ($i=0; $i < strlen($line); $i++) { 
        $num = $line[$i];
        $len = 5 * $num;
        echo $board1[0+$len].$board1[1+$len].$board1[2+$len].$board1[3+$len].$board1[4+$len];
    } echo "\n";

    for ($i=0; $i < strlen($line); $i++) { 
        $num = $line[$i];
        $len = 5 * $num;
        echo $board2[0+$len].$board2[1+$len].$board2[2+$len].$board2[3+$len].$board2[4+$len];
    } echo "\n";

    for ($i=0; $i < strlen($line); $i++) { 
        $num = $line[$i];
        $len = 5 * $num;
        echo $board3[0+$len].$board3[1+$len].$board3[2+$len].$board3[3+$len].$board3[4+$len];
    } echo "\n";

    for ($i=0; $i < strlen($line); $i++) { 
        $num = $line[$i];
        $len = 5 * $num;
        echo $board4[0+$len].$board4[1+$len].$board4[2+$len].$board4[3+$len].$board4[4+$len];
    } echo "\n";

    for ($i=0; $i < strlen($line); $i++) { 
        $num = $line[$i];
        $len = 5 * $num;
        echo $board5[0+$len].$board5[1+$len].$board5[2+$len].$board5[3+$len].$board5[4+$len];
    } echo "\n";

    for ($i=0; $i < strlen($line); $i++) { 
        $num = $line[$i];
        $len = 5 * $num;
        echo $board6[0+$len].$board6[1+$len].$board6[2+$len].$board6[3+$len].$board6[4+$len];
    } echo "\n";
    
}

function print_board($num) {
    global $board1, $board2, $board3, $board4, $board5, $board6;
    $len = 5 * $num;
    echo $board1[0+$len].$board1[1+$len].$board1[2+$len].$board1[3+$len].$board1[4+$len]."\n";
    echo $board2[0+$len].$board2[1+$len].$board2[2+$len].$board2[3+$len].$board2[4+$len]."\n";
    echo $board3[0+$len].$board3[1+$len].$board3[2+$len].$board3[3+$len].$board3[4+$len]."\n";
    echo $board4[0+$len].$board4[1+$len].$board4[2+$len].$board4[3+$len].$board4[4+$len]."\n";
    echo $board5[0+$len].$board5[1+$len].$board5[2+$len].$board5[3+$len].$board5[4+$len]."\n";
    echo $board6[0+$len].$board6[1+$len].$board6[2+$len].$board6[3+$len].$board6[4+$len]."\n";;
}

function clean_string($string) {
    $allowed = array('0','1','2','3','4','5','6','7','8','9'); $ws = "";
    for ($i=0; $i < strlen($string); $i++)
        if (in_array($string[$i], $allowed))
            $ws .= $string[$i];
    return $ws;
}
