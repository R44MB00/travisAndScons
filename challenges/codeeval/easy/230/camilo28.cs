using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;

namespace Application
{
	class MainClass
	{
		public static void Main (string[] args)
		{
			using (StreamReader reader = File.OpenText(args[0]))
				while (!reader.EndOfStream)
				{
					string line = reader.ReadLine();
					if (null == line)
						continue;					
					string[] list_country=line.Split('|');
					string[] array_list_uniq_team = line.Replace(" |",string.Empty).Split (' ');
					int[]  array_list_uniq_team_int = new int[array_list_uniq_team.Length];
					for(int i=0;i<array_list_uniq_team.Length;i++){
						if (array_list_uniq_team[i] != "") {
							array_list_uniq_team_int[i]=int.Parse (array_list_uniq_team[i]);
						}
					}
					array_list_uniq_team_int = array_list_uniq_team_int.Distinct().ToArray();
					Array.Sort (array_list_uniq_team_int);
					List<string> list_resul_final=new List<string>();
					List<string> list_futbol_team_by_country=new List<string>();
					string team_temp = "";

					foreach(int team in array_list_uniq_team_int){
						list_futbol_team_by_country.Clear ();
						team_temp=team.ToString()+":";
						for (int i = 0; i < list_country.Length; i++) {
							string[] array_team_by_country = list_country [i].TrimEnd().Split(' ');
							List<int> list_team_by_country_int=new List<int>();
							foreach(string team_country in array_team_by_country){
								if (team_country != "") {
									list_team_by_country_int.Add (int.Parse (team_country));
								}
							}
							if(list_team_by_country_int.Contains(team)){
								list_futbol_team_by_country.Add ((i+1).ToString());
							}
						}
						list_resul_final.Add (team_temp+string.Join(",",list_futbol_team_by_country));

					}
					System.Console.WriteLine(string.Join("; ",list_resul_final)+";");
				}
		}
	}
}
