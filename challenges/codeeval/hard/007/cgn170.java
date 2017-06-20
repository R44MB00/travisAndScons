/**
 * Created by carlos on 25/02/16.
 */
import java.io.*;
import java.util.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] array_line = line.split(" ");
            String[] array_op = new String[]{"*", "/", "+", "-"};
            Stack<String> stack_op = new Stack();
            int index = 0;
            boolean find_index = true;
            do {
                if (Arrays.asList(array_op).contains(array_line[index])) {
                    stack_op.push(array_line[index]);
                    index += 1;
                } else {
                    find_index = false;
                }
            } while (find_index);
            double result = 0;
            String op = "";
            boolean flag = true;
            String temp="";
            for (int i = index; i < array_line.length; i++) {
                if (!stack_op.isEmpty()) {
                    op = stack_op.pop();
                    temp=temp+array_line[i]+op+" ";
                    switch (op) {
                        case "*":
                            if (flag) {
                                result = Integer.parseInt(array_line[i]) * Integer.parseInt(array_line[i + 1]);
                                i++;
                                flag = false;
                            } else result = result * Integer.parseInt(array_line[i]);
                            break;
                        case "/":
                            if (flag) {
                                result = Integer.parseInt(array_line[i]) / Integer.parseInt(array_line[i + 1]);
                                i++;
                                flag = false;
                            } else result = result / Integer.parseInt(array_line[i]);

                            break;
                        case "+":
                            if (flag) {
                                result = Integer.parseInt(array_line[i]) + Integer.parseInt(array_line[i + 1]);
                                i++;
                                flag = false;
                            } else result = result + Integer.parseInt(array_line[i]);

                            break;
                        case "-":
                            if (flag) {
                                result = Integer.parseInt(array_line[i]) - Integer.parseInt(array_line[i + 1]);
                                i++;
                                flag = false;
                            } else result = result - Integer.parseInt(array_line[i]);

                            break;
                    }
                }

            }
            System.out.println((int)result);
        }
    }
}
