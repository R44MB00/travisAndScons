
import java.io.*;
import java.util.*; 

/*
 * Author: Miguel Palacios 
 * Description: Message decoding by finding out a constant N from an ascii cipher code. 
 * input: 5 | s | 92 112 109 40 118 109 109 108 123 40 119 110 40 124 112 109 40 117 105 118 129 40 119 125 124 127 109 113 111 112 40 124 112 109 40 118 109 109 108 123 40 119 110 40 124 112 109 40 110 109 127 54 40 53 40 91 120 119 107 115
 * 
 */

public class AscciDecoding
{
	public static void main(String[] args) throws IOException
	{
		BufferedReader _fileinput = new BufferedReader(new FileReader(args[0]));
		
		String _strLine;
		
		while ((_strLine = _fileinput.readLine()) != null)
		{
				String[] _parameters= _strLine.trim().split("\\|");
				char _lastLetter = _parameters[1].trim().charAt(0);
				String[] _cipherText = _parameters[2].trim().split(" ");

				List<Short> _listOflastLetters = getConstants(_cipherText, Short.parseShort(_parameters[0].trim()));

				for (Short _lastPossible : _listOflastLetters)
				{
					StringBuilder _plainText = new StringBuilder();
					
					for (String _letter : _cipherText)
					{
						_plainText.append((char) (Short.parseShort(_letter) - (_lastPossible - _lastLetter)));
					}

					if (_plainText.toString().matches("[a-zA-Z0-9 \\.\\?!\\-]+"))
					{
						System.out.println((_plainText.toString()));
						return;
					}
				}
			}
		_fileinput.close();
	}
	
	private static List<Short> getConstants(String[] _ascciiStr, short _wrdLngth){
		
		//stores all last characters from twice repeated patterns within the cipher text
		List<Short> _possibleValues = new ArrayList<>();
		
		for (short index=0;(index+_wrdLngth)<_ascciiStr.length;index++){
			
			int _conmuter=_wrdLngth;
			
			while ((_conmuter+_wrdLngth)<_ascciiStr.length){
				
			if (_ascciiStr[index].equals(_ascciiStr[_conmuter])){
					short _match=1;
					
					while (_match<_wrdLngth){
						if (!_ascciiStr[index+_match].equals(_ascciiStr[_conmuter+_match]))
							break;
						_match++;
					}
					//found a match on twice repeated pattern
					if (_match==_wrdLngth){
						_possibleValues.add(Short.parseShort(_ascciiStr[index+_match-1]));
					}
				}
			_conmuter+=_wrdLngth;
			}
		}
		
		return _possibleValues;
	}
}
