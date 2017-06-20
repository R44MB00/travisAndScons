
import java.io.*;
import java.util.*;

import javax.script.ScriptException;

public class Main {

    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader("C:\\Users\\smunoz\\Desktop\\test.txt"));
        String line;
        int blackSpot;
        String [] temp;
        
        ArrayList<String> names = new ArrayList<String>();
        while ((line = buffer.readLine()) != null) {
            names.clear();
            line = line.trim();
            
            temp = line.split(" ");
            blackSpot = Integer.parseInt(temp[temp.length - 1]);
            for (int i = 0; i < temp.length; i++) {
                if(temp[i].length() > 2){
                    names.add(temp[i]);
                } 
            }
                ArrayList<String> x = names;

               while (x.size() >= 2) {
                   x = whoHasTheBlockSpot(x, blackSpot);
            }
            
            System.out.println(x.toString().replace("[","").replace("]",""));
        }
    }
    
    public static ArrayList<String> whoHasTheBlockSpot(ArrayList<String> names,int n){
       int c = 0;
       while(c < n){
           for (int i = 0; i < names.size(); i++) {
               
               c++;
               if(c == n){
                   names.remove(i);
                   break;
               }
           }
       }
        return names;
    }
}
