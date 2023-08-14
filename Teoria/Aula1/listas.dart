void main(List<String> arguments) {
  var nomes = ['João', 'Pedro', 'Maria'];
  print(nomes.runtimeType);
  print(nomes);
  print(nomes[0]);
  print(nomes[1]);
  nomes[0] = 'João Santos';
  print(nomes);
  //iterando sobre uma lista

  //for comum
  for (int i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  //for each
  for (var nome in nomes) {
    print(nome);
    nome = 'Ana';
  }

  var itensDiversos = ['Ana', true, 2, 2.5];
  print(itensDiversos.runtimeType);
  var itensDiversos2 = [2, 3.4, 5, 6.7];
  print(itensDiversos2.runtimeType);
  // print(nomes[-1]);
  // print(arguments);

  var nomess = ['Ana', 'João', 'Maria'];
  print(nomess.isEmpty);
  print(nomess.isNotEmpty);
  print(nomess.reversed);
  print(nomess.reversed.runtimeType);
  print(nomess.first);
  nomess.add('Cristina');
  print(nomess);
  nomess.insert(0, 'Ana Maria');
  // nomes.insert(7, 'Vagner');
  nomess.insert(nomess.length, 'Vagner');
  print(nomess.contains('Ana'));
  print(nomess.contains('Pedro'));
  print(nomess);

  var numeros = [];
  // print(numeros.first);
  print(numeros.firstOrNull);

  List<int> meusInts = [1, 2];
  List<bool> meusBools = [true];

  var listaDeListas = [nomes, meusInts, meusBools];
  print(listaDeListas.runtimeType);

  List lista = [];
  print(lista.runtimeType);
}
