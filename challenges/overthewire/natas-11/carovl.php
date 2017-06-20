<?php  
function xor_encrypt1($texto_cifrado,  $texto_claro) { 
 $text = $texto_cifrado;
 $outText = '';
 for($i=0;$i<strlen($text);$i++) {
  $outText .= $text[$i] ^  $texto_claro[$i % strlen( $texto_claro)]; 		
 }
 return $outText;
}

function xor_encrypt2() {   
 $text = json_encode(array( "showpassword"=>"yes", "bgcolor"=>"#ffffff"));  
 $key = "qw8J";    
 $outText = '';  
 for($i=0;$i<strlen($text);$i++) {  
  $outText .= $text[$i] ^ $key[$i % strlen($key)];  
 }  
 return $outText;  
}  

//print xor_encrypt1(base64_decode('ClVLIh4ASCsCBE8lAxMacFMZV2hdVVotEhhUJQNVAmhSRwh6QUcIaAw='),'{"showpassword":"no","bgcolor":"#ffffff"}');
print base64_encode(xor_encrypt2());  
?>
