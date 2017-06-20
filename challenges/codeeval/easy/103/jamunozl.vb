

Module Challenge
    Sub Main()
        Dim test As String
        Using fileStream As New System.IO.StreamReader(System.Environment.GetCommandLineArgs()(1))
            Do Until fileStream.EndOfStream
                test = fileStream.ReadLine
                Dim words() As String = Split(test, " ")
                Dim Occurrences As Integer
                Dim intCount As Integer
                Dim count As Integer = 0
                Dim finalPos As Integer = 0
                Dim compare As Integer = 100
                Dim finalResult As Integer 
                Dim word As String
                Dim pos As Integer =0
                intCount = words.length
                For Each word In words   ' empieza el loop recorriendo cada elemento del array
                    pos=pos+1 ' esto me ayuda a saber la posicion del array para imprimirlo al final
                    'Console.WriteLine("word es: {0}", word) 
                    If test.toLower.Contains(word) = True Then ' busca la letra en el string original y si la encuentra entra al condicional
                        'Console.WriteLine(word)
                        Occurrences = test.Split(word).Length -1  ' cuenta el numero de ocurrencias que se presentaron
                        'Console.WriteLine("Ocurrences es:{0}",Occurrences)
                        If word <= compare And Occurrences=1 Then ' hace una comparacion para tomarme la ocurrencia que se repita solo 1 vez y que sea del menor valor
                            finalPos = pos
                            finalResult = word
                            compare = word
                        End If
                    End If
                    If finalResult>0 And pos = intCount Then
                            
                        Console.WriteLine(finalPos)
                        'Console.WriteLine("finalResult: {0}",finalResult)
                    ElseIf  pos = intCount And finalResult>1
                        Console.WriteLine("0")
                    End If
                    
                Next
                
                'intCount = words.length
                'Console.Write(intCount)
                'Dim word As String
                'For Each word In words
                '    If words = word Then count +=1
                    'Console.WriteLine(word)
	            '    Console.WriteLine(count)
	            'Next
            Loop
        End Using
    End Sub

End Module
