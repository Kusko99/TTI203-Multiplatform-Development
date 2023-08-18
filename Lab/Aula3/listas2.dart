void main() {
  //lista com final
  //lista com final é executado em tempo de execução
  final nomes = ['Ana', 'Pedro'];
  //isso não vale
  //nomes = ['Eduardo'];
  //isso vale
  nomes[2] = 'Daniel';
  //Ao usar const ele te que ser conhecido na declaração e tempo de compilação YEET
  const nomes2 = ['Ana', 'Pedro'];
  nomes2[0] = 'Ana Maria';
  nomes.add('Cristina');
  //sound null safety
  var nomes3 = ['Ana', 'Pedro']; //List <String>
  // nomes3[0] = null;
  // nomes3.add(null);
  // nomes3 = null;
  var nomes4 = []; //List <String>
  // nomes4[0] = null;
  // nomes4.add(null);
  // nomes4 = null;
  print(nomes4.runtimeType); //List<dynamic>
  // List<String> nomes5 = null;
  List<String?> nomes6 = [null, 'Ana'];
  nomes6.add(null);
  List<String>? nomes7;
  // List<int> ints;
  // print(ints);
  List<List<int?>?>? meusInts;
}
