using System.IO;


namespace CodeevalChallenges
{
   public class _26_FileSize
    {
        public _26_FileSize(string path)
        {
            this.path = Path.GetFullPath(path);
        }

        public string path { get; private set; }

        public long GetFileSize()
        {
            FileInfo fileI = new FileInfo(path);
            return fileI.Length;
        }
    }
}
