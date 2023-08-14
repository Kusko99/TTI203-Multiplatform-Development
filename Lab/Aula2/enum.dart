enum DiaSemana { SEGUNDA, TERCA, QUARTA }

void main() {
  DiaSemana dia = DiaSemana.SEGUNDA;
  print(dia.index);
  print(dia.name);
  print(dia.toString());
  print(dia.runtimeType);
  print(DiaSemana.values);
  int valor = 1;
  print(DiaSemana.values[valor].toString());
  print(DiaSemana.values[valor].name);
}
