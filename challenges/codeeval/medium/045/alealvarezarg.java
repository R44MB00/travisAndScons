
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Main {

    public static boolean palindrome(String number) {
        boolean is = true;
        int count = 0;
        int tam = number.length() / 2;
        while (count < tam) {
            if (number.charAt(count) != number.charAt(number.length() - count - 1)) {
                is = false;
                break;
            }
            count = count + 1;
        }
        return is;
    }

    public static String reverseAndAdd(String number) {
        String num = number;
        int count = 0;
        while (palindrome(num) == false) {
            String reverse = new StringBuilder(num).reverse().toString();
            num = (Integer.parseInt(num) + Integer.parseInt(reverse)) + "";
            count = count + 1;
        }
        return (count + " " + num);
    }

    public static void main(String[] args) throws IOException {

        BufferedReader entrada = new BufferedReader(new FileReader(args[0]));

        String linea;

        while ((linea = entrada.readLine()) != null) {
            if (!"".equals(linea.trim())) {
                String line = linea;

                String answer = reverseAndAdd(line);
                System.out.println(answer);

            }
        }
    }
}
