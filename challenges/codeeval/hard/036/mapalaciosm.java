
import java.io.*;
import java.util.*; 

/*
 * Author: Miguel Palacios 
 * Description: Message decoding using a binary customized binary alphabet, the challenge has appeared in a past ACM competition. 
 * input: A cipher txt 
 * $#**\0100000101101100011100101000
 *  
 */

public class Messagedecoding
{
	public static void main(String[] args) throws IOException
	{
			BufferedReader _fileinput = new BufferedReader(new FileReader(args[0]));
			String _strLine;
			
			while ((_strLine = _fileinput.readLine()) != null)
			{
				String _msg = _strLine.substring(Math.min(_strLine.indexOf("1"), _strLine.indexOf("0"))).trim();
				Map<String, String> binaryalphabet = encodedTobinary(_strLine.substring(0, Math.min(_strLine.indexOf("1"), _strLine.indexOf("0"))).trim());
				StringBuilder _textMessage = new StringBuilder();
				int _sgmLght = 0;
				
				while (true)
				{
					//start off reading the length of the keys
					if (_sgmLght == 0)
					{
						_sgmLght=3;
						String[] _keySequence = splitSequence(_msg, _sgmLght);
						_msg = _keySequence[1];

						if ("000".equals(_keySequence[0]))
						{
							break;
						}
						_sgmLght = Integer.parseInt(_keySequence[0], 2);
					}
					//getting the message with the key length 
					String[] values = splitSequence(_msg, _sgmLght);
					String keys = values[0];
					_msg = values[1];
					if (!keys.contains("0"))
					{
						_sgmLght = 0;
					}
					else
						_textMessage.append(binaryalphabet.get(keys));
		
				}
				System.out.println(_textMessage);
			}
			_fileinput.close();
		
	}
	// gets back a representation of the message using a binary alphabet of "keys"
	private static Map<String, String> encodedTobinary(String header)
	{
		Map<String, String> mapping = new HashMap<>();
		short _index=0;
		//go through the binary sequence and assign a binary key for each character within the header. 
		for (short length = 1; length < 8; ++length)
		{
			for (int value = 0; value < (((int) Math.pow(2, length)) - 1); ++value)
			{
				if (_index<header.length()){
					mapping.put(padding(Integer.toBinaryString(value), length), header.substring(_index, _index + 1));
					_index++;
				} else{
					break;
				}
			}
		}
		return mapping;
	}

	public static String padding(String binaryStr, short length)
	{
		String paddedString = binaryStr;
		
		while (paddedString.length() != length)
		{
			paddedString = "0" + paddedString;
		}
		
		return paddedString;
	}
	
	private static String[] splitSequence(String message, int length) throws IOException
	{
		return new String[] { message.substring(0, length), message.substring(length) };
	}
}
