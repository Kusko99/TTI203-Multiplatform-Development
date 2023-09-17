void main(List<String> arguments) {
  var tupla = ('Ana', 18, true);
  print(tupla);
  //(String, int, bool) é o tipo
  print(tupla.runtimeType);
  //contagem começa do 1
  print(tupla.$1);
  print(tupla.$2);
  print(tupla.$3);
  //erro em tempo de compilação
  //print(tupla.$4);
}
