using System;
using System.Collections;
using System.Linq;
class Program
{
    static ArrayList listPrimes = new ArrayList();
    static int max = 0;
    static void Main()
    {
        listPrimes.Add(2);
        string s = "";    
        for (int i = 3; i <= 1000; i++)
        {
            if (isPrime(i))
            {
                listPrimes.Add(i);
                if (i>900)
                {
                    s = i.ToString();
                    if (s[0]==s[2])
                    {
                        if (i>max) max=i;
                    }
                }
            }
        }
    Console.WriteLine(max);    
    }
    static bool isPrime(int num)
    {
        foreach (int prime in listPrimes)
        {
            if (num%prime==0)return false;
        }
        return true;
    }
    
}
