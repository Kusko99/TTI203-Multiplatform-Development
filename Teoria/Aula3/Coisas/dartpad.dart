void opcional({int? numero}) {
  print(numero);
}

void obrigatorio({int numero = 5}) {
  print(numero);
}

void comParametroSemNome(int semNome, {int? n1, int n2 = 5}) {
  print(semNome);
  print(n1);
  print(n2);
}

void main() {
  comParametroSemNome(15, n2: 10, n1: 34);
  obrigatorio();
  obrigatorio(numero: 18);
  obrigatorio(numero: 15);
  opcional();
  opcional(numero: 1);
}
