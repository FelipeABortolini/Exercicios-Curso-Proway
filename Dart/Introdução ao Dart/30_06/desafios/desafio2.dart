// Criar uma variável de cada tipo

void main() {
  print('----INT----');
  int numInt = 1;
  print(numInt);

  print('\n----DOUBLE----');
  double numDouble = 1.5;
  print(numDouble);
  print('round: ${numDouble.round()} - floor: ${numDouble.floor()} - ceil: ${numDouble.ceil()}');

  print('\n----STRING----');
  String name = 'Felipe';
  print(name);

  bool isValid = true;
  print(isValid);

  List<String> myList = ['Felipe', 'João', 'Lucas'];
  print(myList);
  myList.shuffle();
  print(myList);

  Set<int> mySet = {4, 5, 6, 7, 8};
  print(mySet);
  print(mySet.elementAt(1));

  Map<String, int> myMap = {'num1': 1, 'num2': 2, 'num3': 3};
  print(myMap);
  print(myMap['num2']);
}
