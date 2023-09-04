import 'dart:convert';

void main() {
  var pessoaJson = '{"nome": "Ana", "idade" : 20}';

  var pessoa = jsonDecode(pessoaJson);

  print(pessoa);

  print(pessoa.runtimeType);

  print(pessoa['nome']);
  print(pessoa['idade']);

  var concesionariaJson = ''' {
    "cnpj": "123456789/0001",
    "filiais": [
    {
    "nome": "Filial 1",
    "endereco": {
    "logradouro": "Rua A",
    "numero": 100,
    "bairro": "Vila A"
    },
    "veiculos": [
    {
    "modelo": "Gol",
    "marca": "VW",
    "placa": "ABC-1234",
    "preço" : 11000
    },
    {
    "modelo": "Celta",
    "marca": "Chevrolet",
    "placa": "DEF-5544",
    "preço" : 15000
    }
    ]
    },
    {
    "nome": "Filial 2",
    "endereco": {
    "logradouro": "Rua B",
    "numero": 100,
    "bairro": "Vila B"
    },
    "veiculos": [
    {
    "modelo": "Corsa",
    "marca": "Chevrolet",
    "placa": "ERF-1122",
    "preço" : 7000
    },
    {
    "modelo": "Fusca",
    "marca": "VW",
    "placa": "DEF-1111",
    "preço" : 4000
    }
    ]
    }
    ]
    }
''';

  var concessionaria = jsonDecode(concesionariaJson);
  // print(concessionaria);
  var filiais = concessionaria['filiais'];
  // print(filiais);
  // print(filiais[0]);
  var filial1 = filiais[0];
  var filial2 = filiais[1];
  // print(filial1);
  // print(filial2);
  var veiculos_filia1 = filial1['veiculos'];
  var veiculos_filia2 = filial2['veiculos'];
  print(veiculos_filia1);
  print(veiculos_filia2);

  num media_filia1 = 0;
  num media_filia2 = 0;
  var count = 0;

  for (var veiculo in veiculos_filia1) {
    media_filia1 += veiculo['preço'];
    count++;
  }
  media_filia1 = media_filia1 / count;
  print(media_filia1);
  count = 0;
  for (var veiculo in veiculos_filia2) {
    media_filia2 += veiculo['preço'];
    count++;
  }
  media_filia2 = media_filia2 / count;
  print(media_filia2);

  num media = media_filia2 + media_filia1 / 2;
  print(media);
}
