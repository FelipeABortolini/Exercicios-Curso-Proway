void main() {
  Computer computer = Computer(brand: "Positivo", age: 10);
  Office powerpoint = Office();
  Steam softSteam = Steam();
  Controller controller = Controller();

  computer.openProgram(softSteam);
}

class Controller {}

class Computer {
  String brand;
  int age;

  Computer({
    required this.brand,
    required this.age,
  });

  void openProgram<T>(T program) {
    print(program.toString());
  }
}

class Office{}

class Steam {}