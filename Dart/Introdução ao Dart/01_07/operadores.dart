class Person{
  String nome = '';
  int idade= 0;
  bool maior = false;

  void gritar(){
    print('Gritando.');
  }
  void correr(){
    print('Correndo.');
  }
}

void main(){

  // double nota1 = 5;
  double nota2 = 2;

  // ------------ ARITMÉTICOS -------------

  // Soma
  // print('Soma: ${nota1 + nota2}');

  // Diferença
  // print('Diferença: ${nota1 - nota2}');

  // Multiplicador
  // print('Multiplicador: ${nota1 * nota2}');

  // Divisão
  // print('Divisão: ${nota1 / nota2}');

  // Divisão Inteira
  // print('Divisão Inteira: ${nota1 ~/ nota2}');

  // Resto da Divisão
  // print('Resto da Divisão: ${nota1 % nota2}');

  // Inverter
  // nota1 = -nota2;
  // print('Inverter: ${nota1}');

  // ------------ LÓGICOS -------------

  // Maior
  // print(nota1 > nota2);

  // // Maior ou igual
  // print(nota1 >= nota2);

  // // Menor
  // print(nota1 < nota2);

  // // Menor ou igual
  // print(nota1 <= nota2);

  // // Igual
  // print(nota1 == nota2);

  // // Diferente
  // print(nota1 != nota2);

  // ------------ ATRIBUIÇÃO -------------

  // dynamic nota1 = 5.0;
  // Atribuir valor
  // nota1 = 25;

  // // Atribuição com soma
  // nota1 += 30;

  // // Atribuição com subtração
  // nota1 -= 30;

  // // Atribuição com multiplicação
  // nota1 *= 30;

  // // Atribuição com divisão
  // nota1 /= 30;

  // // Atribuição com divisão
  // nota1 ~/= 30;

  // ------------ TYPE TEST -------------

  dynamic nota1 = 5;

  // is
  // print(nota1 is int);

  // is!
  // print(nota1 is! int);

  // as
  // nota1 = (nota1 ~/ 2) as int;
  // nota1 = (nota1 / 2) as double;
  // print(nota1 is int);

  // Método getter que pega o tipo da variável
  // print(nota1.runtimeType);

  // CASCATE NOTATION
  Person pessoa = Person();
  pessoa.nome = 'Felipe';
  pessoa.idade = 20;
  pessoa.maior = true;
  pessoa.gritar();
  pessoa.correr();

  pessoa
    ..nome = 'Felipe'
    ..idade = 20
    ..maior = true
    ..gritar()
    ..correr();

  // INCREMENTO
  // Soma 1 ao valor da variável depois de executar
  nota1++;

  // Soma 1 ao valor da variável antes de executar
  ++nota1;

  // Subtrai 1 ao valor da variável depois de executar
  nota2--;

  // Subtrai 1 ao valor da variável antes de executar
  --nota2;
}



