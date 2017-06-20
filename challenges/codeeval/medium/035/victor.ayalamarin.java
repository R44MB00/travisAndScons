
package codeevalmedium;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author VICTOR
 */
public class EmailValido {
    public static void main(String[] args) throws FileNotFoundException {
        String linea, eleLin;
        String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
        File file = new File(ruta);
        //File file = new File(args[0]);
        try (Scanner leeArc = new Scanner(file)) {
           while (leeArc.hasNext()){
                linea=leeArc.nextLine().trim();
                Pattern email =Pattern.compile("^[\\w-]+(\\.[\\w-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
                Matcher busEma = email.matcher(linea);
                System.out.println(busEma.find());
                }
           leeArc.close();
           }
        }
    }
