
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Main {

    public static void main(String[] args) throws IOException {

        BufferedReader entrada = new BufferedReader(new FileReader(args[0]));

        String linea;

        while ((linea = entrada.readLine()) != null) {

            String[] line = linea.split(";");

            String[] words1 = line[0].split(" ");
            String[] words2 = line[0].split(" ");
            String[] nums = line[1].split(" ");
            int[] numeros = new int[nums.length + 1];

            int sum = 0;
            for (int i = 0; i < nums.length; i++) {
                numeros[i] = Integer.parseInt(nums[i]);
                sum = sum + Integer.parseInt(nums[i]);
            }
            numeros[nums.length] = ((numeros.length * (numeros.length + 1)) / 2) - sum;

            for (int i = 0; i < numeros.length; i++) {
                int pos = numeros[i] - 1;
                words2[pos] = words1[i];
            }

            String cadena = "";
            for (int i = 0; i < words2.length; i++) {
                cadena = cadena + words2[i] + " ";
            }

            System.out.println(cadena.trim());
        }
    }
}
