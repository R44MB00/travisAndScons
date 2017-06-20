line = line.trim().split(" ");
nw = "";
for(i in line.reverse()){
    if(i % 2 == 0){
		nw += line[i];
    }else{
        nw += " ";
    }
}
console.log(nw);
