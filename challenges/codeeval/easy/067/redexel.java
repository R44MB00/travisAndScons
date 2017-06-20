/* 
Alexander Botero
*/
import java.io.File;
import java.util.Scanner;

class Main {

        public static void main(String... args) throws Throwable {

                final Scanner sc = new Scanner(new File(args[0]));

                while(sc.hasNext()) 
                        System.out.println(Integer.parseInt(sc.nextLine(), 16));

                sc.close();

        }

}
