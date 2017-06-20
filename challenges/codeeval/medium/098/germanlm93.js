line = "Center: (5.05, -11); Radius: 21.2; Point: (-31, -45)";
centerX = parseFloat(line.split(";")[0].split("(")[1].split(",")[0]);
centerY = parseFloat(line.split(";")[0].split("(")[1].split(",")[1].trim().split(")")[0]);
radius  = parseFloat(line.split(";")[1].trim().split(": ")[1]);
pointX  = parseFloat(line.split(";")[2].split("(")[1].split(",")[0]);
pointY  = parseFloat(line.split(";")[2].split("(")[1].split(",")[1].trim().split(")")[0]);

resx = false;
resy = false;
if(pointX>=0){ 
   resx = centerX + radius > pointX;
}else{
   resx = centerX - radius < pointX;
}
if(pointY>=0){ 
   resy = centerY + radius > pointY;
}else{
   resy = centerY - radius < pointY;
}
console.log(resx && resy);
