import java.io.*;
import java.util.*;

public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String test;
        while ((test = buffer.readLine()) != null) {
            test = test.trim();
            String[] array_test=test.split(" ");
            int place=Math.round(Integer.parseInt(array_test[0])/2);
            int[] array_test_int=new int [array_test.length-1];
            for (int i=0;i<array_test_int.length;i++){
                array_test_int[i]=Integer.parseInt(array_test[i+1]);
            }
            Arrays.sort(array_test_int);
            int sum=0;
            for (int i=0;i<place;i++){
                sum=sum+Math.abs(array_test_int[i]-array_test_int[place]);
            }
            for (int i=place+1;i<array_test_int.length;i++){
                sum=sum+Math.abs(array_test_int[i]-array_test_int[place]);
            }
            System.out.println(sum);
        }
    }
}
