Module Challenge
   Sub Main()
        Dim num As String
        Using fileStream As New System.IO.StreamReader(System.Environment.GetCommandLineArgs()(1))
            Do Until fileStream.EndOfStream
                num = fileStream.ReadLine
                if(num Mod 2=0)
              Console.writeLine("1")
                else
              Console.writeLine("0")
            Loop
        End Using
    End Sub
End Module
