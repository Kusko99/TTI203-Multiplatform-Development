void main() {
  Map<String, Object> pessoa = {'nome': 'Ana', 'idade': 18};
  //se for dynamic ao inves de object será possivél acessar tudo que existe na classe ana
  // dynamic nome = "Ana";
  // nome.falar();
  // nome = 2;

  // Object nome1 = "Ana";
  // nome1.falar();
  // nome1 = 2;

  var pessoa1 = <String, Object>{"nome": "ana", "idade": 22};

  var pessoa2 = {"nome": "bossini", "idade": 40};

  print(pessoa["nome"]);
  print(pessoa1["nome"]);
  print(pessoa2["nome"]);
  print(pessoa["altura"]); //se não exister a chave o Dart apenas retornará NULL

  var nome = pessoa['nome'] as String;
  nome.toUpperCase(); //Ao converter para String, você consegue acessar o metodos da Strings

  //metodo keys
  var keys = pessoa.keys;
  print(keys);
  print(keys.runtimeType);

  for (final key in keys) {
    print(key);
    print(pessoa[key]);
  }

  //metodo values
  var valores = pessoa.values;
  for (final valor in valores) {
    print(valor);
  }

  //metodo entries
  var entries = pessoa.entries;
  for (final entry in entries) {
    print(entry);
    print(entry.key);
    print(entry.value);
  }

  //mapas são coleções para chave/valor
  // var pessoa = {"nome": "Ana", "altura": 1.8};
  // print(pessoa.runtimeType);
  var lembretes = {1: 'comprar café', 2: 'pegar o gabriel'};
  print(lembretes);
  var pessoas = {
    "nome": "Ana",
    "nome": "Pedro"
  }; //o valor que prevalece é aquele que aparece depois
  print(pessoas);
}
