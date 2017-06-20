import java.io.*;
import java.util.*;
import java.util.Collections;

public class Main {
    public static void main (String[] args) throws IOException {
        String line;
        File file = new File(args[0]);
        ArrayList<String> not_cycle = new ArrayList<String>();
        ArrayList<String> cycle = new ArrayList<String>();
        ArrayList<String> chars = new ArrayList<String>();

        int cont = 0;
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        
        while ((line = buffer.readLine()) != null) {

            line = line.replaceAll("\\s+"," ");
            String[] ary = line.split(" ");
            for(int i = 0; i < ary.length ; i++)
            {
                for(int j = 0; j < ary.length ; j++)
                {
                    if(ary[i].equals(ary[j]))
                    {
                        not_cycle.add(String.valueOf(ary[i]));
                        cont = java.util.Collections.frequency(not_cycle, String.valueOf(ary[i]));
                        if(cont > 1)
                        {
                            cycle.add(String.valueOf(ary[i]));
                        }
                    }
                }
            }
            Set<String> toRetain = new TreeSet<String>();
            toRetain.addAll(cycle);
            Set<String> set = new LinkedHashSet<String>(cycle);
            set.retainAll(new LinkedHashSet<String>(toRetain));
            cycle = new ArrayList<String>(set);
            String prn = "";
            for(int o = 0; o < cycle.size(); o++)
            {
                prn += cycle.get(o) + " ";
                //System.out.println(cycle.get(o));
            }
            prn = prn.substring(0, prn.length()-1);
            System.out.println(prn);
            not_cycle = new ArrayList<String>();
            cycle = new ArrayList<String>();
            //chars = new ArrayList<String>();

            
        }
        
        
        

        
            
    }
}