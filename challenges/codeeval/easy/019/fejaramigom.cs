using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;

namespace CodeevalChallenges
{
    public class _19_BigPositions
    {
        public _19_BigPositions(string path)
        {
            this.Path = path;
            this.nlines = new List<nline>();

            using (StreamReader reader = File.OpenText(path))
                while (!reader.EndOfStream)
                {
                    string line = reader.ReadLine();
                    string[] numbers;
                    if (null == line)
                        continue;
                    numbers = line.Split(',');
                    nlines.Add(new nline(Convert.ToInt32(numbers[0]), Convert.ToInt32(numbers[1]), Convert.ToInt32(numbers[2])));
                }
        }

        public string Path { get; private set; }
        public ICollection<nline> nlines { get; private set; }

        public class nline
        {

            public nline(int number, int position1, int position2)
            {
                this.number = number;
                this.position1 = position1-1;
                this.position2 = position2-1;
            }

            public int number { get; private set; }
            public int position1 { get; private set; }
            public int position2 { get; private set; }


            public bool bitsEqual()
            {
                if (position1 < 0 || position2 < 0)
                    return false;

                BitArray bAnumber= new BitArray(new int[] { number });

                if (bAnumber.Length < position1 || bAnumber.Length < position2)
                    return false;

                return bAnumber[position1] == bAnumber[position2];
            }

                       
        }


    }
}
