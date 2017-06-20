using System;
using System.IO;
using System.Collections.Generic;
using System.Threading.Tasks;

class Program
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
            String[] li=line.Split(',');
            List<int> l = FindPrimesBySieveOfAtkins(Convert.ToInt32(li[1]));
            int count=0;
            for(int i=0;i<l.Count;i++){
                if(l[i]<Convert.ToInt32(li[0]))
                    continue;
                if(l[i]>Convert.ToInt32(li[1]))
                    break;
                count++;
            }
            Console.WriteLine(count);
        }
    }
    
    static List<int> FindPrimesBySieveOfAtkins(int max)
    {
    //  var isPrime = new BitArray((int)max+1, false); 
    //  Can't use BitArray because of threading issues.
        var isPrime = new bool[max + 1];
        var sqrt = (int)Math.Sqrt(max);

        Parallel.For(1, sqrt, x =>
        {
            var xx = x * x;
            for (int y = 1; y <= sqrt; y++)
            {
                var yy = y * y;
                var n = 4 * xx + yy;
                if (n <= max && (n % 12 == 1 || n % 12 == 5))
                    isPrime[n] ^= true;

                n = 3 * xx + yy;
                if (n <= max && n % 12 == 7)
                    isPrime[n] ^= true;

                n = 3 * xx - yy;
                if (x > y && n <= max && n % 12 == 11)
                    isPrime[n] ^= true;
            }
        });

        var primes = new List<int>() { 2, 3 };
        for (int n = 5; n <= sqrt; n++)
        {
            if (isPrime[n])
            {
                primes.Add(n);
                int nn = n * n;
                for (int k = nn; k <= max; k += nn)
                    isPrime[k] = false;
            }
        }

        for (int n = sqrt + 1; n <= max; n++)
            if (isPrime[n])
                primes.Add(n);

        return primes;
    }
}
