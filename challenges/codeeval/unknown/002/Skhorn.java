import java.io.*;
import java.util.*;
import java.util.Collections;

public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        int n = 0;
        int i = 0;
        int j = 0;
        int may = 0;
        int men = 0;
        ArrayList<String> words = new ArrayList<String>();
        ArrayList<Integer> list = new ArrayList<Integer>();
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            if(i == 0)
            {
                n = Integer.valueOf(line);
                i++;
                //System.out.println(n);
            }
            else
            {
                words.add(line);
            }

            list.add(line.length());
        }
        Collections.sort(list);
        //System.out.println(list);
        Collections.reverse(list);
        //System.out.println(list);

        for(int o = 0; o < n; o++){
            for (j = 0; j < words.size(); j++ ) {
                String word = words.get(j);
                if(word.length() == list.get(o)){
                    System.out.println(word);
                }

            }
        }
            
    }
}