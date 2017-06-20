import std.stdio;
import std.conv;
import std.string;
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        if (line.length>1){
        	string[] data = split(strip(to!string(line)),",");
        	char[] text = data[0].dup;
        	char[] substr = data[1].dup;
        	bool result = false;
        	for (int i=0;i<text.length;i++){
        		if (text[i] == substr[0] || substr[0] == '*'){
        			if (substr.length + i <= text.length){
        				int tmpi = i;
        				for(int j=0;j<substr.length;j++){
        					if (substr[j] == '\\')
        						j++;
        					else if (substr[j] == '*'){
        						if (j+1 < substr.length){
        							while ( text[tmpi] != ' ' && text[tmpi] != substr[j+1] && tmpi<text.length)
        								tmpi++;
        							j++;
        						}
        					}
        					if (j == substr.length-1 && (substr[j] == text[tmpi] || (substr[j] == '*' && substr[j-1] != '\\' )))
        						result = true;
        					if (substr[j] != text[tmpi] && substr[j] != '*')
        						break;
        					tmpi++;
        				}
        				if (result == true)
        					break;
        			}
        		}
        	}
        	writeln(result);
        }
    }
}
