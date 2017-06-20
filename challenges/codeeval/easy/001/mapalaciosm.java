
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

/*
 * Author: Miguel Palacios 
 * Description: X,Y are variables which represent divisibility, N is a limit for the sequence. All these parameters compliant with the game 
 * FuzzBuzz.  
 */

class fizzbuzz {
	
	public static void main(String[] args) throws IOException  {
	
		final short MAX_TESTCASES = 20;
		//simple buffer reader
		Scanner _fileinput = new Scanner(new FileReader(args[0]));
		//read line by line 
		while(_fileinput.hasNext())
		{
			short _X = _fileinput.nextShort();
			short _Y = _fileinput.nextShort();
			short _N = _fileinput.nextShort();
			
			
			if(_X > MAX_TESTCASES || _Y > MAX_TESTCASES){
				System.out.printf("%s","X or Y is not in a range [1, "+ Short.toString(MAX_TESTCASES)+"]");
			} else {
				for(short i=1;i<=_N;i++)
				{
					if(i%_X==0 && i%_Y==0)
					{
						System.out.printf("FB ");
					}
					else if(i%_X==0){
						System.out.printf("F ");
					}else if(i%_Y==0){
						System.out.printf("B " );
					}else{
						System.out.printf("%d ",i);
					}

				}
			}	
			System.out.println();
		}
		_fileinput.close();
	}

}
