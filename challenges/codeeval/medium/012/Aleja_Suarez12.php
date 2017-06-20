<?php
function NumUniq($pal){
    $aux=null;
    for ($i = 0; $i <=strlen($pal); $i++) {
         if(substr_count($pal,substr($pal, $i, 1))==1)
         {
             return substr($pal,$i,1);
         }
    }
}
$fh = fopen($argv[1], "r");
while (!feof($fh)) {
$cad = trim(fgets($fh));
if($cad!=null){
    echo NumUniq($cad) . "\n";;
}

}

?>
