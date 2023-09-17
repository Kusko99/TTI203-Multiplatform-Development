import 'dart:ffi';

void main() {
  //variaveis sem declaradas sem valor
  /**
   * Todas irão dar erro de compilador se não permitirem valores nulos
   * Lembrar que em dart existe o null safety
   */
  int? inteiro;
  print("Run Time Type -> int? ${inteiro.runtimeType}"); // null
  double? duble;
  print("Run Time Type -> duble? ${duble.runtimeType}"); // null
  Float? flutuante;
  print("Run Time Type -> float? ${flutuante.runtimeType}"); //null
  String? strang;
  print("Run Time Type -> string? ${strang.runtimeType}"); //null
  bool? booleano;
  print("Run Time Type -> bool? ${booleano.runtimeType}"); //null
  num? numerico;
  print("Run Time Type -> num? ${numerico.runtimeType}"); //null

  //variveis com valor declaro
  /** Como para os tipos int, double, Float, String e Bool
   * o run time type é obvio não irei demonstrar
   */

  num num_teste = 1;
  print("Run Time Type -> num com inteiro ${num_teste.runtimeType}"); //int
  num_teste = 2.0;
  print("Run Time Type -> num com double.0 ${num_teste.runtimeType}"); //double
  num_teste = 3.4;
  print("Run Time Type -> num com double.n ${num_teste.runtimeType}"); //double
  String string_teste = "";
  print("Run Time Type -> String = vazia ${string_teste.runtimeType}"); //String

  //uma variavel do tipo dynamic
  dynamic dinamico; //não precisa de ?, dynamic aceita null
  print(dinamico.runtimeType); //null
  dinamico = 2;
  print(dinamico.runtimeType); //int
  dinamico = 'abc';
  print(dinamico.runtimeType); //String

  //usando inferência de tipo var
  var variavel; //não precisa de ?, var aceita null
  print(variavel.runtimeType); //null
  variavel = 3.4;
  print(variavel.runtimeType); //double
  variavel = "XPTR";
  print(variavel.runtimeType); //String
  variavel = false;
  print(variavel.runtimeType); //bool

  //final e const
  //final pode ser declarada e não ter valor atribuido
  //valor conhecido em tempo de execução
  //const ao ser declarada precisa ter o seu valor atribuido
  //valor conhecido em tempo de compilação
  final fim;
  fim = "acabou";
  print(fim.runtimeType); //String
  // const constante;
  // constante = 12345;
  const constante = 12345;
  print(constante.runtimeType); //int
  // fim = "começou"; -> uma vez declarada não é possivel alterar
  // constante = 6789; -> uma vez declarada não é possivel alterar

  //listas
  var lista1;
  print(lista1.runtimeType); //Null
  lista1 = [];
  print(lista1.runtimeType); //List<dynamic>
  lista1 = [1, 2, 3];
  print(lista1.runtimeType); //List<int>
  lista1 += [4];
  print(lista1.runtimeType); //List<int>
  var lista2 = [1, true, "Queijo", 5.6];
  print(lista2.runtimeType); //List<Object>
  print(lista2[1].runtimeType); //bool

  //tuplas
  var tupla1 = (1, 2, 3);
  print(tupla1.runtimeType); //(int,int,int)
  var tupla2 = ('Daniel', 27, true);
  print(tupla2.runtimeType); //(String,int,bool)
  var tupla3 = ();
  print(tupla3.runtimeType); //()

  //conjuntos/sets
  var conjunto1 = {1, 2, 3, 4};
  print(conjunto1.runtimeType); //_Set<int>
  var conjunto2 = {"Lucas", 14, false};
  print(conjunto2.runtimeType); //_Set<Object>
  var conjunto3 = {};
  print(conjunto3.runtimeType); //_Map<dynamic,dynamic>
  var conjunto4 = <String>{}; //_Set<String>
  print(conjunto4.runtimeType);

  //map
  var mapa1 = {};
  print(mapa1.runtimeType); //_Map<dynamic, dynamic>
  var mapa2 = {
    "alcolatra": "Daniel",
    "jesus": "Eduardo",
    "soneca": "Raul",
    "cientistaMaluco": "Lucas"
  };
  print(mapa2.runtimeType); //_Map<String, String>
  var mapa3 = {"item1": "Kusko", "item2": 34, "item3": true};
  print(mapa3.runtimeType); //_Map<String, Object>
}
