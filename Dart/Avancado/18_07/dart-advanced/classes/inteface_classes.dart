void main() {
  //Animal animal = Animal(name: 'Totó', age: 10);
  Dog dog = Dog();
  Cat cat = Cat();

  cat.feed();
  dog.feed();
}

abstract class Animal {
  void feed();
  void run(double distance);
}

class Dog implements Animal {
  @override
  void feed() {
    print('Cachorro comendo...');
  }

  @override
  void run(double distance) {
    print('Cachorro correndo...');
  }
}

class Cat implements Animal {
  @override
  void feed() {
    print('Gato comendo...');
  }

  @override
  void run(double distance) {
    print('Gato correndo...');
  }
}