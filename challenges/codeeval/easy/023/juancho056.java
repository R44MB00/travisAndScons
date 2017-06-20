import java.io.*;
public class Main {
	/**
	 * Tablas de multiplicar hasta 12*12
	 */
	public static void main (String [] args)
	{
		for (int i = 1; i <= 12; i++) {
			for (int j = 1; j <= 12; j++) {
				System.out.printf("%4d", j * i);// Alineamiento a la derecha 
			}
			System.out.println();
		}
	}
}
