import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class Main {
	
	private static StringBuilder output = new StringBuilder();
	private static String inputstring;
	private static String textstring;
	private static int cont = 0;

	public static void main(String[] args) throws IOException {
		File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
        	line = line.trim(); 
        	String str[] = line.split(",");
        	inputstring = str[0];
        	textstring = str[1];
        	subsequences(0,0);
        	System.out.println(cont);
        	cont = 0;
        }
        buffer.close();
	}

	private static void subsequences(int start, int indice) {
		for( int i = start; i < inputstring.length(); ++i ){
			if(textstring.charAt(indice)==inputstring.charAt(i)){
				output.append( inputstring.charAt(i) );
				if ( i < inputstring.length() && indice < textstring.length()-1){
					subsequences( i+1, indice+1);
				}
				if(output.toString().equals(textstring.toString())){
					cont++;
				}
				output.setLength( output.length() - 1 );
			}
		}
	}
}
