import 'dart:io';

void media(filme) {
  var notas;
  if (filme['notas'] != null) {
    notas = filme['notas'];
    num media = 0;
    for (num nota in notas) {
      media += nota;
    }
    media = media / notas.length;
    print("Media = ${media.toStringAsFixed(1)}");
  } else {
    print("O filme ainda não possui avaliações");
  }
}

Map<String, Object> getFilme(nome, filmes) {
  for (var filme in filmes) {
    if (filme['titulo'] == nome) {
      return filme;
    }
  }
  Map<String, Object> filmeNotFound = {};
  return filmeNotFound;
}

void main() {
  //titulo,genero,notas: [5,4]
  var filme1 = {
    'titulo': 'Titanic',
    'genero': 'Romance',
    'notas': [2, 5]
  };
  var filme2 = {
    'titulo': 'ABC',
    'genero': 'Terror',
    'notas': [5, 5]
  };
  var filmes = [filme1, filme2];
  int op = 0;
  while (op != 5) {
    print("Create-1/Read-2/Update-3/Delete-4/Sair-5");
    op = int.parse(stdin.readLineSync()!);
    switch (op) {
      case 1:
        print("Digite o nome do novo filme: ");
        String nome = stdin.readLineSync()!;
        print("Digite qual o genero do filme: ");
        String genero = stdin.readLineSync()!;
        var filme = {'titulo': nome, 'genero': genero, 'notas': []};
        filmes.add(filme);
      case 2:
        print("Digite o nome do filme que gostaria de visualizar: ");
        String nome = stdin.readLineSync()!;
        var filme = getFilme(nome, filmes);
        if (filme == {}) {
          print("O filme não foi encontrado");
        } else {
          print("O ${filme['titulo']} é do genero ${filme['genero']}");
          print("Gostaria de visuaizar a média das notas? (Y/N)");
          String option = stdin.readLineSync()!;
          if (option == "Y") {
            media(filme);
          }
        }
      case 3:
        print("Digite o nome do filme que gostaria de autualizar: ");
        String nome = stdin.readLineSync()!;
        var filme = getFilme(nome, filmes);
        if (filme == {}) {
          print("O filme não foi encontrado");
        } else {
          print("Gostaria de digitar um novo nome para o filme? (Y/N)");
          String option = stdin.readLineSync()!;
          if (option == "Y") {
            print("Digite o novo nome para o filme");
            String novoNome = stdin.readLineSync()!;
            filme['titulo'] = novoNome;
          }
          print("Gostaria de digitar um novo genero para o filme? (Y/N)");
          option = stdin.readLineSync()!;
          if (option == "Y") {
            print("Digite o novo genero do filme: ");
            String novoGenero = stdin.readLineSync()!;
            filme['genero'] = novoGenero;
          }
          print("Gostaria de adicionar uma avaliação? (Y/N)");
          option = stdin.readLineSync()!;
          if (option == 'Y') {
            var notas = filme['notas'] as List<int>;
            print("Digite sua avaliação: ");
            int nota = int.parse(stdin.readLineSync()!);
            notas.add(nota);
          }
        }
        int indice = filmes.indexWhere((filme) => filme['titulo'] == nome);
        filmes[indice] = filme;
    }
  }
  print("Sua lista final de filmes");
  for (var filme in filmes) {
    print(filme.toString());
  }
  //usando um for each, exibir titulo e média de notas de cada filme no formato titulo: media
  // for (var filme in filmes) {
  //   print("O filme ${filme['titulo']} tem média de avalição: ");
  //   var notas;
  //   if (filme['notas'] != null) {
  //     notas = filme['notas'];
  //     num media = 0;
  //     for (num nota in notas) {
  //       media += nota;
  //     }
  //     media = media / notas.length;
  //     print("Media = ${media.toStringAsFixed(1)}");
  //   } else {
  //     print("O filme ainda não possui avaliações");
  //   }
  // }
  //remoção: usar a função removeWhere de List
  //atualização : usar indexWhere
}
