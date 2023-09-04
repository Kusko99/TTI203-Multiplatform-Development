import 'dart:convert';

void main() {
  var pessoaJson = '{"nome": "Ana", "idade" : 20}';
  var decodedPessoa = jsonDecode(pessoaJson);
  print(decodedPessoa);
  // var pessoa = PessoaModel(decodedPessoa['nome'], decodedPessoa['idade']);
  var pessoa = PessoaModel.fromJson(decodedPessoa);
  print(pessoa.nome);
  print(pessoa.idade);
}

class PessoaModel {
  late String nome;
  late int idade;
  //construtor
  PessoaModel(this.nome, this.idade);

  //construtor nomeado
  PessoaModel.fromJson(decodedJson) {
    nome = decodedJson['nome'];
    idade = decodedJson['idade'];
  }
}
