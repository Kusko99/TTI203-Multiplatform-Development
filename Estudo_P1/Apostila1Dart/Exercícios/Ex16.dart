void main() {
  bool disponivel = true;
  bool maisProcurado = true;
  if (disponivel == true) {
    if (maisProcurado == true) {
      print('O livro pode ser emprestado por 7 dias');
    } else {
      print('O livro pode ser emprestado por 14 dias');
    }
  } else {
    print('O livro não está disponivel');
  }
}
