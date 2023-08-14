import 'dart:io';

void main() {
  print("Digite o area em metros quadrados: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    double m2 = double.parse(input);
    double p2 = m2 * 10.7639;
    print(
        "${m2.toStringAsFixed(2)} metros quadrados são ${p2.toStringAsFixed(2)} pés quadrados");
  }
}
