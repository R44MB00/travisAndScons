line = "10";
bnry = parseInt(line).toString(2).split("").sort().reverse();
indx = bnry.lastIndexOf("1");
ones = bnry.join("").substr(0,indx).length+1;


bnry = parseInt(line).toString(2).split("1").length -1
console.log(parseInt(line).toString(2).split("1").length -1);
