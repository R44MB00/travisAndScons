import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            System.out.println(wordToDigit(line));
        }
    }
    public static String wordToDigit(String givenString) {
        givenString = givenString + ";";
        
        givenString = givenString.replace("zero;", "0");
        givenString = givenString.replace("one;", "1");
        givenString = givenString.replace("two;", "2");
        givenString = givenString.replace("three;", "3");
        givenString = givenString.replace("four;", "4");
        givenString = givenString.replace("five;", "5");
        givenString = givenString.replace("six;", "6");
        givenString = givenString.replace("seven;", "7");
        givenString = givenString.replace("eight;", "8");
        givenString = givenString.replace("nine;", "9");
        return givenString;

    }  
}
