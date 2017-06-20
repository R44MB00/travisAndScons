import std.stdio;
import std.conv;
import std.string;
int[][] modRights(string action, string userid, string fileid, int[][] rights){
    int uid = getid(userid) - 1;
    int fid = getid(fileid) - 1;
    if (action == "read"){
        rights[uid][fid] = 4;
        return rights;
    }
    if (action == "write"){
        rights[uid][fid] = 2;
        return rights;
    }
    if (action == "grant"){
        rights[uid][fid] = 1;
        return rights;
    }
    return rights;
}
int getid(string user){
    char[] tmp = user.dup;
    return to!int(tmp[5])-48;
}
bool canExecute(string task, int[][] rights){
    string[] taskparts = split(task,"=>");
    int uid = getid(taskparts[0]) - 1;
    int fid = getid(taskparts[1]) - 1;
    if (taskparts[2] == "grant" && (rights[uid][fid] == 1 || rights[uid][fid] == 3 || rights[uid][fid] == 5 || rights[uid][fid] == 7 ))
        return true;
    if (taskparts[2] == "read" && (rights[uid][fid] == 4 || rights[uid][fid] == 5 || rights[uid][fid] == 6 || rights[uid][fid] == 7 ))
        return true;
    if (taskparts[2] == "write" && (rights[uid][fid] == 2 || rights[uid][fid] == 3 || rights[uid][fid] == 6 || rights[uid][fid] == 7 ))
        return true;
    return false;
}
bool parseTask(string task, int[][] rights){
    string[] taskparts = split(task,"=>");
    if (taskparts.length > 3){
        string tmp;
        tmp = taskparts[0] ~ "=>" ~ taskparts[1] ~ "=>" ~ taskparts[2];
        if (parseTask(tmp,rights)){
            rights = modRights(taskparts[3],taskparts[4],taskparts[1],rights[][]);
            return true;
        }
    }
    else{
        if (canExecute(task,rights))
            return true;
    }
    return false;
}

void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] data = split(strip(to!string(line))," ");
        int[][] rightstable = [[7,3,0] , [6,2,4] , [5,1,5] , [3,7,1] , [6,0,2] , [4,2,6] ];
        bool result = true;
        for (int i=0;i<data.length;i++){
            if (!parseTask(data[i],rightstable)){
                result = false;
                break;
            }
        }
        if (result == true)
            writeln("True");
        else
            writeln("False");
    }
}
