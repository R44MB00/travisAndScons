import java.io.BufferedReader;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.io.FileReader;
import java.util.TimeZone;
import java.io.File;
import java.text.DateFormat;

public class Main
{
    public static void main(String[] args) throws Exception
    {
        TimeZone.setDefault(TimeZone.getTimeZone("UTC"));
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String str;
        while ((str = buffer.readLine()) != null){
            String line = str.trim();
            String[] tiempos = line.split(" ");
            DateFormat formatter = new SimpleDateFormat("HH:mm:ss");
            Date t1 = formatter.parse(tiempos[0]);
            Date t2 = formatter.parse(tiempos[1]);
            long dif = t1.getTime() - t2.getTime();
            if (dif < 0){dif *= -1;}
            Date result = new Date(dif);
            formatter = new SimpleDateFormat("HH:mm:ss");
            System.out.println(formatter.format(result));
        }
    }
}
