enum DiaSemana { SEGUNDA, TERCA, QUARTA, QUINTA, SEXTA, SABADO, DOMINGO }

void main() {
  //exibindo a lista inteira
  print(DiaSemana.values);
  DiaSemana dia = DiaSemana.SEGUNDA;
  //exibindo o nome desse valor
  print(dia.name);
  switch (dia) {
    case DiaSemana.SEGUNDA:
      print("Nããããããããooooooooooooo!!!!!!");
    case DiaSemana.TERCA:
      print(":(");
    case DiaSemana.QUARTA:
      print(":|");
    case DiaSemana.QUINTA:
      print(":)");
    case DiaSemana.SEXTA:
      print("Eeeeeeeeeeeeeeeeeeeee!!!!!!");
    case DiaSemana.SABADO:
      print("=DDDDDD");
    case DiaSemana.DOMINGO:
      print(" A mimir zzzzzzzzzzzzzzz");
  }
}
