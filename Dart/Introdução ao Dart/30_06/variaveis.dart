void main() {
  List minhaList = ['Felipe', 40, true];
  List<int> minhaListInt = [40, 50, 60];
  print('minhaList: ${minhaList}');
  print('minhaListInt: ${minhaListInt}');

  Set meuSet = {'Ailton', 'João', 'Felipe', 52};
  Set<int> meuSetNum = {40, 50, 60};
  print('meuSet: ${meuSet}');
  print('meuSetNum: ${meuSetNum}');
  print('meuSetNum elem 1: ${meuSetNum.elementAt(0)}');

  Map meuMapSemTipagem = {
    'nome': 'Ailton',
    'idade': '998',
  };
  Map<String, int> meuMapTipagem = {
    'num': 40,
    'idade': 50,
  };
  // OUTRO MÉTODO DE FAZER MAP
  final result = <String, dynamic>{};
  result.addAll({'nome': 'Alisson'});
  result.addAll({'idade': '998'});

  print('meuMapSemTipagem ${meuMapSemTipagem}');
  print('meuMapTipagem ${meuMapTipagem}');
  print(result);
}
