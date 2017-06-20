Module Challenge
    Sub Main()
        Dim test As String
        Using fileStream As New System.IO.StreamReader(System.Environment.GetCommandLineArgs()(1))
            Do Until fileStream.EndOfStream
                test = fileStream.ReadLine
                Dim words() As String = Split(test, " ") 'Aca separo el string en espacios
'                Dim words As String() = test.Split(New Char() {" "c})
            	Dim word As String
            	Dim symbol As String
            	Dim longestWord As String
            	Dim int As Integer = 0
            	
                For Each word In words
	                
	                If Len(word) > int Then
	                    int=Len(word)
	                    longestWord = word 
	                End If
	            Next
	            
 	            If Len(longestWord)>1 Then
 	                For value As Integer = 0 To Len(longestWord)-1
                        Dim middle1 As Char = longestWord(value)' tomo solo un caracter de la palabra
                        Dim myAL As New String("*", value+1)
                        Console.Write(middle1)'este comando me imprime en la misma linea                   
                        If value < Len(longestWord)-1 Then
                            Console.Write(" "+myAL)
                        End If
                    Next
 	            Else
 	                Console.Write(longestWord)
 	            End If
 	            Console.WriteLine()' me crea una nueva linea

            Loop
        End Using
    End Sub
End Module
