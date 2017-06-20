x = ''
Array.prototype.unique=function(a){
  return function(){return this.filter(a)}}(function(a,b,c){return c.indexOf(a,b+1)<0
});
// n = letters, r = cant, res = string

function getCombi(vect,res,n,r){
   if(n == 0){
      x = x + res +":";
   }else{
      for(var i = 0; i < r; i++){
          getCombi(vect,res + vect[i], n-1,r);
      }
   }
}
line = "1,a";
v = line.split(",")[1].split("");
n = v.length;
r = parseInt(line.split(",")[0]);
getCombi(v,'',n,r);
console.log(x.substring(0,x.length-1).split(":").unique().join(","));
