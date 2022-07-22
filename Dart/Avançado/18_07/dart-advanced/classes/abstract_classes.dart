void main() {
  //Animal animal = Animal(name: 'Totó', age: 10);
  Dog dog = Dog(name: 'mimi', age: 7);
  Cat cat = Cat(name: 'pps', age: 5);
  cat.feed();
  dog.feed();
}

abstract class Animal {
  String name;
  int age;

  Animal({
    required this.name,
    required this.age,
  });

  void feed() {
    print('Animal se alimentando');
  }
}

class Dog extends Animal {
  Dog({required super.name, required super.age});

  void run() {
    print('Cachorro correndo...');
  }
}

class Cat extends Animal {
  Cat({required super.name, required super.age});

  void run() {
    print('Gato correndo...');
  }
}