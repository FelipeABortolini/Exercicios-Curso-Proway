void main(){
  Empregado empregado = Empregado(name: 'Felipe', age: 20, salary: 1000);
}

abstract class Empresa {
  String name;
  int age;
  double salary;

  Empresa({
    required this.name,
    required this.age,
    required this.salary,
  });

}

class Empregado extends Empresa {
  Empregado({required super.name, required super.age, required super.salary});

  void work() {
    print('Estou trabalhando');
  }
}