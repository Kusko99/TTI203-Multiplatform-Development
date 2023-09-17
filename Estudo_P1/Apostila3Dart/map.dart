void main(List<String> arguments) {
  var pessoa = {
    'nome': 'Ana',
    'idade': 22,
    'altura': 1.8
  }; //_Map<String,Object>
  print(pessoa.runtimeType);

  var lembretes = {1: 'Comprar café', 2: 'ver um filme'};
  print(lembretes.runtimeType); //_Map<int,String>

  //isso não é um erro, mas só irá ficar o ultimo valor
  var pessoas = {'nome': 'Pedro', 'nome': 'Ana'};
  print(pessoas);

  //sem inferência de tipo
  Map<String, Object> pessoa2 = {'nome': 'Pedro', 'idade': 22};
  print(pessoa2);
//com type annotation
  var pessoa3 = <String, Object>{'nome': 'Ana', 'idade': 22};
  print(pessoa3);

  //para mostra os valores
  print(pessoa2['nome']);
  print(pessoa2['idade']);
  print(pessoa2['altura']); //null

  //Iterable de String
  var chaves = pessoa.keys;
  print(chaves.runtimeType);

  for (final propriedade in pessoa.keys) {
    print(pessoa[propriedade]);
  }

  //Iterable de dynamic
  var valores = pessoa.values;
  print(valores.runtimeType);
  for (final valor in valores) {
    print(valor);
  }

  //Iterable de
  var entries = pessoa.entries;
  //MappedIterable<String, MapEntry<String,dynamic>>
  print(entries.runtimeType);
  for (final entry in pessoa.entries) {
    print(entry);
    print(entry.key);
    print(entry.value);
  }
}
