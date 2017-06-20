

Imports System.Math
Imports System.Array

Module Challenge
    Sub Main()
        Dim test As String
        Using fileStream As New System.IO.StreamReader(System.Environment.GetCommandLineArgs()(1))
            Do Until fileStream.EndOfStream
                test = fileStream.ReadLine
                
                Dim sep As Char = ","
		
		        Dim testcase() As String = test.Split(sep)
		
		        Dim sep1 As Char = "("
		        Dim sep2 As Char = ")"
		
		        Dim x1  As Integer = Integer.Parse(testcase(0).Split(sep1)(1))
		        Dim y1 As Integer = Integer.Parse(testcase(1).Split(sep2)(0))
		        Dim x2 As Integer = Integer.Parse(testcase(2).Split(sep1)(1))
		        Dim y2 As Integer = Integer.Parse(testcase(3).Split(sep2)(0))
		        Dim x3 As Integer = Integer.Parse(testcase(4).Split(sep1)(1))
		        Dim y3 As Integer = Integer.Parse(testcase(5).Split(sep2)(0))
		        Dim x4 As Integer = Integer.Parse(testcase(6).Split(sep1)(1))
		        Dim y4 As Integer = Integer.Parse(testcase(7).Split(sep2)(0))
		
		        Dim x12 As Double = Sqrt((x1 - x2)*(x1 - x2) + (y1 - y2)*(y1 - y2))
		        Dim x13 As Double = Sqrt((x1 - x3)*(x1 - x3) + (y1 - y3)*(y1 - y3))
		        Dim x14 As Double = Sqrt((x1 - x4)*(x1 - x4) + (y1 - y4)*(y1 - y4))
		        Dim x23 As Double = Sqrt((x2 - x3)*(x2 - x3) + (y2 - y3)*(y2 - y3))
		        Dim x24 As Double = Sqrt((x2 - x4)*(x2 - x4) + (y2 - y4)*(y2 - y4))
		        Dim x34 As Double = Sqrt((x3 - x4)*(x3 - x4) + (y3 - y4)*(y3 - y4))
		
		        Dim arr() As Double = {x12,x13,x14,x23,x24,x34}
		        Sort(arr)
		
		        Dim count As Integer = 0
		        Dim acum As Integer = 1
		        While(count<5)
			        If(arr(count) <> arr(count+1))Then
				        acum = acum + 1
			        End If
			        count = count + 1
		        End While
		
		        If(acum <> 2)Then
			        System.Console.WriteLine("false")
		        Else
			        System.Console.WriteLine("true")
		        End If
            
            Loop
        End Using
    End Sub
End Module
