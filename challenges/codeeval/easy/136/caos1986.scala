object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  var flag=true;
  var ant=0;
  for (l <- lines) {
	if(flag){
		ant=l.indexOf('_');
		flag=false;
		println(l.replace('_','|'));
	}else if(ant==l.length()-1){
		var c=l.indexOf('C');
		var p=l.indexOf('_');
		if(c != -1 && -2 < (ant-c) && (ant-c) < 2){
			if(ant-c == 1)
				println(l.replace('C','/'));
			if(ant-c == 0)
				println(l.replace('C','|'));
			ant=c;
		}else{
			if(ant-p == 1)
				println(l.replace('_','/'));
			if(ant-p == 0)
				println(l.replace('_','|'));		
			ant=p;
		}
	}else if(ant==0){
		var c=l.indexOf('C');
		var p=l.indexOf('_');
		if(c != -1 && -2 < (ant-c) && (ant-c) < 2){
			if(ant-c == -1)
				println(l.replace('C','\\'));
			if(ant-c == 0)
				println(l.replace('C','|'));
			ant=c;
		}else{
			if(ant-p == -1)
				println(l.replace('_','\\'));
			if(ant-p == 0)
				println(l.replace('_','|'));		
			ant=p;
		}		
	}else{
		var c=l.indexOf('C');
		var p=l.indexOf('_');
		if(c != -1 && -2 < (ant-c) && (ant-c) < 2){
			if(ant-c == -1)
				println(l.replace('C','\\'));
			if(ant-c == 1)
				println(l.replace('C','/'));
			if(ant-c == 0)
				println(l.replace('C','|'));
			ant=c;
		}else{
			if(ant-p == -1)
				println(l.replace('_','\\'));
			if(ant-p == 1)
				println(l.replace('_','/'));
			if(ant-p == 0)
				println(l.replace('_','|'));		
			ant=p;
		}
	}
  } 
}
