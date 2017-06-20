using System.IO;
using System;
class Text_Dollar
{
    
    public static string[] ts = new string[] {"", "One", "Two", "Three","Four","Five","Six","Seven",
                                    "Eight","Nine","Ten","Eleven","Twelve","Thirteen",
                                    "Fourteen","Fifteen","Sixteen","Seventeen","Eighteen",
                                    "Nineteen"};
    public static string[] hs = new string[] {"", "Ten","Twenty", "Thirty", "Forty","Fifty","Sixty","Seventy",
                                    "Eighty","Ninety" };
   
    static void Main(string[] args)
    {

        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            NumToDollar(line);
            Console.Write("Dollars");
            Console.WriteLine();
        }
    }

    public static void NumToDollar(string value)
    {
        int len = value.Length;
        if (value == "000") return;
        if (value == "000000") return;

        if (len <= 2)
        {
            int num = Int32.Parse(value);
            if (num <= 19) Console.Write(ts[num]);
            else 
            {
                Console.Write(hs[num/10]);
                NumToDollar(value.Substring(1,1));
            }
        } 

        if (len == 3)
        {
            string hun = value.Substring(0,1);

            if (hun != "0")
            	{
            	  NumToDollar(hun);	
            	  Console.Write("Hundred");
            	} 

            NumToDollar(value.Substring(1,2));
        }

        if ((len >= 4)&&(len <=6))
        {
            NumToDollar(value.Substring(0,len-3));
            Console.Write("Thousand");
            NumToDollar(value.Substring(len-3,3));
        }

        if ((len >= 7)&&(len <=9))
        {
            NumToDollar(value.Substring(0,len-6)); 
            Console.Write("Million");
            NumToDollar(value.Substring(len-6,6)); 

        }
    }
}