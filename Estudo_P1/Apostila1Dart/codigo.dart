void main() {
  print("EU SOU O GOKU!!!");
  //sou um comentário de uma linha

/**
 * Sou um comentário de múltiplas linhas
 * 
 */

  String nome = "João"; //aspas duplas
  String sobrenome = 'Silva'; //aspas simples
  String endereco = '''
  Rua B,
  número 1234, Vila J'''; //aspas simples triplas
  bool deMaior = false;
  int idade = 17;
  num peso = 80.5;
  double altura = 1.82;
  //String raw
  String comoPularLinha = r"Pule uma linha com \n";
  //concatenção de Strings
  print("Me chamao" + nome);
  /** erro, concatenando string com int, não pode
   * mas podemos concatenar string com string, convertendo antes
   */
  print("Minha idade é" + idade.toString());
  //interpolação com $variavel
  print('Me chamo $nome');
  //interpolação com ${expressão}
  print('Meu sobrenome é ${sobrenome}');
  print('Ano que vem terei ${idade + 1} anos.');
  //com int e double
  print("Tenho $idade anos e $peso kg");

  int a = 2;
  double b = 3.5;
  String c = "abc";
  bool d = true;
  num e = 2;
  num f = 2.2;

  print(a.runtimeType); //int
  print(b.runtimeType); //double
  print(c.runtimeType); //String
  print(d.runtimeType); //bool
  print(e.runtimeType); //int
  print(f.runtimeType); //double

  print(2.runtimeType); //int
  print(true.runtimeType); //bool

  //conversão de tipos
  //de string para int
  String idadeTextual = "25";
  int idade_convertida = int.parse(idadeTextual);
  print(idade_convertida);

  //de string para double
  String pesoTextual = '85.2';
  double peso_convertido = double.parse(pesoTextual);
  print(peso_convertido);

  //de string para num
  String alturaTextual = '1.8';
  num altura_convertida = num.parse(alturaTextual);
  print(altura_convertida);

  String logradouro = "Rua B";
  int numero = 325;
  //não podemos concatenar string com int
  //mas podemos converter para String antes
  print(logradouro + ',número:' + numero.toString());

  //não é possível atribuir uma varivel int a uma varivel double e vice-versa
  //pois int e double herdam da classe num, mas não entre si
  //aqui tudo bem, 2 é literal inteiro
  //promoção implícita feita pelo computador
  double d1 = 2;
  double i1 = 2;
  //erro em tempo de compilação
  //não dá pois i1 é um inteiro e d2 é um double
  //a classe int não passa no teste é-um double
  // double d2 = i1;
  //podemos resolver assim
  double d2 = i1.toDouble();
  print(d2);

  //métodos para double
  double d3 = 1.2;
  //erro
  //int i2 = (int) d3;
  //mas podemos usar métodos;

  //arredonda
  int i3 = d3.round();
  print(i3);

  //teto
  i3 = d3.ceil();
  print(i3);

  //chão
  i3 = d3.floor();
  print(i3);

  int i4 = 2;
  //somente pré incremento, i4 vale 3
  ++i4;
  print(i4);

  //somente pós incremento, i4 vale 4
  i4++;
  print(i4);

  //duas operações no contexto
  //print e pré incremento
  //primeiro incrementa depois exibe
  //vai exibir 5
  print(++i4);

  //duas operações no contexto
  //print e pós incremento
  //primeiro exibe e depois incrementa
  //vai exibir 5
  print(i4++);

  //agora i4 vale 6
  print(i4);

  //operador ternário
  bool vaiChover = true;
  String levarGuardaChuva = vaiChover ? "SIM!" : "Não";
  print(levarGuardaChuva);
  idade = 17; //int
  String podeDirigir = idade >= 18 ? "SIM!" : "Não";
}
