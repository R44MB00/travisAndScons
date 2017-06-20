import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class Main{
	
	private static StringBuilder output = new StringBuilder();
	private static String inputstring;
	private static String print = "";

	public static void main(String[] args) throws IOException {
		File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
        	line = line.trim(); 
        	print = "";
        	String str[] = order(line);
        	line = strJoin(str, "");
        	inputstring = line;
        	combine( 0 );
        	System.out.println(print.replaceFirst(",", ""));
        }
        buffer.close();
	}
	
	public static String strJoin(String[] aArr, String sSep) {
	    StringBuilder sbStr = new StringBuilder();
	    for (int i = 0, il = aArr.length; i < il; i++) {
	        if (i > 0)
	            sbStr.append(sSep);
	        sbStr.append(aArr[i]);
	    }
	    return sbStr.toString();
	}
	
	private static String[] order(String line){
		int indice = 0;
		String str[] = new String[line.length()];
		for (int i = 0; i < line.length(); i++) {
    		char gt = line.charAt(i);
    		for (int j = 0; j < line.length(); j++) {
				if(gt>line.charAt(j)){
        			gt = line.charAt(j);        			
        		}
			}
    		str[indice] = gt+""; 
    		line = line.replaceFirst(gt+"", "");
			indice++;
			i = -1;
    	}
		return str;
	}
	
	private static void combine(int start ){
		for( int i = start; i < inputstring.length(); ++i ){
			if(output.toString().indexOf(inputstring.charAt(i))==-1){
				output.append( inputstring.charAt(i) );
	            if(output.length()==inputstring.length())
	            	print += "," + output;
	            if ( i < inputstring.length() )
	            combine( 0);
	            output.setLength( output.length() - 1 );
			}
        }
	}

}  
