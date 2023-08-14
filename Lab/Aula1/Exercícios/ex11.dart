import 'dart:io';

void main() {
  print("Digite o volume em litros: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    double litros = double.parse(input);
    double galoes_americanos = litros * 0.264172;
    print(
        "${litros.toStringAsFixed(2)} litros são ${galoes_americanos.toStringAsFixed(2)} galões americanos");
  }
}
