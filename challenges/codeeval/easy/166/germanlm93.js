
function deltaTime(line){
	i = line.split(" ")[0].split(":");
	f = line.split(" ")[1].split(":");
	aux1 = parseInt(i[0])*60*60 + parseInt(i[1])*60 + parseInt(i[2]);
	aux2 = parseInt(f[0])*60*60 + parseInt(f[1])*60 + parseInt(f[2]);
	tota = Math.abs(aux1-aux2);
	h = parseInt(tota/ 3600);
	canth =  tota - tota/ 3600; //sin horas
	m = parseInt(tota/60) % 60; 
	cantm =  tota - tota/60 % 60; //sin minutos
	s = Math.abs(tota - 3600*h - 60*m);
	h = ((h+"").length <= 1)?"0"+h:h;
	m = ((m+"").length <= 1)?"0"+m:m;
	s = ((s+"").length <= 1)?"0"+s:s;
	solution = h + ":" + m + ":" + s;
	console.log(solution);
}
line = "14:31:45 14:46:56";
deltaTime(line);

