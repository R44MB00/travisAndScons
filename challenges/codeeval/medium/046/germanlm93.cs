using System;

namespace primeNumbers.cs
{
	class MainClass
	{
		public static void Main (string[] args){
			String line = "20";
			String sol = "";
			for (Int64 j = 2; j < Int64.Parse(line); j++) {
				if (isPrime(j)==true) {
					sol += j+",";
				}
			}
			Console.WriteLine(sol.Substring(0,sol.Length-1));
		}

		public static Boolean isPrime(Int64 num){
			int con = 0;
			for (Int64 i = 2; i < num; i++) {
				if (num % i == 0) {
					con += 1;
				}
				if (con != 0) {
					break;
				}
			}
			if (con == 0) {
				return true;
			} else {
				return false;
			}
		}	
	}
}
