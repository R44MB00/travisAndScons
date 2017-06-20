<?php
function getMax($line){
	$items = explode(" ",$line);
	$max = strlen($items[0]);
	$ind = 0;
	for($i = 1; $i < count($items) ; $i++){
		if(strlen($items[$i]) > $max){
			$max = strlen($items[$i]);
			$ind = $i;	
		}
	}
	return $items[$ind];
}

function show($item){
	$str = "";
	for($i=0;$i < strlen($item);$i++){
		$str .= chars($i).$item[$i]." ";
	}
	return substr($str,0,strlen($str)-1);
}

function chars($num){
	$str = "";
	for($i=0;$i < $num;$i++){
		$str .= "*";	
	}
	return ($num===0)?"":$str;
}

$fh = fopen($argv[1], "r");
while (!feof($fh)) {
  $test = trim(fgets($fh));
  if ($test != "") {
        $sol = show(getMax($test));
        print $sol . "\n";
    }
}
fclose($fh);
?>
