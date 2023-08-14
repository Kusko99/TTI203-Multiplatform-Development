
List < List<String?>?>?obterStrings(){
    return null;
}

class Animal{
    void falar(){

    }
}

class Gato extends Animal{
    void falar(){
        print("miaauu");
    }
}

class Cachorro extends Animal{
    void falar(){
        print("auau");
    }
}

void main(){
    var animais = [Gato(),Cachorro()];
    for(Animal a in animais){
        a.falar();
    }
    var strings = obterStrings();
    print(strings.runtimeType);
    dynamic a = 2;
    print(a.runtimeType);
    a = "abc";
    print(a.runtimeType);
    //inferência de tipo(compilador)
    var nome = "João";
    print(nome.runtimeType);
    num n1 = 2;
    print(n1.runtimeType);
    n1 = 2.5;
    print(n1.runtimeType);
    //n1 = "abc";
    var b;
    print(b);
    print(b.runtimeType);
    //sound null safety
    //int c;
    // var c = null;
    // print(c+2);
    //const é mais restrito que o final, não pode ser criado como null e não pode conhecer seu valor em tempo de execução
    final nome2 = "João";
    print(nome2.runtimeType);
    final fim;
    fim = "abc";
    const nome3 = "Ana";
    final String nome4 = "Eduardo";
    const int idade = 18;
    // var String s = "Lucas";
    // num int j = 5;
    const idade1 = 19;
    if(idade1 >= 18){
        print("de maior");
    }
    if(idade > 18){
        print("Pode dirigir");//dentro do if
        print("Até logo");//fora do if
    }

    print("parabéns");

    // else //dangling else
    // print("Ainda não");
}