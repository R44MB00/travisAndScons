//Alexander Botero

import java.io.File;
import java.util.Scanner;

class Main {

        private static int[] unzip(String zip) {
                int[] values = new int[2];
                String[] str = zip.split(", ");
                for(int index = 0; index < str.length; index++)
                        values[index] = Integer.valueOf(str[index]);
                return values;
                
        }

        private static int len(int[] a, int[] b) {
                return (int) Math.sqrt(Math.pow(a[0]-b[0], 2) + Math.pow(a[1]-b[1], 2));
        }

        public static void main(String... args) throws Throwable {

                final Scanner sc = new Scanner(new File(args[0]));

                while(sc.hasNext()) {
                        String full = sc.nextLine();
                        String[] zip = full.substring(1, full.length()-1).split("\\) \\(");
                        int[] a = unzip(zip[0]);
                        int[] b = unzip(zip[1]);
                        System.out.println(len(a, b));
                }

                sc.close();

        }

}
