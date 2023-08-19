import 'dart:io';
import 'dart:math';

List<int> Entradas() {
  List<int> jogada = [];
  while (jogada.length < 6) {
    print("Digite a um número para sua jogada: ");
    String? input = stdin.readLineSync()!;
    int n = int.parse(input);
    if (!jogada.contains(n)) {
      if (n <= 60 && n > 0) {
        jogada.add(n);
      } else {
        print("O número deve ser maior que zero e menor ou igual a 60");
      }
    } else {
      print("O número já foi jogado, não é permito números reptidos");
    }
  }
  return jogada;
}

List<int> jogoMegaSena() {
  List<int> jogo = [];
  while (jogo.length < 6) {
    jogo.add(Random().nextInt(60) + 1);
  }
  return jogo;
}

List<int> acertos(List<int> jogada, List<int> jogo) {
  List<int> acertos = [];
  for (int palpite in jogada) {
    if (jogo.contains(palpite)) {
      acertos.add(palpite);
    }
  }
  return acertos;
}

void main() {
  List<int> jogada = Entradas();
  List<int> jogo = jogoMegaSena();
  jogada.sort();
  jogo.sort();
  print("O a sua jogada foi $jogada, o jogo da Mega-Sena foi $jogo");
  List<int> acertou = acertos(jogada, jogo);
  print("Seus acertos foram $acertou");
}
