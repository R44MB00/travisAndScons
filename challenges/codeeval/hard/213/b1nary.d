import std.stdio;
import std.conv;
import std.string;
string[][] checkArround(string[][] map, int i, int j){
map[i][j] = "#";
    if ((i-1 >= 0) && (j-1 >= 0)){
        if(map[i-1][j-1] == "o"){
            map = checkArround(map,i-1,j-1);
        }
    }
    if (i-1 >= 0){  //up
        if (map[i-1][j] == "o"){
            map = checkArround(map,i-1,j);
        }
    }
    if ((j+1 < map[0].length) && (i-1 >= 0)){
        if (map[i-1][j+1] == "o"){
            map = checkArround(map,i-1,j+1);
        }
    }
    if (j+1 < map[0].length){
        if (map[i][j+1] == "o"){
            map = checkArround(map,i,j+1);
        }
    }
    if ((i+1 < map.length) && (j+1 < map[0].length)){
        if (map[i+1][j+1] == "o"){
            map = checkArround(map,i+1,j+1);
        }
    }
    if (i+1 < map.length){
        if (map[i+1][j] == "o"){
            map = checkArround(map,i+1,j);
        }
    }
    if ((i+1 < map.length) && (j-1 >= 0)){
        if (map[i+1][j-1] == "o"){
            map = checkArround(map,i+1,j-1);
        }
    }
    if (j-1 >= 0){
        if (map[i][j-1] == "o"){
            map = checkArround(map,i,j-1);
        }
    }
    return map;
}
int countLakes(string[][] map){
    int count = 0;
    for (int i=0;i<map.length;i++){
        for(int j=0;j<map[0].length;j++){
            if (map[i][j] == "o"){
                count++;
                map = checkArround(map,i,j);
            }
        }
    }
    return count;
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] data = split(strip(to!string(line))," | ");
        string[] tmp = split(data[0]," ");
        string[][] map = new string[][](to!int(data.length),to!int(tmp.length));
        for (int i=0;i<data.length;i++){
            string[] tmp2 = split(data[i]," ");
            for (int j=0;j<tmp2.length;j++){
                map[i][j] ~= tmp2[j];
            }
        }
        writeln(countLakes(map));
    }
}
