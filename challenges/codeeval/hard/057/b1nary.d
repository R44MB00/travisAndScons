import std.stdio;
import std.conv;
import std.string;
import std.algorithm;
void printSpiral(string[][] matrix){
    int maxm = to!int(matrix[0].length);
    int maxn = to!int(matrix.length);
    int i=0,j=0;
    int mini=0, minj=0;
    int count = 0, total = maxm*maxn;
    while (count<total){
        while(j<maxm){
            writef("%s ",matrix[i][j]);
            count++;
            j++;
        }
        if (count>=total)
            break;
        j--;
        i++;
        while(i<maxn){
            writef("%s ",matrix[i][j]);
            count++;
            i++;
        }
        if (count>=total)
            break;
        i--;
        j--;
        while(j>=minj){
            writef("%s ",matrix[i][j]);
            count++;
            j--;
        }
        if (count>=total)
            break;
        j++;
        i--;
        mini++;
        while(i>=mini){
            writef("%s ",matrix[i][j]);
            count++;
            i--;
        }
        if (count>=total)
            break;
        i++;
        j++;
        minj++;
        maxn--;
        maxm--;
    }
    writef("\n");
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] data = split(strip(to!string(line)),";");
        int m = to!int(data[0]);
        int n = to!int(data[1]);
        string[] values = split(data[2]," ");
        string[][] matrix = new string[][] (m,n);
        int cont =0;
        for (int i=0;i<m;i++){
            for (int j=0;j<n;j++){
                matrix[i][j] = values[cont];
                cont++;
            }
        }
        printSpiral(matrix);
    }
}
