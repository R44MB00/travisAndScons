
Module Challenge
    Sub Main()
        Dim test As String
        Using fileStream As New System.IO.StreamReader(System.Environment.GetCommandLineArgs()(1))
            Do Until fileStream.EndOfStream
                test = fileStream.ReadLine
                
            	Dim sep As Char = ","
				Dim testcase() As String = test.Trim().Split(sep)
		
				Dim menor As Integer = 99999999
		
				Dim count As Integer = 0
				Dim posx As Integer
				Dim posy As Integer
		
				While(count<testcase.Length)
					Dim countx As Integer = 0
					While(countx<testcase(count).Length)
						If(testcase(count)(countx) = "X") Then
							posx = countx
						End If
						countx = countx + 1
					End While
			
					Dim county As Integer = 0
					Dim flag As Integer = 0
					While(county<testcase(count).Length And (flag <> 1))
						If(testcase(count)(county) = "Y")Then
							posy = county
							flag = 1
						End If
						county = county + 1
					End While
					Dim compare As Integer = posy - posx - 1
					If(compare < menor) Then
						menor = compare
					End If
					count = count + 1
				End While
		
				System.Console.WriteLine(menor)    
			
            Loop
        End Using
    End Sub
End Module
