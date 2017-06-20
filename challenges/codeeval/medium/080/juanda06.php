<?php
class URL {
  public $protocol;
  public $host;
  public $port;
  public $dest;
}
function createURL($url) {
  $url_obj = new URL();
  $protocol = "";
  $host = "";
  $port = "";
  $dest = "";
  $url_parts = explode("://", $url);
  $protocol = $url_parts[0];
  $port_pattern = "/:\d{0,}/";
  if (preg_match($port_pattern, $url_parts[1], $matches) > 0) {
     $port = substr($matches[0], 1);
     if ($port == "") {
       $port = 80;
     } 
     $url_parts[1] = str_replace($matches[0],"",$url_parts[1]);
  } else {
     $port = 80;
  }
 
  $pos = strpos($url_parts[1], "/");
  
  $url_obj->host = strtolower(substr($url_parts[1], 0, $pos));
  $url_obj->dest = urlencode(urldecode(substr($url_parts[1], $pos)));
 
  $url_obj->port = $port;
  $url_obj->protocol = strtolower(protocol);
  return $url_obj;
}
function matchingURL($url1, $url2) {
  $url_obj1 = createURL($url1);
  $url_obj2 = createURL($url2);
  if ($url_obj1->host == $url_obj2->host && $url_obj1->protocol == $url_obj2->protocol && $url_obj1->port == $url_obj2->port && $url_obj1->dest == $url_obj2->dest) {
     return "True";
  } else {
     return "False";
  }
}
$fh = fopen($argv[1], "r");
while (!feof($fh)) {
  $test = trim(fgets($fh));
  if ($test != null) {
     $args = explode(";", $test);
     echo matchingURL($args[0],$args[1]) . "\n";
  }
}
fclose($fh);
?>
