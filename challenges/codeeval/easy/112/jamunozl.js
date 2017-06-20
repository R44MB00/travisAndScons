var fs  = require("fs");
fs.readFileSync("test.txt").toString().split('\n').forEach(function (line) {
    if (line != "") {
        var array = line.split(':'); //split string por ,
        var numbers = array[0].split(' ')
        numbers.pop() // quita el primer elemento del array
        position=array[1].replace(/-/g, ' ')
        position=position.replace(/,/g, '').replace('\r', '')  // quita caracteres de un string
        position=position.split(' ') // split el por espacio
        position.splice(0,1) // elimina elemento del array

        //a = parseInt(numbers[position[0]])
        //b = parseInt(numbers[position[1]])
        for (i = 0; i < position.length; i=i+2) {
        	a = parseInt(numbers[position[i]])
        	b = parseInt(numbers[position[i+1]])
        	numbers[position[i]]=b
        	numbers[position[i+1]]=a
        }

        console.log(numbers.join(" "))
    }
});
