package codeeval_lettercaseporcentaje;


import java.io.*;


public class lettercase {
	
	public static void main(String[] args) throws IOException {

    		    String ruta="C:\\Users\\Manuel Toro V\\workspace\\codeeval_lettercaseporcentaje\\src\\codeeval_lettercaseporcentaje\\test"; 
				File file = new File(ruta);
				BufferedReader buffer = new BufferedReader(new FileReader(file));
    	        String line;
    	        
    	    	int count=0;
    			float pMin, pMay,total=0;
    			
    			String[] frase = new String [300];
    			
    			
    	        while ((line = buffer.readLine()) != null) {
    	             frase[count]= line;
    	             count++;

    	        }
    	        for(int i=0;i<=count-1;i++){
	            	
    	        	total=contarMinusculas(frase[i])+contarMayusculas(frase[i]);
    	        	pMin=(contarMinusculas(frase[i])*100)/total;
    	        	pMay=(contarMayusculas(frase[i])*100)/total;
    	        	System.out.printf("lowercase: "+ "%.2f",pMin);
    	        	System.out.print(" ");
    	        	System.out.printf("uppercase: "+ "%.2f",pMay);
    	        	System.out.print("\n");
	            	
	            }
    	         
    	               

	}

	public static int contarMayusculas(String cadena) {
        int n = 0;
        for (int i = 0; i < cadena.length(); i++) {
            if(cadena.charAt(i)> 64 && cadena.charAt(i)<91)
                n++;
        }
        return n;
     }	
	   public static int contarMinusculas(String cadena) {
	        int n = 0;
	        for (int i = 0; i < cadena.length(); i++) {
	            if(cadena.charAt(i)> 96 && cadena.charAt(i)<123)
	                n++;
	        }
	        return n;
	    }
	  

}
