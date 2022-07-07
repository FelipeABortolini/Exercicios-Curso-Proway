void main() {
  List<String> frutas = ['Maçã', 'Banana'];

  frutas
    ..add('Melão')
    ..add('Morango')
    ..add('Uva');

  print(frutas);

  List<String> estudos = [];

  estudos
  ..add('Cascade Notation')
  ..add('Typedefs')
  ..add('Spread Operator')
  ..add('If/else')
  ..add('Do while')
  ..add('Break e continue')
  ..add('Asserts')
  ..add('Type Test')
  ..add('Arrow Function')
  ..add('List, Set e Map')
  ..add('For')
  ..add('Métodos de listas');

  estudos.removeAt(10);

  for(int index = 0; index < estudos.length; index++){
    print(estudos[index]);
  }

  //Faça uma lista de Maps, 
  //onde dentro de pelo menos 1 Map, tenha um Set de frutas como valor do Map.

  List<Map> lista = [
    {'nome': 'Felipe', 'idade': 20},
    {'setFrutas': {'banana', 'maça', 'melão', 'morango'}},
    {'Key1Map3': 'OutroMap', 'numero': 45},
  ];

  int num = 1;
  print(num is String);
}
