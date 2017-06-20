import java.io.*;
public class Main {
	public static void main (String[] args) throws IOException {
		for (int x=1; x<=12; x++){
			System.out.print(x);
			for (int y=2; y<=12 ; y++){
				if (x*y >= 10){
					if (x*y >= 100){
						System.out.print(" "+x*y);
					}
					else{
						System.out.print("  "+x*y);
					}
				}
				else{
					System.out.print("   "+x*y);
				}
			}
			System.out.println();
		}
	}
}