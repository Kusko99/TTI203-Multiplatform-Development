import 'dart:io';

String obterSigno(int dia, int mes) {
  switch (mes) {
    case 1:
      return (dia <= 20) ? 'Capricórnio' : 'Aquário';
    case 2:
      return (dia <= 19) ? 'Aquário' : 'Peixes';
    case 3:
      return (dia <= 20) ? 'Peixes' : 'Áries';
    case 4:
      return (dia <= 20) ? 'Áries' : 'Touro';
    case 5:
      return (dia <= 20) ? 'Touro' : 'Gêmeos';
    case 6:
      return (dia <= 20) ? 'Gêmeos' : 'Câncer';
    case 7:
      return (dia <= 22) ? 'Câncer' : 'Leão';
    case 8:
      return (dia <= 22) ? 'Leão' : 'Virgem';
    case 9:
      return (dia <= 22) ? 'Virgem' : 'Libra';
    case 10:
      return (dia <= 22) ? 'Libra' : 'Escorpião';
    case 11:
      return (dia <= 21) ? 'Escorpião' : 'Sagitário';
    case 12:
      return (dia <= 21) ? 'Sagitário' : 'Capricórnio';
    default:
      return "Mês inválido";
  }
}

void main() {
  int mes = 0, dia = 0;
  print("Digite o mês que vc nasceu (em número):");
  String? input = stdin.readLineSync();
  if (input != null) {
    mes = int.parse(input);
  }
  print("Digite o dia que vc nasceu:");
  input = stdin.readLineSync();
  if (input != null) {
    dia = int.parse(input);
  }
  print(obterSigno(dia, mes));
}
