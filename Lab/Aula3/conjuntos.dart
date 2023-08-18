void main() {
  //conjuntos
  //{1,2} = {2,1} = {1,1,1,1,2,2,2}
  var nomes = {'João', 'Ana'};
  print(nomes.runtimeType); //_Set<String>
  var teste = {}; //_Map
  print(teste.runtimeType);

  const nomes2 = {'Ana', 'João'};
  print(nomes2.elementAt(0));
  // print(nomes2.elementAt(2));

  for (int i = 0; i < nomes.length; i++) {
    print(nomes.elementAt(i));
  }
  for (final nome in nomes) {
    print(nome);
  }

  var A = {1, 2, 3, 4, 5, 6};
  var B = {1, 3, 7};
  print(A.union(B));
  print(A.intersection(B));
  print(A.difference(B));
  print(B.difference(A));
  print(A.difference(A));
}
