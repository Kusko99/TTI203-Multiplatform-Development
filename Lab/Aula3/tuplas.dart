import 'dart:io';

void main() {
  //tupla ou records
  //lista imutável
  var tupla = ('Ana', 18, true);
  print(tupla);
  print(tupla.runtimeType);
  print(tupla.$1);
  print(tupla.$2);
  // print(tupla.$4);
  var nome = stdin.readLineSync();
  var tupla2 = (nome, 18);
  print(tupla);
}
