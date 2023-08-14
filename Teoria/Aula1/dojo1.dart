void main(List<String> entradas) {
  // List<String> entradas = ['1.3', '6.7', '8', '9.0', '2'];
  num soma = 0;
  for (var entrada in entradas) {
    num i = num.parse(entrada);
    soma += i;
  }
  print("A soma de $entradas é igual a: $soma");
}
