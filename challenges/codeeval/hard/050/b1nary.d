import std.stdio;
import std.conv;
import std.string;
string[][] removeEmpty(string[][] array){
	string[][] result;
	for (int i=0; i<array.length;i++){
		if (array[i][0] != "")
			result ~= [array[i]];
	}
	return result;
}
string[][] splitString(string[][] text , int i, int j, int k, string replace){
	char[] tmp = text[i][0].dup;
	string[][] result;
	result ~= text[0..i];
	result ~= [[to!string(tmp[0..j]),"R"]];
	result ~= [[replace,"N"]];
	result ~= [[to!string(tmp[k..$]),"R"]];
	result ~= text[i+1..$];
	result = removeEmpty(result);
	return result;
}
int isInString(string text, string comp){
	char[] tmptxt = text.dup;
	char[] tmpcomp = comp.dup;
	if ( tmpcomp.length > tmptxt.length)
		return -1;
	for (int i=0;i<=tmptxt.length-tmpcomp.length;i++){
		for (int j=0; j<tmpcomp.length;j++){
			if (tmpcomp[j] != tmptxt[i+j])
				break;
			if (j == tmpcomp.length-1)
				return i;
		}
	}
	return -1;
}
string[][] checkSubs(string[][] array, string substr, string replace, int i){
	int tmp = isInString(array[i][0],substr);
	if (tmp != -1){
		array = splitString(array,i,tmp,tmp+to!int(substr.length),replace);
	}
	return array;
}
string[][] arrayShift(string[][] array){
	return array[1..$];
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        if (line.length>1){
            string[] data = split(strip(to!string(line)),";");
            string[][] text = [[data[0],"R"]];
            string[] tmp = split(data[1],",");
            string[][] replaces = new string[][] (1,2);
            replaces[0][0] = tmp[0];
            replaces[0][1] = tmp[1];
            for (int i=2;i<tmp.length-1;i=i+2){
            	replaces ~= [[tmp[i],tmp[i+1]]];
            }
            while (replaces.length>0){
            	for(int i=0;i<text.length;i++){
            		if (text[i][1] != "N"){
            			string[][] check = text.dup;
            			text = checkSubs(text,replaces[0][0],replaces[0][1],i);
            			if (check != text)
            				i=-1;
            		}
            	}
            	replaces = arrayShift(replaces);
            }
            for (int i=0;i<text.length;i++){
            	writef("%s",text[i][0]);
            }
            writef("\n");
        }
    }
}
