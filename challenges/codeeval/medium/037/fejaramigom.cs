using System.IO;
using System.Linq;

namespace CodeevalChallenges
{
    public class _37_Pangrams
    {

        public _37_Pangrams(string text)
        {
            this.text = text.ToLower();
        }

        public string text { get; private set; }

        public char[] missingLetters()
        {
            int textLength = this.text.Length;

            char[] letters = new char[textLength];
            using (StringReader sr = new StringReader(this.text))
            {
                sr.Read(letters, 0, textLength);
            }

            int[] textCharCodes = (from i in letters select (int)i).ToArray();
            int[] alphabetCodes = Enumerable.Range(97, 26).Select(x => x).ToArray();

            return (from i in alphabetCodes where !textCharCodes.Contains(i) select (char)i).OrderBy(i=> i).ToArray();

        }
    }
}
