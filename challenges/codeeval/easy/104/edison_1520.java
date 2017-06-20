import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String str;
        while ((str = buffer.readLine()) != null) {
            if (str.equals("")){continue;}
            else{
                String[] cadena=str.split(";");
                String num="";
                for (int i=0;i<cadena.length;i++){
                    switch (cadena[i]){
                        case "zero": num=num+("0"); break;
                        case "one": num=num+("1"); break;
                        case "two": num=num+("2"); break;
                        case "three": num=num+("3"); break;
                        case "four": num=num+("4"); break;
                        case "five": num=num+("5"); break;
                        case "six": num=num+("6"); break;
                        case "seven": num=num+("7"); break;
                        case "eight": num=num+("8"); break;
                        case "nine": num=num+("9"); break;
                    }
                } System.out.println(num);
            }
        } 
    }
