
Module Challenge
    Sub Main()
        Dim test As String
        Using fileStream As New System.IO.StreamReader(System.Environment.GetCommandLineArgs()(1))
            Do Until fileStream.EndOfStream
                test = fileStream.ReadLine
                
                Dim sep As Char = " "
		        Dim testcase() As String = test.Trim().Split(sep)
		        Dim cadena As String = ""
		        For index As Integer = 0 To testcase.Length - 1
		            If (cadena.Length < testcase(index).Length) Then
			            cadena = testcase(index)
		            End If
	            Next
	
	            Dim cadena2 As String = ""
	            For index As Integer = 0 To cadena.Length - 1
		            Dim aux As String = ""
	                For index2 As Integer = 0 To index - 1
	                    aux = aux & "*"
                    Next
                    cadena2 = cadena2 & aux & cadena(index) & " "
                Next
                Console.WriteLine(cadena2.Trim())
            Loop
        End Using
    End Sub
End Module
