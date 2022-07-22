void main() {
  Computer.metodoEstatico();
  Computer computer = Computer('Positivo');
  computer.setBrand = 'Apple';
  computer.metodoMaisComplexo(['Ailton']);
  computer.metodoComArgumentosNomeados('Felipe');

  print(computer.getBrand);
}

class Computer {
  String _brand;

  void metodoComArgumentosNomeados(String value, {String? name}) {
    print('ola');
  }

  // MÉTODOS NORMAL
  List<Map<String, dynamic>> metodoMaisComplexo(List<String> names) {
    List<Map<String, dynamic>> myList = [
      {'name': 'Ailton', 'age': 20},
      {'name': 'Strawti', 'age': 3},
    ];
    return myList;
  }

  // Método Estático
  static void metodoEstatico() {
    print('É chamado sem instanciar a classe');
  }

  //Os três principais métodos especiais

  // Método Construtor
  Computer(this._brand);

  // Método Getter
  String get getBrand {
    return _brand;
  }

  // Método Setter
  set setBrand(String value) {
    _brand = value;
  }

  
}
