import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Scanner;

/*
 * Author: Miguel Palacios 
 * Description: intervals integer values are given by an input file, for each one it is printed out a set of prime numbers.
 *  
 */


class Main
{
    public static void main(String[] args) throws FileNotFoundException
    {
    	final long  MAX_VALUE = Integer.MAX_VALUE;
    	Scanner _fileinput = new Scanner(new FileReader(args[0]));
        long _maxvalue = 0;
        // flag with regards commas between number when printing out
        boolean _begin=true;
        
        while(_fileinput.hasNext())
		{
        	_begin=true;
        	_maxvalue = _fileinput.nextLong();
        	
        	if(_maxvalue > (MAX_VALUE)){
				System.out.printf("%s","out of range [ Max Value "+ Long.toString((MAX_VALUE))+"]");
			}else{
    
        	//go throug the range of possible prime numbers
        	for (int i = 2; i < _maxvalue; i++)
        	{
        		if (isPrime(i))
                {
        			if(!_begin){
            			System.out.printf("%s",",");
            		}
        			System.out.printf("%d",i);
        			_begin=false;
                }
        	}
		   }
           System.out.println();	
		}	
        _fileinput.close();
    }

    public static boolean isPrime(int _value) {
    	
    	if(_value <= 1){
    		return false;
    	}
    	short _numberofDivisor=0;
    	for(int i=1;i<=_value;i++){
    		if(_value % i == 0)
    			_numberofDivisor++;
    	}
    	
    	return _numberofDivisor == 2;
    
    }
    	
        
    	
}
