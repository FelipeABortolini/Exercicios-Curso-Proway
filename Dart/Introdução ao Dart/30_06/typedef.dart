typedef Operacao = Object Function(double nota1, double nota2);

void main() {

  double somar(double a, double b){
    return a + b;
  }

  String subtrair(double a, double b){
    return (a - b).toString();
  }

  Object calcular(double a, double b, Operacao operacao){
    return operacao(a, b);
  }

  print(calcular(22, 20, somar)); // > 42
  print(calcular(22, 20, subtrair)); // > 2

}

