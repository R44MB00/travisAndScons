//Alexander Botero

import java.io.File;
import java.util.Scanner;

class Main {

        public static void main(String... args) throws Throwable {

                final Scanner sc = new Scanner(new File(args[0]));

                while(sc.hasNext()) {
                        String[] splitted = sc.nextLine().split(" ");
                        System.out.println(splitted[splitted.length-2]);
                }

             sc.close();

        }

}
