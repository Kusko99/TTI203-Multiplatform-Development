import 'dart:io';

void main() {
  print("Digite a temperatura em celsius: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    double celsius = double.parse(input);
    double farenheit = celsius * (9 / 5) + 32;
    print(
        "${celsius.toStringAsFixed(2)} graus celsius são ${farenheit.toStringAsFixed(2)} graus farenheit");
  }
}
