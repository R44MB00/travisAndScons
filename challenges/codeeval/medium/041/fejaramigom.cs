using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeevalChallenges
{
    public class _41_ArrayAbsurdity
    {
        public _41_ArrayAbsurdity(string line)
        {
            this.line = line;
            var parts = line.Split(';');
            this.ArraySize = Convert.ToInt32(parts.FirstOrDefault());
            this.nArray = parts.LastOrDefault().Split(',');
        }

        public string line { get; private set; }
        public int ArraySize { get; private set; }
        public string[] nArray { get; private set; }

        public string GetDuplicate()
        {
            foreach (string number in nArray)
            {
                if (nArray.Count(x => x == number) > 1) {
                    return number;
                }
            }

            return string.Empty;
        }

    }
}
