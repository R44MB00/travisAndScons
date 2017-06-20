/**
 * Created by carlos on 29/02/16.
 */

import java.io.*;
import java.util.*;
import java.util.ArrayList;

public class Main {

    static List<String> list_permuta=new ArrayList();
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            permuta("",line);
            Collections.sort(list_permuta);
            System.out.println(list_permuta.toString().replace("[","").replace("]","").replace(" ",""));
            list_permuta.clear();
        }
    }
    static void permuta(String prefijo,String line){
        if(line.length()==0) {
            list_permuta.add(prefijo);
            return;
            }
        else{
            for(int i=0;i<line.length();i++){
                permuta(prefijo+line.charAt(i),line.substring(0,i)+line.substring(i+1,line.length()));
            }
        }
    }
}
