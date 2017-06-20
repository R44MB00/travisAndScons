import java.io.*;
import java.util.Map;
import java.util.HashMap;
import java.util.Arrays;
public class Main {
    public static void main (String[] args) throws IOException {
        Map<String, String[]> ancestros = new HashMap<String,String[]>();
        ancestros.put("30",new String[] {"30"});
        ancestros.put("8",new String[] {"30"});
        ancestros.put("52",new String[] {"30"});
        ancestros.put("3",new String[] {"8","30"});
        ancestros.put("20",new String[] {"8","30"});
        ancestros.put("10",new String[] {"20","8","30"});
        ancestros.put("29",new String[] {"20","8","30"});
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] l = line.split(" ");
            System.out.println(comun(ancestros.get(l[0]),ancestros.get(l[1])));
        }
    }
    
    public static String comun(String[] a,String[] b){
        for(int i=0;i<a.length;i++){
            if(Arrays.asList(b).contains(a[i]))
                return a[i];
        }
        return "";
    }
}
