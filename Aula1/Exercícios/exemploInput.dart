import 'dart:io';

void main() {
  print("Qual é a sua idade?");
  String? input = stdin.readLineSync();
  if (input != null) {
    int idade = int.parse(input);
    print("Sua idade é $input");
    print("Sua idade ano que vem será ${idade + 1}");
  }
}
