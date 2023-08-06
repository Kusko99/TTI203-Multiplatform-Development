import 'dart:io';

void main() {
  print("Digite o o livro que quer emprestado: ");
  String? livro = stdin.readLineSync();
  print("O livro está disponivel (S/N)?");
  String? disponibilidade = stdin.readLineSync();
  if (disponibilidade == "S") {
    print("O livro $livro pode ser emprestado!!! =)");
    print("O livro está com alta procura (S/N)?");
    String? procura = stdin.readLineSync();
    if (procura == "S") {
      print("O livro $livro só pode ser emprestado por 7 dias");
    } else {
      print("O livro $livro pode ser emprestado por 14 dias!!! =)");
    }
  } else {
    print("O livro $livro não poderá ser emprestado =(");
  }
}
