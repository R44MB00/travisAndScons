package fluid;
import java.io.*;
/**
 *
 * @author glopez
 */
public class Main {
    
    public static void main(String[] args) {
        String line = "20";
        int tota = Integer.parseInt(line);
        int cont5 = (int)(tota/5.0);
        tota = tota - cont5*5;
        int cont3 = (int)(tota/3.0);
        tota = tota - cont3*3;
        System.out.println(cont5+cont3+tota);
    }
    
}
