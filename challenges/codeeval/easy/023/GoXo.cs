using System;
class Program
{
    static void Main()
    {
        for (int i = 1; i <= 12; i++)
        {
            if (i<10) Console.Write(" "+ i.ToString());
            if (i>=10)Console.Write(""+ i.ToString());
            for (int j = 2; j <= 12; j++)
            {
                string s = ""; 
                if (((i*j)/1   >=1)&&((i*j)/1   <10 )) s = "   " + (i*j).ToString();
                if (((i*j)/10  >=1)&&((i*j)/10  <100)) s = "  "  + (i*j).ToString();
                if ((i*j)/100 >=1) s = " " +(i*j).ToString();
                Console.Write(s);
            }
            Console.WriteLine();  
        }
    }
}
