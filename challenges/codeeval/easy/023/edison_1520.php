<?php
for($ciclo=1;$ciclo<=12;$ciclo++){
	for($ciclo2=1;$ciclo2<=12;$ciclo2++){
            $mult=$ciclo*$ciclo2;
            if($mult < 10){
               echo "   ";
               echo ($mult);
            }
            if($mult >= 100){
               echo " "; 
               echo ($mult);
            }
            if ($mult >= 10 && $mult < 100){
                echo "  ";
                echo ($mult);
            }
	}
	echo "\n";
}
?>
