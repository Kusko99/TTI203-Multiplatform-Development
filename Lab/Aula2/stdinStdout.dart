import 'dart:io';

void main() {
  stdout.writeln("Digite seu nome: ");
  final nome = stdin.readLineSync();
  stdout.write(nome);

  int idade = int.parse(stdin.readLineSync()!);
}
