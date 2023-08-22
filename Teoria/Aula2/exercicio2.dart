import 'dart:io';

void main(List<String> arguments) {
//lista de mapas
//cada item na lista é um mapa com chave String e valor dynamic
  var filmes = <Map<String, dynamic>>[];
  int op;
  do {
    print("1-C\n2-R\n3-U\n4-D\n5-Sair");
    op = int.parse(stdin.readLineSync()!);
    switch (op) {
      case 1:
        print("Digite o nome do filme que gostaria de adiconar? ");
        String titulo = stdin.readLineSync()!;
        print("Digite o gênero do filme: ");
        String genero = stdin.readLineSync()!;
        filmes.add({'título': titulo, 'genero': genero, 'notas': Null});
      case 2:
        print("Qual filme deseja visualizar?");
        String titulo = stdin.readLineSync()!;
        for (var filme in filmes) {
          if (filme['titulo'] == titulo) {
            print("O filme ${filme['titulo']}");
            print("É do genero ${filme['genero']}");
            print("Gostaria de ver as avaliações? (Y/N)");
            var resposta = stdin.readLineSync()!;
            if (resposta == "Y") {
              for (var nota in filme['notas']) {
                print(
                    "O avaliador ${nota['Avaliador']} deu a nota ${nota['Nota']}");
              }
              break;
            }
          }
        }
      case 3:
        print("Qual filme gostaria de atualizar?");
        var filme = stdin.readLineSync()!;
        for (var filme in filmes) {
          if (filme['titulo'] == filme) {
            print("Gostaria de alterar o titulo do filme? (Y/N)");
            var resposta = stdin.readLineSync()!;
            if (resposta == "Y") {
              print("Qual o novo nome do filme?");
              var nome = stdin.readLineSync()!;
              filme['título'] == nome;
            }
            print("Gostaria de alterar o genero do filme? (Y/N)");
            resposta = stdin.readLineSync()!;
            if (resposta == 'Y') {
              print("Qual o novo genero? ");
              var genero = stdin.readLineSync()!;
              filme[genero] = stdin.readLineSync();
            }
            print("Gostaria de adicionar uma avalição? (Y/N)");
            resposta = stdin.readLineSync()!;
            if (resposta == 'Y') {
              print("Qual o seu nome? ");
              var nome = stdin.readLineSync();
              var notas = filme['notas'];
              print("Qual a sua nota? ");
              var nota = stdin.readLineSync();
              notas.add({"Avaliador": nome, "Nota": nota});
            }
          }
        }
      case 4:
        print("Qual filme gostaria de atualizar?");
        var filme = stdin.readLineSync()!;
        for (var filme in filmes) {
          if (filme['titulo'] == filme) {
            filmes.remove(filme);
            print("filme removido com sucesso!!");
          }
        }
      case 5:
        print("Adeus!!!");
    }
  } while (op != 5);

  print("Titulo?");
  String? titulo = stdin.readLineSync();
  print("Gênero?");
  String? genero = stdin.readLineSync();
  Map<String, dynamic> notas = {"Avaliador": "Bossini", "Nota": 5};
  filmes.add({'titulo': titulo, 'genero': genero, 'notas': notas});
  print(filmes);
}
