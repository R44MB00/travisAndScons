<?php
function nu($numero, $default){
    if($numero>0){
        return $numero;
    }
    else{
        return $default;
    }
}



$fh = fopen($argv[1], "r");
while (!feof($fh)) {
$cadena = trim(fgets($fh));
$cadena1=explode(",",$cadena);

if(trim($cadena1[0]) != ""){
    echo nu(strpos(trim($cadena1[0]), trim($cadena1[1])),-1) . "\n";
    
}
}

?>
