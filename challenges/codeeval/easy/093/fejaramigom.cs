using System.Linq;

namespace CodeevalChallenges
{
    public class _93_CapitalizeWords
    {
        public _93_CapitalizeWords(string words)
        {
            this.Words = words.Split(' ');
        }


        public string[] Words { get; private set; }
        public string Capitalize()
        {
            return string.Join(" ", (from i in Words select UppercaseFirst(i)).ToArray());
        }

        static string UppercaseFirst(string word)
        {
            if (string.IsNullOrEmpty(word))
            {
                return string.Empty;
            }
            
            return char.ToUpper(word[0]) + word.Substring(1);
        }
    }
}
