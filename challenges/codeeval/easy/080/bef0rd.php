<?php

function compareURL($u, $v) {
    $r = "False";
    if (strtolower($u['scheme']) === strtolower($v['scheme'])) {
        if (strtolower($u['host']) === strtolower($v['host'])) {
            if (array_key_exists("port", $u)) {
                if (array_key_exists("port", $v)) {
                    if ($u['port'] != $v['port']) {
                            return $r;
                    } 
                } else {
                    if ($u['port'] != "80") {
                        return $r;
                    }
                }
            } else {
                if (array_key_exists("port", $v)) {
                    if ($v['port'] != "80") {
                        return $r;
                    }
                }
            }
        }
    }
    if (array_key_exists("path", $v)) {
        if (array_key_exists("path", $u)) {        
            if (urldecode($v['path']) == urldecode($u['path'])) {
                $r = "True";
            }
        }
    } else {
        if (!array_key_exists("path", $u)) { 
            $r = "True";
        }
    }
    
    return $r;
    
}

$fh = fopen($argv[1], "r");
while (true) {
	$test = fgets($fh);
    $test = trim($test);
	if ($test == "") break;
    $urls = split(";", $test);
    $url1 = parse_url($urls[0]);
    $url2 = parse_url($urls[1]);
    print compareURL($url1, $url2).PHP_EOL;
}
