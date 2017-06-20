import java.util.*; 
import java.io.*;

class Main {  
  //la siguiente funcion recibe un numero como parametro, va a haber un ciclo
  //que empieza desde 1 hasta el numero que se pasó en el parametro, con la variable resultado
  //junto con el ciclo se va calculando el factorial del numero pasado en el argumento.
  public static int FirstFactorial(int num) {
      
        int resultado = 1;
        for (int i = 1; i <= num; i++) {
            resultado *= i;
        }
        return resultado;
  } 
  
  public static void main (String[] args) {   
    Scanner s = new Scanner(System.in);
    System.out.print(FirstFactorial(s.nextLine())); 
  }  
}
