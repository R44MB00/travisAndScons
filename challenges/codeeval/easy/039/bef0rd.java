
import java.io.*;
import java.util.*;

public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            System.out.println(feliz(line ));
        }
    }
    
    public static int feliz(String numero) {
        ArrayList<Integer> list = esHappy(numero, new ArrayList<Integer>());
        int ultimo = list.get(list.size() - 1);
        if (ultimo == 1)
            return 1;
        return 0;
    }
	public static ArrayList<Integer> esHappy(String numero, ArrayList<Integer> oldList)
	{
        ArrayList<Integer> generados = new ArrayList<Integer>(oldList);
        if (generados.isEmpty()) {
            generados.add(Integer.parseInt(numero));
        }
        int sum = 0;
        for (int i = 0; i < numero.length(); i++) {
            int n = Character.getNumericValue(numero.charAt(i));
            sum = sum + n*n;
        }
        
        if (sum == 1 || generados.contains(sum)) {
            generados.add(sum);
            return generados;
        }
        generados.add(sum);        
        return esHappy(Integer.toString(sum), generados);
        
       
       
	}
}

