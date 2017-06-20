/*Alexander Botero 

*/

import java.io.File;
import java.util.Scanner;
import java.lang.reflect.Method;

class Main {

	private static int[] board = new int[256*256];

	private static void SetRow(int[] param) {
		int i = param[0];
		int x = param[1];
		for(int index = i*256; index < (i+1)*256; index++) { 
			board[index] = x;
		}
	}

	private static void SetCol(int[] param) {
		int j = param[0];
		int x = param[1];
		for(int index = j; index < board.length; index += 256) { 
			board[index] = x;
		}
	}

	private static void QueryRow(int[] param) {
		int i = param[0];
		int sum = 0;
		for(int index = i*256; index < (i+1)*256; index++) { 
			sum += board[index];
		}
		System.out.println(sum);
	}

	private static void QueryCol(int[] param) {
		int j = param[0];
		int sum = 0;
		for(int index = j; index < board.length; index += 256) { 
			sum += board[index];
		}
		System.out.println(sum);
	}

	private static void executeQuery(String[] param) throws Throwable { 
		String method = param[0];
		int[] values = new int[param.length-1];
		for(int index = 1; index < param.length; index++) 
			values[index-1] = Integer.valueOf(param[index]);
		Method[] methods = Main.class.getDeclaredMethods();
		for(Method m : methods) {
			if(m.getName().equals(method)) { 
				m.invoke(Main.class, values);
				break;
			}
		}
	}

	public static void main(String... args) throws Throwable {

                final Scanner scanner = new Scanner(new File(args[0]));

		while(scanner.hasNext()) { 
			String full = scanner.nextLine();
			String[] splitted = full.split(" ");
			executeQuery(splitted);
		}

		scanner.close();

	}

}
