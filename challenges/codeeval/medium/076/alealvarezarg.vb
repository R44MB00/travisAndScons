
Module Challenge
    Sub Main()
        Dim test As String
        Using fileStream As New System.IO.StreamReader(System.Environment.GetCommandLineArgs()(1))
            Do Until fileStream.EndOfStream
                test = fileStream.ReadLine
                
            	Dim sep As Char = ","
				Dim testcase() As String = test.Trim().Split(sep)
		
				Dim word1 As String = testcase(0)
				Dim word2 As String = testcase(1)
		
				Dim findit As Integer = 0
				Dim flag As Integer = 0
				Dim count As Integer = 0
				While(count<word1.Length)
					Dim sub1 As String = word2.Substring(0,count)
					Dim sub2 As String = word2.Substring(count)
					Dim compare As String = sub2 & sub1
					If(compare = word1)Then
						findit = 1
					End If
					count = count + 1
				End While
		
				If(findit = 1)Then
					System.Console.WriteLine("True")
				Else
					System.Console.WriteLine("False")
				End If  
			
            Loop
        End Using
    End Sub
End Module
