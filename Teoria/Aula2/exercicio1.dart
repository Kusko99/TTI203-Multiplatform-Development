import 'dart:io';

Map<String, String> exercicio1() {
  int op;
  Map<String, String> contatos = {'Ana': '1234'};
  do {
    print("1-C\n2-R\n3-U\n4-D\n5-Sair");
    op = int.parse(stdin.readLineSync()!);
    switch (op) {
      case 1:
        print("Digite o nome do novo contato: ");
        String nome = stdin.readLineSync()!;
        print("O número do novo contato: ");
        String numero = stdin.readLineSync()!;
        contatos[nome] = numero;
        print("O novo contato $nome é ${contatos[nome]}");
        break;
      case 2:
        print("Digite o nome de qual contato você gostaria de ver: ");
        String nome = stdin.readLineSync()!;
        if (!contatos.keys.contains(nome)) {
          print("Não é um contato");
        } else {
          print("O número de $nome é ${contatos[nome]}");
        }
        break;
      case 3:
        print("Digite o nome de qual contato você gostaria de atualizar: ");
        String nome = stdin.readLineSync()!;
        if (!contatos.keys.contains(nome)) {
          print("Não é um contato");
        } else {
          print("Digite o novo número");
          String valor = stdin.readLineSync()!;
          contatos[nome] = valor;
          print("O contato atualizado $nome é ${contatos[nome]}");
        }
        break;
      case 4:
        print("Digite o nome do contato que gostaria de deletar: ");
        String nome = stdin.readLineSync()!;
        contatos.remove(nome);
        break;
      case 5:
        print("Obrigado por utilizar nosso serviços =)");
        break;
      default:
        print("Opção inválida");
    }
  } while (op != 5);

  return contatos;
}

void main() {
  var contatos = exercicio1();
  print("Lista final de contatos");
  print(contatos);
}
