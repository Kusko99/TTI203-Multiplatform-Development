void main(){
     const nota = 10;

    //fall-through 
    switch(nota){
        case 10:
        case 9:
        print('A');
        case 8:
        print('B');
        case 7:
        print('C');
        case 6:
        print('D');
        case 5:
        print('E');
        case 4:
        print('R');
    }  

  //statement
  print("Oi");
  // var resultado = if(2>3){
  //   print("oi")
  // }

  //expresion
  var n1  = 2;

  const mediaFinal = 5;
  var conceito = switch(mediaFinal){
    10||9 => 'A',
    8 => 'B',
    7 => 'C',
    6 => 'D',
    5 => 'E',
    _ => 'R'
  };
  print(conceito);

}