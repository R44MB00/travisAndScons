import java.io.*;
public class Main{

    public static void main (String[] args)
            throws IOException
    {
        File file = new File(args[0]);
        BufferedReader in = new BufferedReader(new FileReader(file));
        String line;

        while ((line = in.readLine()) != null) {
            line = line.trim(); // Retira los espacios en blanco
            int n = Integer.parseInt(line);

            if (isSelfDescribing(n)) {	// llama la funcion "isSelfDescribing" y evalua el dato
                System.out.println(1);
            } else {
                System.out.println(0);
            }
        }
    }

    public static boolean isSelfDescribing(int a){
        String s = Integer.toString(a);
        for(int i = 0; i < s.length(); i++){
            String s0 = s.charAt(i) + ""; // Retorna lo que tiene la cadena en la posicion del indice i 
            int b = Integer.parseInt(s0); // número de veces que el i-ésimo dígito debe ocurrir para que sea un número auto descriptivo
            int cont = 0;
            for(int j = 0; j < s.length(); j++){
                int temp = Integer.parseInt(s.charAt(j) + "");
                if(temp == i){
                    cont++;
                }
                if (cont > b) return false;
            }
            if(cont != b) return false;
        }
        return true;
    }	
}




