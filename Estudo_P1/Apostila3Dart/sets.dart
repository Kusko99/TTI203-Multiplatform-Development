void main(List<String> arguments) {
  //ok
  var nomes = {'Ana', 'João'};
  print(nomes);
  //_Set<strings>
  print(nomes.runtimeType);

  //ok também, mas vai conter somente um "Brasil"
  var paises = {'Brasil', 'Brasil'};
  print(paises);

  //erro em tempo de compilação
  // print(nomes[0]);
  //também não dá, não existe esse operador
  // print(nomes{0});

  print(nomes.elementAt(0));

  //while comum (for e do/while também vale)
  for (int i = 0; i < nomes.length; i++) {
    print(nomes.elementAt(i));
  }
  //for each
  for (final nome in nomes) {
    print(nome);
  }

  //operação matematicas de união. intersecção e diferença
  var A = {1, 2, 3, 4, 5, 6};
  var B = {1, 3, 7};
  //1,2,3,4,5,6,7
  print(A.union(B));
  //1
  print(A.intersection(B));
  //2,4,5,6
  print(A.difference(B));
  //7
  print(B.difference(A));
  //conjunto vazio
  print(A.difference(A));
}
