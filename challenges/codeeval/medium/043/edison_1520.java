import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class Main
{
    public static void main(String[] args) throws Exception
    {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null){
            line = line.trim();
            String[] numeros = line.split(" ");
            numeros = Arrays.copyOfRange(numeros, 1, numeros.length);
            Set<Integer> diffs = new HashSet<>();
            if (numeros.length > 1)
            {
                for (int i = 1; i < numeros.length; ++i)
                {
                    int a = Integer.valueOf(numeros[i - 1]);
                    int b = Integer.valueOf(numeros[i]);
                    int dif = 0;
                    if (a > b){dif = a - b;}
                        else {dif = b - a;}
                    if (diffs.contains(dif) || dif > numeros.length - 1 || dif == 0)
                    {
                        System.out.println("Not jolly");
                        break;
                    }
                    diffs.add(dif);
                }
                if(diffs.size()+1 == numeros.length){System.out.println("Jolly");}
            }
            else{System.out.println("Jolly");}
        }
    }
}
