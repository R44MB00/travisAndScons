<?php
function biggest_repeating($phrase) {
  $most_used_phrase="";
  $length=0;
  for ($i = 0; $i < strlen($phrase); $i++) {
    for ($j = 0; $j < strlen($phrase)-$i+1; $j++) {
       $current_phrase = substr($phrase,$i,$j);
       if ($current_phrase != "") {
       if (strlen($current_phrase) > $length) {
          if (substr_count($phrase,$current_phrase) > 1) {
             $most_used_phrase=$current_phrase;
             $length=strlen($current_phrase);
             $ct=substr_count($phrase,$current_phrase);
          }
       }}
    }
  }
  if (str_replace(" ","",$most_used_phrase)=="") {
     $most_used_phrase="NONE";
  }
  return $most_used_phrase;
}
$phrase_list = array();
$fh = fopen($argv[1], "r");
while (!feof($fh)) {
  //$test = str_replace(" ","",trim(fgets($fh)));
  $test = trim(fgets($fh));
  if ($test != "") {
    echo biggest_repeating($test) . "\n";
  }
}
fclose($fh);
?>
