void main() {
  //if sem else (lembre-se do efeito das chaves)
  const idade = 19;
  if (idade > 18) print('Pode dirigir'); //dentro do if
  print('Até logo'); //fora do if
  const teste = true;
  if (teste == true) print("GOKU"); //dentro do if
  print("VEDITA"); //fora do if
  //if/esle
  const nome = "Ana";
  if (nome.startsWith('A'))
    print('O nome começa com A');
  else
    print('O nome não começa com A');
  //também pode usar chaves (só no if, só no else, ou em ambos, você escolhe)
  if (nome.startsWith('A')) {
    print('O nome começa com A');
  } else {
    print('O nome não começa com A');
  }
  //if/else encadeado
  const nota = 10;
  if (nota >= 9)
    print('A');
  else if (nota >= 7)
    print("B");
  else if (nota >= 5)
    print('C');
  else
    print('R');

  //if/else aninhado
  const numero = 18;
  if (numero % 2 == 0) {
    print("É par");
    if (numero % 4 == 0)
      print("Divisível por 4");
    else
      print("Não é divisível por 4");
  } else {
    print("É ímpar");
    if (numero % 3 == 0) {
      print("Divisível por 3 também");
    } else {
      print("Não é divisível por três");
    }
  }

  //switch case

  int nota_switch = 9;
  switch (nota_switch) {
    case 10:
      print('A');
      break;
    case 9:
    //cláusula case vazia, sem break implicito, fall-through acontece
    case (8):
      print('B');
      break;
    case (7):
      print('C'); //break implicito
    case (6):
      print('D'); //break implicito
    case (5):
      print('E'); //break implicito
    default:
      print('R'); //break implicito
  }
  nota_switch = 8;
  switch (nota_switch) {
    case 10 || 9:
      print('A');
    case 8:
      print('B');
    case 7:
      print('C');
    case 6:
      print('D');
    case 5:
      print('E');
    default:
      print('R');
  }
  double outraNota = 9.7;
  switch (outraNota) {
    case > 9 && <= 10:
      print('A');
    case > 8 && <= 9:
      print('B');
    case > 7 && <= 8:
      print('C');
    case > 6 && <= 7:
      print('D');
    case > 5 && <= 6:
      print('E');
    default:
      print('R');
  }
  //switch case com listas
  var frutas = ['banana', 'laranja'];
  switch (frutas) {
    case ['banana', 'laranja']:
      print('banana e laranja');
    case ['banana', 'maçã']:
      print('banana e maça');
    default:
      print('não sei');
  }
  //switch expression
  var mediaFinal = 5;
  final conceito = switch (mediaFinal) {
    10 || 9 => 'A',
    8 => 'B',
    7 => 'C',
    6 => 'D',
    5 => 'E',
    _ => 'R' //faz o papel do default
  };
  print(conceito);
}
