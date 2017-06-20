<?php

function xor_decrypt($in) {
    $text = $in;
    $outText = '';
    $ex = '{"showpassword":"no","bgcolor":"#ffffff"}';

    // Iterate through each character
    for($i=0;$i<strlen($text);$i++) {
        for($ii=0;$ii<10000;$ii++) {
            if ((ord($text[$i]) ^ $ii) == ord($ex[$i])) {
                $outText .= chr($ii);
            }
        }
    }

    return $outText;
}

function xor_encrypt($in, $key) {
    $text = $in;
    $outText = '';
    // Iterate through each character
    for($i=0;$i<strlen($text);$i++) {
    $outText .= $text[$i] ^ $key[$i % strlen($key)];
    }

    return $outText;
}


function getKey() {
    $encodedSecret = "ClVLIh4ASCsCBE8lAxMacFMZV2hdVVotEhhUJQNVAmhSEV4sFxFeaAw=";
    return substr(xor_decrypt(base64_decode($encodedSecret)), 0, 4);
}

function encodeData($data, $key) {
    return base64_encode(xor_encrypt(json_encode($data), $key));
}


$defaultdata = array( "showpassword"=>"yes", "bgcolor"=>"#f000ff");
$enx = encodeData($defaultdata, getKey());
echo $enx . "\n";

$tempdata = json_decode(xor_encrypt(base64_decode($enx), getKey()), true);


if(is_array($tempdata) && array_key_exists("showpassword", $tempdata) && array_key_exists("bgcolor", $tempdata)) {
    if (preg_match('/^#(?:[a-f\d]{6})$/i', $tempdata['bgcolor'])) {
        echo 'OKKKKKKKKK';
    }
}

