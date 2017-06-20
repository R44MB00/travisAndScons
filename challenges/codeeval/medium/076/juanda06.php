<?
function isRotation($str, $test) {
  $pos = strpos($test, $str[0]);
  if ($pos == "") {
    return "False";
  }
  $new_str = substr($test, $pos) . substr($test, 0, $pos);
  if ($new_str == $str) {
    return "True";
  } else {
    return "False";
  }
}
$fh = fopen($argv[1], "r");
while (!feof($fh)) {
  $test = trim(fgets($fh));
  if ($test != "") {
    $args = explode(",", $test);
    echo isRotation($args[0], $args[1]) . "\n";
  }
}
fclose($fh);
?>
