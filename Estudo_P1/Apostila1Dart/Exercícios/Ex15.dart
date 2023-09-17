void main() {
  int hora = 17;
  switch (hora) {
    case ((>= 8 && < 14) || (> 16 && <= 20)):
      print('Restaurante aberto');
    case (>= 14 && <= 16):
      print('Horário de almoço');
    default:
      print('Restaurante fechado');
  }
}
