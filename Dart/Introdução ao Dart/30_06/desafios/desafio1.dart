import 'dart:io';

class Person {
  String name = "";
  int age = 0;
  String city = "";
  
  String get_name() {
    return name;
  }

  void set_name(String new_name) {
    name = new_name;
  }

  int get_age() {
    return age;
  }

  void set_age(int new_age) {
    age = new_age;
  }

  String get_city() {
    return city;
  }

  void set_city(String new_city) {
    city = new_city;
  }
}

Person get_person() {
  var p = Person();

  stdout.write("\n----------------ANOTHER PERSON----------------\n\nEnter your name: ");
  p.set_name(stdin.readLineSync()!);

  stdout.write("Enter your age: ");
  p.set_age(int.parse(stdin.readLineSync()!));

  stdout.write("Enter your city: ");
  p.set_city(stdin.readLineSync()!);

  return p;
}

void show_person(Person p) {
  // stdout.write("\n${p.get_name()} - ${p.get_age()} - ${p.get_city()}");
  print("\n${p.get_name()} - ${p.get_age()} - ${p.get_city()}");
}

void main() {
  stdout.write("Quantas pessoa deseja cadastrar?\n");

  var num = int.parse(stdin.readLineSync()!);
  var li = [];

  for (int i = 0; i < num; i++) {
    li.add(get_person());
  }

  stdout.write("\n-------------LISTA DE PESSOAS--------------\n");
  li.forEach((person) {
    show_person(person);
  });

}
