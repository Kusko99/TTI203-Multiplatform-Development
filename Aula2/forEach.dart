void main() {
  const nomes = ['Pedro', 'Maria', 'João'];
//em vez de final, podemos usar var e o tipo
//explícito da varíavel (String nesse caso)
//mas não podemos usar const
  for (final nome in nomes) {
    print(nome);
  }
}
