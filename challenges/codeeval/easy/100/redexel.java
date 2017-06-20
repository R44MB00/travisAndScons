//Alexander Botero
import java.util.Scanner;
import java.io.File;

class Main { 

	public static void main(final String... args) throws Throwable { 

		final Scanner sc = new Scanner(new File(args[0]));
		while(sc.hasNextInt()) 
			System.out.println((sc.nextInt()+1) % 2);
                sc.close();

	}

}
