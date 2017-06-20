
import java.io.*;
import java.util.*;

public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] param=line.split(",");
            int size=Integer.parseInt(param[0]);
            int seq=Integer.parseInt(param[1])-1;
            List<Integer> list_result = new ArrayList<Integer>();
            List<Integer> list_people=new ArrayList<Integer>();
            int position=seq;
            for (int i=0;i<size;i++){
                list_people.add(i);
            }
            int cont=0;
            do{
                if(list_people.size()>1){
                    list_result.add(list_people.get(position));
                    list_people.remove(list_people.get(position));
                    cont++;
                    position+=seq;
                    while(position>=list_people.size()){
                        position=position-list_people.size();
                    }
                }
                else{
                    cont++;
                    list_result.add(list_people.get(0));
                }
            }while(cont<size);
            System.out.println(Arrays.toString(list_result.toArray()).replace(",","").replace("[","").replace("]",""));
        }
    }
}
