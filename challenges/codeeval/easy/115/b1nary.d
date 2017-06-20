import std.stdio;
import std.array;
import std.conv;
import std.string;
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
    	
    	string[] values = split(strip(to!string(line)),",");
    	string[] numbers;
        string[] words;
        foreach (i;values){
        	int value;
    	    try{
    	    	value = to!int(i);
    	    	string[] tmp = numbers ~ [i];
    	    	numbers = tmp;
    	    }
    	    catch {
    	    	string[] tmp = words~ [i];
    	    	words = tmp;
    	    }
    	}
    	for(int i=0; i<words.length;i++){
    		if (i == words.length-1){
    			writef("%s",words[i]);
    			if(numbers.length != 0)
    				writef("|");
    		}
    		else
    			writef("%s,",words[i]);
    	}
    	for(int i=0;i<numbers.length;i++){
    		if (i == numbers.length-1)
    			writef("%s",numbers[i]);
    		else
    			writef("%s,",numbers[i]);
    	}
    	writef("\n");
    }
}
