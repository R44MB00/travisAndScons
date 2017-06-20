using System.Linq;

namespace CodeevalChallenges
{
    public class _12_FirstNotRepeatedCharacter
    {
        public _12_FirstNotRepeatedCharacter(string word)
        {
            this.Word = word;
            this.WordChars = word.ToCharArray();
        }

        public string Word { get; private set; }
        public char[] WordChars { get; private set; }

        public string FirstNotRepeatedCharacter()
        {
            int count;
            foreach (char letter in WordChars)
            {
                count = Word.Count(w => w == letter);
                if (count == 1)
                {
                    return letter.ToString();
                }

            }
            return "";
        }
    }
}
