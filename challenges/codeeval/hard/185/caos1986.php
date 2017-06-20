<?php
$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
	if(empty($test))
		break;
	$arreglo = explode("|",trim(substr($test,1,strlen(trim($test))-1)));
	$arreglo=array_diff($arreglo,array(""));
	$f=$arreglo[0];
	$con=0;
	$ban=array();
	
	while (list($key, $value) = each($arreglo)) {
		//echo substr($value,1)."==".substr($f,0,strlen($value))."\n";
		if(substr($value,1)==substr($f,0,strlen($value)-1) && !in_array($value,$ban)){
			$ban[$con]=$value;
			$con++;			
			$f = substr($value,0,1).$f;
			reset($arreglo);
		}
	}	
	while (list($key, $value) = each($arreglo)) {
		if(substr($f,-(strlen($value)-1))==substr($value,0,strlen($value)-1) && !in_array($value,$ban)){
			$ban[$con]=$value;
			$con++;
			$f = $f.substr($value,-1);
			reset($arreglo);
		}
	}

	echo $f."\n";
}
?>
