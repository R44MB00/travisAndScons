var end = "BL"[new Int8Array(Int16Array.of(1).buffer)[0]];
if (end ==="B"){
    console.log("BigEndian");
}else{
    console.log("LittleEndian");
}