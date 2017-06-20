import std.stdio;
import std.conv;
import std.string;
import std.math;
float getDistance(int x1, int y1, int x2, int y2){
	float d = sqrt(pow((to!float(x2)-to!float(x1)),2)+pow((to!float(y2)-to!float(y1)),2));
	return d ;
}
float getLowest(int[][] cords){
	float close = 0;
	for (int i = 0; i<cords.length-1; i++){
    	for (int j=i+1; j<cords.length; j++){
    		float tmpdist = getDistance(cords[i][0],cords[i][1],cords[j][0],cords[j][1]);
    		if (tmpdist < close || close == 0 )
    			close = tmpdist;
    	}
    }
    return close;
}
void main(string[] args)
{
	auto file = File(args[1]);
    auto range = file.byLine();
    int n=0;
    int count = 1;
    int[][] cords;
    float close;
    foreach (line;range){
        if (count>0 && split(strip(to!string(line))," ").length>1){
        	string[] data = split(strip(to!string(line))," ");
        	cords ~= [to!int(data[0]),to!int(data[1])];
        	count++;
        }
        else{
        	if (cords.length > 1 && n > 0){
        		close = getLowest(cords);
        		if (close < 10000)
        			writef("%.4f\n",close);
        		else
        			writeln("INFINITY");
        	}
        	n++;
        	cords = [];
        	count = 1;
        	if (strip(to!string(line)) == "0"){
        		break;
        	}
        }
    }
}
