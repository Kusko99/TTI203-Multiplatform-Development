void main(List<String> arguments) {
  var portugues = {'Brasil', 'Portugal'};
  var europa = {'Alemanha', 'Portugal', 'Espanha'};
  print(portugues.union(europa));
  print(portugues.intersection(europa));
  print(portugues.difference(europa));
  print(europa
      .difference(portugues.intersection(europa))
      .union(portugues.difference(europa)));
}
