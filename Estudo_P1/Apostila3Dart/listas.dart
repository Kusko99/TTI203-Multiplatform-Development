void main(List<String> arguments) {
  print(arguments);
  var nomes = ['João', 'Pedro', 'Maria'];
  print(nomes);
  print(nomes.toString());
  print(nomes.runtimeType);
  print(nomes[0]);
  print(nomes[1]);
  // //RangeError
  // print(nomes[-1]);
  // //RangeError
  // print(nomes[3]);
  nomes += ["Thomas"];
  print(nomes);
  nomes[2] = 'Edward';
  print(nomes);
  nomes[0] = 'Toby';
  nomes[1] = 'James';

  //for comum
  for (int i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }
  //for each
  for (final nome in nomes) {
    print(nome);
  }

  //erro, a lista é de strings
  // nomes[0] = 2;

  var itensDiversos = ['Ana', true, 2, 2.5];
  print(itensDiversos);
  //List<Object>
  print(itensDiversos);
  //agora pode
  itensDiversos[0] = false;
  print(itensDiversos);

  //Operações Básicas/ Metodos diversos
  //responde se a lista está vazia
  print(nomes.isEmpty);
  //responde se a lista não está vazia
  print(nomes.isNotEmpty);
  //devolve um iterable<String> contendo os elementos em ordem reversa
  //não altera a lista atual
  print(nomes.reversed);
  //devolve o primeiro ou null, causa erro
  print(nomes.first);
  //devolve o primeiro ou null, sem causar erro
  print(nomes.firstOrNull);
  //lista vazia
  //Bad state: no element
  //print([].frist)
  //aqui tudo bem, devolve null
  print([].firstOrNull);
  //o mesmo vale para o ultimo elemento
  print(nomes.last);
  print(nomes.lastOrNull);

  //adciona na última posição
  nomes.add("Henry");
  //insere na posição 0
  nomes.insert(0, "Oliver");
  //aqui a lista tem tamanho 6
  print(nomes);
  //podemos adicionar na posição 6
  //obtendo o mesmo funcionamento de add
  nomes.insert(6, 'Gordon');
  print(nomes);
  //aqui a lista tem 7 elementos
  //não podemos adicionar em qualque posição a partir de 8
  // nomes.insert(8, 'Duck');
  // print(nomes);

  //o método contains responde se a lista contém um determinado elemento
  print(nomes.contains('Gordon')); //true
  print(nomes.contains('Donald')); //false
}
