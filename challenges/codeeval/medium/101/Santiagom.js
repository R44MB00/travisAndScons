var fs  = require("fs");
//fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
fs.readFileSync('test.txt').toString().split('\n').forEach(function (line) {
    if (line != ""){
        var isSquare = false;
        line = line.trim();
        var points = line.split(",");
        var x1 = points[0].match(/\d/g).join("");
        var y1 = points[1].match(/\d/g).join("");
        
        var x2 = points[2].match(/\d/g).join("");
        var y2 = points[3].match(/\d/g).join("");
        
        var x3 = points[4].match(/\d/g).join("");
        var y3 = points[5].match(/\d/g).join("");
        
        var x4 = points[6].match(/\d/g).join("");
        var y4 = points[7].match(/\d/g).join("");
        
        var d2 = dist(x1,y1,x2,y2);
        var d3 = dist(x1,y1,x3,y3);
        var d4 = dist(x1,y1,x4,y4);
        var d = 0;
        if(d2 == d3 && 2*d2 == d4){
            d = dist(x2,y2,x4,y4);
            if(d == dist(x3,y3,x4,y4) && d == d2){
                isSquare = true;
            }
        }
        //--//
        if(d3 == d4 && 2*d3 == d2){
            d = dist(x2,y2,x3,y3);
            if(d == dist(x2,y2,x4,y4) && d == d3){
               isSquare = true;
            }
        }
        //--//
        if(d2 == d4 && 2*d2 == d3){
            d = dist(x2,y2,x3,y3);
            if(d == dist(x3,y3,x4,y4) && d == d2){
                isSquare = true;
            }
        }
        
        console.log(isSquare);
        
    }
});

function dist(x1, y1, x2, y2){
  return (x1 - x2)*(x1 - x2) + (y1 - y2)*(y1 - y2);  
}
