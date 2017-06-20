using System;
using System.IO;
using System.Collections;
using System.Collections.Generic;
 
 
class Test
{
    static void Main(string[] args)
	{
		using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
			String test=line;
			String[] test_list=test.Split('|');
			int iterations=int.Parse(test_list[1]);
			String[] test_order_string=test_list[0].Split(' ');
			int[] test_order=new int[test_order_string.Length-1];
			for (int i=0;i<test_order.Length;i++){
				test_order[i]=int.Parse(test_order_string[i]);
			}
			
			int ban=0;
			int count=0;
			int a=0;
			int b=0;
			int n_i=0;
			while(ban!=1){
				count=0;
				//Comprobar que esta ordenado
			/*	for (int i=0;i<test_order.Length;i++){
					System.Console.Write(test_order[i]+" ");

				}
				System.Console.WriteLine(" ");
	*/
				if(iterations==n_i){
					System.Console.WriteLine(String.Join(" ",test_order));
					break;
				}
				for (int i=0;i<test_order.Length;i++){
					for (int j=i+1;j<test_order.Length;j++){
					if(test_order[i]>test_order[j]){
						count+=1;						
						}
					}	
				}
				if(count==0){
					ban=1;
					break;					
				}
				else{
					for (int i=0;i<test_order.Length;i++){
						if(test_order[i]>test_order[i+1]){
							a=test_order[i];
							b=test_order[i+1];
							test_order[i]=b;
							test_order[i+1]=a;
							n_i+=1;
							break;
						}						
					}
					
				}
				
			}
		
			/*for (int i=0;i<test_order.Length;i++){
					System.Console.WriteLine(test_order[i]);

			}*/
		}
	}
}
