import 'dart:io';
import 'dart:math';

void main() {
  var aposta = [];
  while (aposta.length != 6) {
    print('Digite um número: ');
    int n = int.parse(stdin.readLineSync()!);
    aposta.add(n);
  }
  Random random = Random();
  var jogo = [];
  while (jogo.length != 6) {
    jogo.add(random.nextInt(60) + 1);
  }
  jogo.sort();
  aposta.sort();
  print("O seu jogo: $aposta");
  print("O sorteio foi: $jogo");
  var acertos = [];
  for (int i = 0; i < 6; i++) {
    if (aposta[i] == jogo[i]) {
      acertos.add(jogo[i]);
    }
  }
  print("Seus acertos foram: $acertos");
}
