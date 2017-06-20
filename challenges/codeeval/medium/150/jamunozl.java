
import java.io.*;
public class RomanandArabic {
    public static void main (String[] args) throws IOException {
        File file = new File("test.txt");
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            int valor=0;
            //int valor = Integer.parseInt(minFunction("M")); 
            //String a_letter = Character.toString(line.charAt(0));
            //int valor = Integer.parseInt(a_letter);
            int initial=0;
            for (int i=0; i < line.length()-1; i=i+2) {  
            	if(i<line.length()-3){
                //System.out.println( i); 
                //System.out.println( line.charAt(i+3)); 
            		String a_letter = Character.toString(line.charAt(i));	
                //System.out.println("a_letter " + a_letter);
            		String r_letter = Character.toString(line.charAt(i+1));
                //System.out.println("r_letter " + r_letter);	
            		String rr_letter= Character.toString(line.charAt(i+3));
                //System.out.println("rr_letter " + rr_letter); 
            		int numberR= Integer.parseInt(minFunction(rr_letter));
                //System.out.println("numberR " + numberR); 
                //System.out.println("r_letter " +minFunction( r_letter));
            		if (numberR<=Integer.parseInt(minFunction(r_letter))) {
            			valor = valor+ Integer.parseInt(a_letter)* Integer.parseInt(minFunction(r_letter)); 
                  //System.out.println(valor);
            		}else{
            			valor = valor- Integer.parseInt(a_letter)* Integer.parseInt(minFunction(r_letter)); 
            		  //System.out.println(valor);
                }
            	}else{
                String a_letter = Character.toString(line.charAt(i));
                String r_letter = Character.toString(line.charAt(i+1));
                valor = valor+ Integer.parseInt(a_letter)* Integer.parseInt(minFunction(r_letter)); 
              }

            }
            System.out.println(valor); 
        }
    }
    public static String minFunction(String n2) {
    		
   		if(n2.equals("M")){
   			n2="1000";
   		}else if(n2.equals("D")){
   			n2="500";
   		}else if(n2.equals("C")){
   			n2="100";
   		}else if(n2.equals("L")){
   			n2="50";
   		}else if(n2.equals("X")){
   			n2="10";
   		}else if(n2.equals("V")){
   			n2="5";
   		}else if(n2.equals("I")){
   			n2="1";
   		}else{
   			System.out.println("error de RomanandArabic");
   			n2="0";
   		}

   	return n2; 
}
}
