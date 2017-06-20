<?php
$fh = fopen($argv[1], "r");
while (!feof($fh)) {
$email = trim(fgets($fh));
if(filter_var($email, FILTER_VALIDATE_EMAIL)){
    echo "true" . "\n";
}else {
    echo "false" . "\n";
}

}
?>
