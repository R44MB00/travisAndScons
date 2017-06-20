using System.Collections;
using System.Linq;

namespace CodeevalChallenges
{
    public class _16_NumberOfOnes
    {
        public _16_NumberOfOnes(int number)
        {
            BitArray bAnumber = new BitArray(new int[] { number });
            bits = new bool[bAnumber.Length];
            bAnumber.CopyTo(bits, 0);
        }

        public int Number { get; private set; }
        public bool[] bits { get; private set; }

        public int NumberOfOnes()
        {
            return bits.Count(x => x);
        }
    }
}
