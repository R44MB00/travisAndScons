
Module Challenge
    Sub Main()
        Dim test As String
        Using fileStream As New System.IO.StreamReader(System.Environment.GetCommandLineArgs()(1))
            Do Until fileStream.EndOfStream
                test = fileStream.ReadLine
                
                Dim sep As Char = ";"
		
		        Dim testcase() As String = test.Trim().Split(sep)
                
                Dim numbers(testcase.Length - 2) As Integer
		
		        For index As Integer = 0 To (testcase.Length - 2)
		            Dim sep2 As Char = ","
		            numbers(index) = CInt(testcase(index).Trim().Split(sep2)(1))
		        Next
		        
		        Array.Sort(numbers)
		        
		        Dim cadena As String = numbers(0).ToString() & ","
		        
		        For index As Integer = 0 To (numbers.Length - 2)
		
	                cadena = cadena & Math.Abs(numbers(index) - numbers(index + 1)) & ","
                Next
		        
		        Dim sep3 As Char = ","
		        
		        Console.WriteLine(cadena.Trim(sep3))
		        
            Loop
        End Using
    End Sub
End Module
