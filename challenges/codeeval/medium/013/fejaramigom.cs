namespace CodeevalChallenges
{
   public class _13_RemoveCharacters
    {

        public _13_RemoveCharacters(string text,string letters)
        {
            this.text = text;
            this.lettersToRemove = letters.ToCharArray();
        }
            

        public string text { get; private set; }
        public char[] lettersToRemove { get; private set; }

        public string RemoveChars()
        {
            string tempText = this.text;
            foreach (char rchar in this.lettersToRemove)
            {
                if (rchar != (char)32)
                 tempText = tempText.Replace(rchar.ToString(), "");
            }
            return tempText;
        }

    }
}


