void main(List<String> args) {
  num soma = 0;
  for (var item in args) {
    num n = num.parse(item);
    soma += n;
  }
  print(soma);
}
