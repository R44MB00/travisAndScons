import java.io.*;
import java.util.*; 

public class Main {
    public static void main(String[] args) throws FileNotFoundException {
		File file = new File(args[0]);
		Scanner in = new Scanner(file); // El java.util.Scanner.hasNextLine () método devuelve true si hay otra línea en la entrada de este archivo.
		
		while(in.hasNextLine()) {//Este método devuelve true si y sólo si este escáner tiene otra línea de entrada
			int num = Integer.parseInt(in.nextLine());// nexLine() forma de desplazar el puntero a la siguiente linea
			System.out.println(fibonacci(num));
		}
    }
    
    // Calcula y devuelve los numeros de la sere Fibonacci
    public static int fibonacci(int n) {
    	if (n <= 1) 
    		return n;
    	else
    		return fibonacci(n-1) + fibonacci(n-2);	
    }
}
