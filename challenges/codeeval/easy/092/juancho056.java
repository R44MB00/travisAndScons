import java.io.*;

public class Main
{
    public static void main (String[] args)
            throws IOException
    {
        File file = new File(args[0]);
        BufferedReader in = new BufferedReader(new FileReader(file));
        String line;

        while ((line = in.readLine()) != null) { //Lee la linea 
            line = line.trim(); 
            String[] lineArray = line.split(" ");
            System.out.println(lineArray[lineArray.length-2]); // Se especifica como -2 por que los ciclos van hasta n-1, n-2 es la penultima
        }
    }

}
