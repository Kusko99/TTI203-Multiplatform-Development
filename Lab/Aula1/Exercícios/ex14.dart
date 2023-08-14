import 'dart:io';

void main() {
  print("Digite a velocidade em milhas por hora: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    double mph = double.parse(input);
    double ms = mph * 0.44704;
    print("${mph.toStringAsFixed(2)} mp/h são ${ms.toStringAsFixed(2)} m/s");
  }
}
