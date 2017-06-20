Module Challenge
   Sub Main()
        Dim cadena, cadena1 As String
        Using fileStream As New System.IO.StreamReader(System.Environment.GetCommandLineArgs()(1))
            Do Until fileStream.EndOfStream
                cadena = fileStream.ReadLine
                cadena1=LCase(cadena)
              Console.writeLine(cadena1)
            Loop
        End Using
    End Sub
End Module
