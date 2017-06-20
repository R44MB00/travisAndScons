/**
 * Created by carlos on 2/03/16.
 */
import java.io.*;
import java.util.*;
public class Main {

    static Hashtable<String,String> numbers;
    static Hashtable<String,String> large_numbers;

    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        numbers=new Hashtable<String,String>();
        numbers.put("1","One");
        numbers.put("2","Two");
        numbers.put("3","Three");
        numbers.put("4","Four");
        numbers.put("5","Five");
        numbers.put("6","Six");
        numbers.put("7","Seven");
        numbers.put("8","Eight");
        numbers.put("9","Nine");
        numbers.put("10","Ten");
        numbers.put("11","Eleven");
        numbers.put("12","twelve");
        numbers.put("13","Thirteen");
        numbers.put("14","Fourteen");
        numbers.put("15","Fifteen");
        numbers.put("16","Sixteen");
        numbers.put("17","Seventeen");
        numbers.put("18","Eighteen");
        numbers.put("19","Nineteen");
        numbers.put("20","Twenty");
        numbers.put("30","Thirty");
        numbers.put("40","Forty");
        numbers.put("50","Fifty");
        numbers.put("60","Sixty");
        numbers.put("70","Seventy");
        numbers.put("80","Eighty");
        numbers.put("90","Ninety");

        large_numbers=new Hashtable<String,String>();

        large_numbers.put("3","Hundred");
        large_numbers.put("4","Thousand");
        large_numbers.put("7","Millon");
        large_numbers.put("10","Billon");

        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            //System.out.print("Numero: "+line+" ----- Texto: ");
            NumberToText(line);
            System.out.print("Dollars\n");

        }
    }
    public static void NumberToText(String number){
        if(number.trim().compareTo("0")==0) {
            System.out.print("");
            return;
        }
        else{
            if(number.charAt(0)=='0')  {
                NumberToText(number.substring(1, number.length()));
                return;
            }
            String size=Integer.toString(number.length());
            switch (size) {
                case "1":
                    System.out.print(numbers.get(number));
                    break;
                case "2":
                    System.out.print(numbers.get(String.valueOf(number.charAt(0)) + "0"));
                    NumberToText(number.substring(1, number.length()));
                    break;
                case "3":
                    System.out.print(numbers.get(String.valueOf(number.charAt(0))) + large_numbers.get(size));
                    NumberToText(number.substring(1, number.length()));
                    break;
                case "4":
                    System.out.print(numbers.get(String.valueOf(number.charAt(0))) + large_numbers.get(size));
                    NumberToText(number.substring(1, number.length()));
                    break;
                case "5":
                    NumberToText(number.substring(0, 2));
                    System.out.print(large_numbers.get("4"));
                    NumberToText(number.substring(2, number.length()));
                    break;
                case "6":
                    NumberToText(number.substring(0, 3));
                    System.out.print(large_numbers.get("4"));
                    NumberToText(number.substring(3, number.length()));
                    break;
                case "7":
                    System.out.print(numbers.get(String.valueOf(number.charAt(0))) + large_numbers.get(size));
                    NumberToText(number.substring(1, number.length()));
                    break;
                case "8":
                    NumberToText(number.substring(0, 2));
                    System.out.print(large_numbers.get("7"));
                    NumberToText(number.substring(2, number.length()));
                    break;
                case "9":
                    NumberToText(number.substring(0, 3));
                    System.out.print(large_numbers.get("7"));
                    NumberToText(number.substring(3, number.length()));
                    break;
                case "10":
                    System.out.print(numbers.get(String.valueOf(number.charAt(0))) + large_numbers.get(size));
                    NumberToText(number.substring(1, number.length()));
                    break;
            }
        }
    }
}
