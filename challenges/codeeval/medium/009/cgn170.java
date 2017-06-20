/**
 * Created by carlos on 19/02/16.
 */

import java.io.*;
import java.util.*;
import java.util.ArrayList;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            Stack<String> pila=new Stack<String>();
            String[] lista=line.split(" ");
            for(int i=0;i<lista.length;i++){
                pila.push(lista[i]);
            }
            List<String> solution=new ArrayList<>();
            String temp="";
            while(!pila.empty()){
                solution.add(pila.pop());
                if(!pila.empty())
                    pila.pop();
            }
            for(String x:solution){
                System.out.print(x+" ");
            }
            System.out.println();
        }
    }
}
