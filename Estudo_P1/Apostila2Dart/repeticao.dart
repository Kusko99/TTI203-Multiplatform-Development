void main() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  //em vez de final. podemos usar var e o
  //tipo explicito da variavel, neste caso String
  //mas não podemos usar const
  const nomes = ['Pedro', 'Maria', 'João'];
  for (final nome in nomes) {
    print(nome);
  }

  //loop infinito com for
  // for (;;) {
  //   print('loop infinito');
  // }

  //loop com while
  int contador = 0;
  while (contador <= 10) {
    print("Contador: $contador");
    contador++;
  }

  //loop com do/while
  int i = 0;
  do {
    print('O valor de i é $i');
    i++;
  } while (i < 10);
}
